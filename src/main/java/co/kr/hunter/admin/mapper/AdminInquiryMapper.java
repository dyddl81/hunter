package co.kr.hunter.admin.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.hunter.admin.domain.AdminInquiryVo;
import co.kr.hunter.common.vo.FileVo;

@Repository
public interface AdminInquiryMapper {

	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	List<AdminInquiryVo> selectAdminApplicationList(AdminInquiryVo adminInquiryVo);

    /**
     * 관리자 신청서 정보
     * @return
     */	
	AdminInquiryVo selectAdminApplication(AdminInquiryVo adminInquiryVo);
	
	/**
	 * 첨부파일 리스트 
	 * @return
	 */	
	List<FileVo> selectAdminApplicationFileList(FileVo fileVo);	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	int deleteAdminApplication(List<String> ids) throws Exception;
	
	/**
	 * 관리자 신청서 파일삭제
	 * @return
	 */	
	int deleteAdminApplicationFile(List<String> ids) throws Exception;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	List<AdminInquiryVo> selectAdminApplicationExcel(AdminInquiryVo adminInquiryVo);
}
