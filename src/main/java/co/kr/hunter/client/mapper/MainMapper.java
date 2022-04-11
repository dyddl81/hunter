package co.kr.hunter.client.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import co.kr.hunter.client.domain.MainVo;
import co.kr.hunter.common.vo.FileVo;

@Repository
public interface MainMapper {

	/**
	 * 신청서 리스트 
	 * @return
	 */	
	List<MainVo> selectApplicationList(MainVo mainVo);

    /**
     * 신청서 등록
     * @return
     */
	int selectApplicationCnt(MainVo mainVo);
	
    /**
     * 신청서 신청내역
     * @return
     */	
	List<MainVo> selectApplication(MainVo mainVo);
	
	/**
	 * 신청서 정보
	 * @return
	 */	
	MainVo selectApplicationInfo(MainVo mainVo);
	
    /**
     * 신청서 등록
     * @return
     */
	int insertApplication(MainVo mainVo);
	
	
	/**
	 * 신청서 수정
	 * @return
	 */
	int updateApplication(MainVo mainVo);	

    /**
     * 신청서 삭제
     * @return
     */	
	int deleteApplication(MainVo mainVo) throws Exception;
	
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
