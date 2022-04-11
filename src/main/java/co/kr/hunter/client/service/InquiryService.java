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

import co.kr.hunter.client.domain.InquiryVo;
import co.kr.hunter.client.mapper.InquiryMapper;
import co.kr.hunter.common.util.FileUtils;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class InquiryService {

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Autowired
	private InquiryMapper inquiryMapper;
	
	/**
	 * 신청서 리스트 
	 * @return
	 */	
	public List<InquiryVo> selectApplicationList(InquiryVo inquiryVo) {
		
		inquiryVo.setFirstIndex((inquiryVo.getPageIndex() - 1) * inquiryVo.getRecordCountPerPage());
		inquiryVo.setLastIndex(inquiryVo.getRecordCountPerPage());	
		
		List<InquiryVo> list = inquiryMapper.selectApplicationList(inquiryVo);
		
		return list;
	}
	
    /**
     * 신청서 등록
     * @return
     */
	public int selectApplicationCnt(InquiryVo inquiryVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		inquiryVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = inquiryMapper.selectApplicationCnt(inquiryVo);
		
		return result;
		
	}
	
    /**
     * 신청서 정보
     * @return
     */	
	public List<InquiryVo> selectApplication(InquiryVo inquiryVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		inquiryVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return inquiryMapper.selectApplication(inquiryVo);
	}
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	public InquiryVo selectApplicationInfo(InquiryVo inquiryVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		inquiryVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return inquiryMapper.selectApplicationInfo(inquiryVo);
	}
	

    /**
     * 신청서 등록
     * @return
     */
	public int insertApplication(InquiryVo inquiryVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		inquiryVo.setUserId(auth.getName());
		inquiryVo.setCreatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = inquiryMapper.insertApplication(inquiryVo);
		
		return result;
		
		
	}
	
    /**
     * 첨부파일 등록
     * @return
     */
	public int insertApplicationFile(InquiryVo inquiryVo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		int result = 0;
		
		FileVo fileVo = new FileVo();
		fileVo.setCodeId(inquiryVo.getApplicationId());
		fileVo.setCode(inquiryVo.getCode());
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(fileVo, mpRequest); 
		
		int size = list.size();
		log.info("size : "+ size);
		for(int i=0; i<size; i++){ 
			result = inquiryMapper.insertApplicationFile(list.get(i)); 
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
		
		FileVo file = inquiryMapper.selectApplicationFile(fileVo);
		
		Path filePath = Paths.get(file.getFilePath());
		Files.deleteIfExists(filePath);
		
		int result = inquiryMapper.deleteApplicationFile(fileVo);
		
		return result;
	}
	
    /**
     * 신청서 수정
     * @return
     */	
	public int updateApplication(InquiryVo inquiryVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		inquiryVo.setUserId(auth.getName());
		inquiryVo.setUpdatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = inquiryMapper.updateApplication(inquiryVo);
		
		return result;
	}
	

    /**
     * 신청서 삭제
     * @return
     */	
	public int deleteApplication(InquiryVo inquiryVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		inquiryVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = inquiryMapper.deleteApplication(inquiryVo);
		
		FileVo fileVo = new FileVo();
		
		String applicationId = inquiryVo.getApplicationId();
		fileVo.setCodeId(applicationId);
		fileVo.setUserId(auth.getName());
		
		List<FileVo> list = inquiryMapper.selectApplicationFileList(fileVo);
		
		if(list.size() > 0) {
			for(FileVo file : list) {
				Path filePath = Paths.get(file.getFilePath());
				Files.deleteIfExists(filePath);
			}
		
			fileVo = new FileVo();
			fileVo.setCodeId(applicationId);
			fileVo.setUserId(auth.getName());
			inquiryMapper.deleteApplicationFile(fileVo);
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
		
		return inquiryMapper.selectApplicationFileList(fileVo);
	}
	
}
