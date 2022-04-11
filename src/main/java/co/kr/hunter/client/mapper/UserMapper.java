package co.kr.hunter.client.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import co.kr.hunter.client.domain.UserVo;
import co.kr.hunter.common.vo.FileVo;

@Repository
public interface UserMapper {

	/**
	 * 신청서 리스트 
	 * @return
	 */	
	List<UserVo> selectApplicationList(UserVo userVo);

    /**
     * 신청서 등록
     * @return
     */
	int selectApplicationCnt(UserVo userVo);
	
    /**
     * 신청서 신청내역
     * @return
     */	
	List<UserVo> selectApplication(UserVo userVo);
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	UserVo selectApplicationInfo(UserVo userVo);
	
    /**
     * 신청서 등록
     * @return
     */
	int insertApplication(UserVo userVo);
	
	
	/**
	 * 신청서 수정
	 * @return
	 */
	int updateApplication(UserVo userVo);	

    /**
     * 신청서 삭제
     * @return
     */	
	int deleteApplication(UserVo userVo) throws Exception;
	
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
