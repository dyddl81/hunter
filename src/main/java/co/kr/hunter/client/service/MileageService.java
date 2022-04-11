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

import co.kr.hunter.client.domain.MileageVo;
import co.kr.hunter.client.mapper.MileageMapper;
import co.kr.hunter.common.util.FileUtils;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MileageService {

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Autowired
	private MileageMapper mileageMapper;
	
	/**
	 * 신청서 리스트 
	 * @return
	 */	
	public List<MileageVo> selectApplicationList(MileageVo mileageVo) {
		
		mileageVo.setFirstIndex((mileageVo.getPageIndex() - 1) * mileageVo.getRecordCountPerPage());
		mileageVo.setLastIndex(mileageVo.getRecordCountPerPage());	
		
		List<MileageVo> list = mileageMapper.selectApplicationList(mileageVo);
		
		return list;
	}
	
    /**
     * 신청서 등록
     * @return
     */
	public int selectApplicationCnt(MileageVo mileageVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mileageVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = mileageMapper.selectApplicationCnt(mileageVo);
		
		return result;
		
	}
	
    /**
     * 신청서 정보
     * @return
     */	
	public List<MileageVo> selectApplication(MileageVo mileageVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mileageVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return mileageMapper.selectApplication(mileageVo);
	}
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	public MileageVo selectApplicationInfo(MileageVo mileageVo) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mileageVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		return mileageMapper.selectApplicationInfo(mileageVo);
	}
	

    /**
     * 신청서 등록
     * @return
     */
	public int insertApplication(MileageVo mileageVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mileageVo.setUserId(auth.getName());
		mileageVo.setCreatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = mileageMapper.insertApplication(mileageVo);
		
		return result;
		
		
	}
	
    /**
     * 첨부파일 등록
     * @return
     */
	public int insertApplicationFile(MileageVo mileageVo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		int result = 0;
		
		FileVo fileVo = new FileVo();
		fileVo.setCodeId(mileageVo.getApplicationId());
		fileVo.setCode(mileageVo.getCode());
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(fileVo, mpRequest); 
		
		int size = list.size();
		log.info("size : "+ size);
		for(int i=0; i<size; i++){ 
			result = mileageMapper.insertApplicationFile(list.get(i)); 
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
		
		FileVo file = mileageMapper.selectApplicationFile(fileVo);
		
		Path filePath = Paths.get(file.getFilePath());
		Files.deleteIfExists(filePath);
		
		int result = mileageMapper.deleteApplicationFile(fileVo);
		
		return result;
	}
	
    /**
     * 신청서 수정
     * @return
     */	
	public int updateApplication(MileageVo mileageVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mileageVo.setUserId(auth.getName());
		mileageVo.setUpdatedId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = mileageMapper.updateApplication(mileageVo);
		
		return result;
	}
	

    /**
     * 신청서 삭제
     * @return
     */	
	public int deleteApplication(MileageVo mileageVo) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		mileageVo.setUserId(auth.getName());
		log.info("auth.getName() : " + auth.getName());
		
		int result = mileageMapper.deleteApplication(mileageVo);
		
		FileVo fileVo = new FileVo();
		
		String applicationId = mileageVo.getApplicationId();
		fileVo.setCodeId(applicationId);
		fileVo.setUserId(auth.getName());
		
		List<FileVo> list = mileageMapper.selectApplicationFileList(fileVo);
		
		if(list.size() > 0) {
			for(FileVo file : list) {
				Path filePath = Paths.get(file.getFilePath());
				Files.deleteIfExists(filePath);
			}
		
			fileVo = new FileVo();
			fileVo.setCodeId(applicationId);
			fileVo.setUserId(auth.getName());
			mileageMapper.deleteApplicationFile(fileVo);
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
		
		return mileageMapper.selectApplicationFileList(fileVo);
	}
	
}
