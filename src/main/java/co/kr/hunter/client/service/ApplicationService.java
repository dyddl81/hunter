package co.kr.hunter.client.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import co.kr.hunter.client.domain.ApplicationVo;
import co.kr.hunter.client.mapper.ApplicationMapper;
import co.kr.hunter.common.util.FileUtils;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ApplicationService {

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Autowired
	private ApplicationMapper applicationMapper;
	
	/**
	 * 신청서 리스트 
	 * @return
	 */	
	public List<ApplicationVo> selectApplicationList(ApplicationVo applicationVo) {
		
		applicationVo.setFirstIndex((applicationVo.getPageIndex() - 1) * applicationVo.getRecordCountPerPage());
		applicationVo.setLastIndex(applicationVo.getRecordCountPerPage());	
		
		List<ApplicationVo> list = applicationMapper.selectApplicationList(applicationVo);
		
		return list;
	}
	
    /**
     * 신청서 등록
     * @return
     */
	public int selectApplicationCnt(ApplicationVo applicationVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		applicationVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = applicationMapper.selectApplicationCnt(applicationVo);
		
		return result;
		
	}
	
    /**
     * 신청서 정보
     * @return
     */	
	public List<ApplicationVo> selectApplication(ApplicationVo applicationVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		applicationVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return applicationMapper.selectApplication(applicationVo);
	}
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	public ApplicationVo selectApplicationInfo(ApplicationVo applicationVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		applicationVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return applicationMapper.selectApplicationInfo(applicationVo);
	}
	

    /**
     * 신청서 등록
     * @return
     */
	public int insertApplication(ApplicationVo applicationVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		applicationVo.setUserId(auth.getName());
		applicationVo.setCreatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = applicationMapper.insertApplication(applicationVo);
		
		return result;
		
		
	}
	
    /**
     * 첨부파일 등록
     * @return
     */
	public int insertApplicationFile(ApplicationVo applicationVo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		int result = 0;
		
		FileVo fileVo = new FileVo();
		fileVo.setCodeId(applicationVo.getApplicationId());
		fileVo.setCode(applicationVo.getCode());
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(fileVo, mpRequest); 
		
		int size = list.size();
		log.info("size : "+ size);
		for(int i=0; i<size; i++){ 
			result = applicationMapper.insertApplicationFile(list.get(i)); 
		}
		
		return result;
	}
	
	/**
	 * 첨부파일 삭제
	 * @return
	 */
	public int deleteApplicationFile(FileVo fileVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		fileVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		FileVo file = applicationMapper.selectApplicationFile(fileVo);
		
		Path filePath = Paths.get(file.getFilePath());
		Files.deleteIfExists(filePath);
		
		int result = applicationMapper.deleteApplicationFile(fileVo);
		
		return result;
	}
	
    /**
     * 신청서 수정
     * @return
     */	
	public int updateApplication(ApplicationVo applicationVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		applicationVo.setUserId(auth.getName());
		applicationVo.setUpdatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = applicationMapper.updateApplication(applicationVo);
		
		return result;
	}
	

    /**
     * 신청서 삭제
     * @return
     */	
	public int deleteApplication(ApplicationVo applicationVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		applicationVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = applicationMapper.deleteApplication(applicationVo);
		
		FileVo fileVo = new FileVo();
		
		String applicationId = applicationVo.getApplicationId();
		fileVo.setCodeId(applicationId);
		fileVo.setUserId(auth.getName());
		
		List<FileVo> list = applicationMapper.selectApplicationFileList(fileVo);
		
		if(list.size() > 0) {
			for(FileVo file : list) {
				Path filePath = Paths.get(file.getFilePath());
				Files.deleteIfExists(filePath);
			}
		
			fileVo = new FileVo();
			fileVo.setCodeId(applicationId);
			fileVo.setUserId(auth.getName());
			applicationMapper.deleteApplicationFile(fileVo);
		}
		
		return result;
	}
	
    /**
     * 첨부파일 정보
     * @return
     */	
	public List<FileVo> selectApplicationFileList(FileVo fileVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		fileVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return applicationMapper.selectApplicationFileList(fileVo);
	}
	
}
