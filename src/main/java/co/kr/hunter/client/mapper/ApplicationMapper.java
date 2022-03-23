package co.kr.hunter.client.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import co.kr.hunter.client.domain.ApplicationVo;
import co.kr.hunter.common.vo.FileVo;

@Repository
public interface ApplicationMapper {

	/**
	 * 신청서 리스트 
	 * @return
	 */	
	List<ApplicationVo> selectApplicationList(ApplicationVo applicationVo);

    /**
     * 신청서 등록
     * @return
     */
	int selectApplicationCnt(ApplicationVo applicationVo);
	
    /**
     * 신청서 신청내역
     * @return
     */	
	List<ApplicationVo> selectApplication(ApplicationVo applicationVo);
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	ApplicationVo selectApplicationInfo(ApplicationVo applicationVo);
	
    /**
     * 신청서 등록
     * @return
     */
	int insertApplication(ApplicationVo applicationVo);
	
	
	/**
	 * 신청서 수정
	 * @return
	 */
	int updateApplication(ApplicationVo applicationVo);	

    /**
     * 신청서 삭제
     * @return
     */	
	int deleteApplication(ApplicationVo applicationVo) throws Exception;
	
	/**
	 * 첨부파일 등록
	 * @return
	 */	
	int insertApplicationFile(Map<String, Object> map) throws Exception;
	
	/**
	 * 첨부파일 삭제
	 * @return
	 */	
	int deleteApplicationFile(FileVo fileVo) throws Exception;
	
	/**
	 * 첨부파일 리스트 
	 * @return
	 */	
	List<FileVo> selectApplicationFileList(FileVo fileVo);	
	
	/**
	 * 첨부파일 정보 
	 * @return
	 */	
	FileVo selectApplicationFile(FileVo fileVo);	
}
