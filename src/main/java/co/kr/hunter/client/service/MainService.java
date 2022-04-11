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

import co.kr.hunter.client.domain.MainVo;
import co.kr.hunter.client.mapper.MainMapper;
import co.kr.hunter.common.util.FileUtils;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MainService {

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Autowired
	private MainMapper mainMapper;
	
	/**
	 * 신청서 리스트 
	 * @return
	 */	
	public List<MainVo> selectApplicationList(MainVo mainVo) {
		
		mainVo.setFirstIndex((mainVo.getPageIndex() - 1) * mainVo.getRecordCountPerPage());
		mainVo.setLastIndex(mainVo.getRecordCountPerPage());	
		
		List<MainVo> list = mainMapper.selectApplicationList(mainVo);
		
		return list;
	}
	
    /**
     * 신청서 등록
     * @return
     */
	public int selectApplicationCnt(MainVo mainVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mainVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = mainMapper.selectApplicationCnt(mainVo);
		
		return result;
		
	}
	
    /**
     * 신청서 정보
     * @return
     */	
	public List<MainVo> selectApplication(MainVo mainVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mainVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return mainMapper.selectApplication(mainVo);
	}
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	public MainVo selectApplicationInfo(MainVo mainVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mainVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return mainMapper.selectApplicationInfo(mainVo);
	}
	

    /**
     * 신청서 등록
     * @return
     */
	public int insertApplication(MainVo mainVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mainVo.setUserId(auth.getName());
		mainVo.setCreatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = mainMapper.insertApplication(mainVo);
		
		return result;
		
		
	}
	
    /**
     * 첨부파일 등록
     * @return
     */
	public int insertApplicationFile(MainVo mainVo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		int result = 0;
		
		FileVo fileVo = new FileVo();
		fileVo.setCodeId(mainVo.getApplicationId());
		fileVo.setCode(mainVo.getCode());
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(fileVo, mpRequest); 
		
		int size = list.size();
		log.info("size : "+ size);
		for(int i=0; i<size; i++){ 
			result = mainMapper.insertApplicationFile(list.get(i)); 
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
		
		FileVo file = mainMapper.selectApplicationFile(fileVo);
		
		Path filePath = Paths.get(file.getFilePath());
		Files.deleteIfExists(filePath);
		
		int result = mainMapper.deleteApplicationFile(fileVo);
		
		return result;
	}
	
    /**
     * 신청서 수정
     * @return
     */	
	public int updateApplication(MainVo mainVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mainVo.setUserId(auth.getName());
		mainVo.setUpdatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = mainMapper.updateApplication(mainVo);
		
		return result;
	}
	

    /**
     * 신청서 삭제
     * @return
     */	
	public int deleteApplication(MainVo mainVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mainVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = mainMapper.deleteApplication(mainVo);
		
		FileVo fileVo = new FileVo();
		
		String applicationId = mainVo.getApplicationId();
		fileVo.setCodeId(applicationId);
		fileVo.setUserId(auth.getName());
		
		List<FileVo> list = mainMapper.selectApplicationFileList(fileVo);
		
		if(list.size() > 0) {
			for(FileVo file : list) {
				Path filePath = Paths.get(file.getFilePath());
				Files.deleteIfExists(filePath);
			}
		
			fileVo = new FileVo();
			fileVo.setCodeId(applicationId);
			fileVo.setUserId(auth.getName());
			mainMapper.deleteApplicationFile(fileVo);
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
		
		return mainMapper.selectApplicationFileList(fileVo);
	}
	
}
