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

import co.kr.hunter.client.domain.UserVo;
import co.kr.hunter.client.mapper.UserMapper;
import co.kr.hunter.common.util.FileUtils;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Autowired
	private UserMapper userMapper;
	
	/**
	 * 신청서 리스트 
	 * @return
	 */	
	public List<UserVo> selectApplicationList(UserVo userVo) {
		
		userVo.setFirstIndex((userVo.getPageIndex() - 1) * userVo.getRecordCountPerPage());
		userVo.setLastIndex(userVo.getRecordCountPerPage());	
		
		List<UserVo> list = userMapper.selectApplicationList(userVo);
		
		return list;
	}
	
    /**
     * 신청서 등록
     * @return
     */
	public int selectApplicationCnt(UserVo userVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		userVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = userMapper.selectApplicationCnt(userVo);
		
		return result;
		
	}
	
    /**
     * 신청서 정보
     * @return
     */	
	public List<UserVo> selectApplication(UserVo userVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		userVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return userMapper.selectApplication(userVo);
	}
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	public UserVo selectApplicationInfo(UserVo userVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		userVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return userMapper.selectApplicationInfo(userVo);
	}
	

    /**
     * 신청서 등록
     * @return
     */
	public int insertApplication(UserVo userVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		userVo.setUserId(auth.getName());
		userVo.setCreatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = userMapper.insertApplication(userVo);
		
		return result;
		
		
	}
	
    /**
     * 첨부파일 등록
     * @return
     */
	public int insertApplicationFile(UserVo userVo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		int result = 0;
		
		FileVo fileVo = new FileVo();
		fileVo.setCodeId(userVo.getApplicationId());
		fileVo.setCode(userVo.getCode());
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(fileVo, mpRequest); 
		
		int size = list.size();
		log.info("size : "+ size);
		for(int i=0; i<size; i++){ 
			result = userMapper.insertApplicationFile(list.get(i)); 
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
		
		FileVo file = userMapper.selectApplicationFile(fileVo);
		
		Path filePath = Paths.get(file.getFilePath());
		Files.deleteIfExists(filePath);
		
		int result = userMapper.deleteApplicationFile(fileVo);
		
		return result;
	}
	
    /**
     * 신청서 수정
     * @return
     */	
	public int updateApplication(UserVo userVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		userVo.setUserId(auth.getName());
		userVo.setUpdatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = userMapper.updateApplication(userVo);
		
		return result;
	}
	

    /**
     * 신청서 삭제
     * @return
     */	
	public int deleteApplication(UserVo userVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		userVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = userMapper.deleteApplication(userVo);
		
		FileVo fileVo = new FileVo();
		
		String applicationId = userVo.getApplicationId();
		fileVo.setCodeId(applicationId);
		fileVo.setUserId(auth.getName());
		
		List<FileVo> list = userMapper.selectApplicationFileList(fileVo);
		
		if(list.size() > 0) {
			for(FileVo file : list) {
				Path filePath = Paths.get(file.getFilePath());
				Files.deleteIfExists(filePath);
			}
		
			fileVo = new FileVo();
			fileVo.setCodeId(applicationId);
			fileVo.setUserId(auth.getName());
			userMapper.deleteApplicationFile(fileVo);
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
		
		return userMapper.selectApplicationFileList(fileVo);
	}
	
}
