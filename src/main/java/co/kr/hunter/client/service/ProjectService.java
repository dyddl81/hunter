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

import co.kr.hunter.client.domain.ProjectVo;
import co.kr.hunter.client.mapper.ProjectMapper;
import co.kr.hunter.common.util.FileUtils;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProjectService {

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Autowired
	private ProjectMapper projectMapper;
	
	/**
	 * 신청서 리스트 
	 * @return
	 */	
	public List<ProjectVo> selectApplicationList(ProjectVo projectVo) {
		
		projectVo.setFirstIndex((projectVo.getPageIndex() - 1) * projectVo.getRecordCountPerPage());
		projectVo.setLastIndex(projectVo.getRecordCountPerPage());	
		
		List<ProjectVo> list = projectMapper.selectApplicationList(projectVo);
		
		return list;
	}
	
    /**
     * 신청서 등록
     * @return
     */
	public int selectApplicationCnt(ProjectVo projectVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		projectVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = projectMapper.selectApplicationCnt(projectVo);
		
		return result;
		
	}
	
    /**
     * 신청서 정보
     * @return
     */	
	public List<ProjectVo> selectApplication(ProjectVo projectVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		projectVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return projectMapper.selectApplication(projectVo);
	}
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	public ProjectVo selectApplicationInfo(ProjectVo projectVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		projectVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return projectMapper.selectApplicationInfo(projectVo);
	}
	

    /**
     * 신청서 등록
     * @return
     */
	public int insertApplication(ProjectVo projectVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		projectVo.setUserId(auth.getName());
		projectVo.setCreatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = projectMapper.insertApplication(projectVo);
		
		return result;
		
		
	}
	
    /**
     * 첨부파일 등록
     * @return
     */
	public int insertApplicationFile(ProjectVo projectVo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		int result = 0;
		
		FileVo fileVo = new FileVo();
		fileVo.setCodeId(projectVo.getApplicationId());
		fileVo.setCode(projectVo.getCode());
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(fileVo, mpRequest); 
		
		int size = list.size();
		log.info("size : "+ size);
		for(int i=0; i<size; i++){ 
			result = projectMapper.insertApplicationFile(list.get(i)); 
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
		
		FileVo file = projectMapper.selectApplicationFile(fileVo);
		
		Path filePath = Paths.get(file.getFilePath());
		Files.deleteIfExists(filePath);
		
		int result = projectMapper.deleteApplicationFile(fileVo);
		
		return result;
	}
	
    /**
     * 신청서 수정
     * @return
     */	
	public int updateApplication(ProjectVo projectVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		projectVo.setUserId(auth.getName());
		projectVo.setUpdatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = projectMapper.updateApplication(projectVo);
		
		return result;
	}
	

    /**
     * 신청서 삭제
     * @return
     */	
	public int deleteApplication(ProjectVo projectVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		projectVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = projectMapper.deleteApplication(projectVo);
		
		FileVo fileVo = new FileVo();
		
		String applicationId = projectVo.getApplicationId();
		fileVo.setCodeId(applicationId);
		fileVo.setUserId(auth.getName());
		
		List<FileVo> list = projectMapper.selectApplicationFileList(fileVo);
		
		if(list.size() > 0) {
			for(FileVo file : list) {
				Path filePath = Paths.get(file.getFilePath());
				Files.deleteIfExists(filePath);
			}
		
			fileVo = new FileVo();
			fileVo.setCodeId(applicationId);
			fileVo.setUserId(auth.getName());
			projectMapper.deleteApplicationFile(fileVo);
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
		
		return projectMapper.selectApplicationFileList(fileVo);
	}
	
}
