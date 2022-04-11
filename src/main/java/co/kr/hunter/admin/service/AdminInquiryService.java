package co.kr.hunter.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.admin.domain.AdminInquiryVo;
import co.kr.hunter.admin.mapper.AdminInquiryMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminInquiryService {

	@Autowired
	private AdminInquiryMapper adminInquiryMapper;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	public List<AdminInquiryVo> selectAdminApplicationList(AdminInquiryVo adminInquiryVo) {
		
		adminInquiryVo.setFirstIndex((adminInquiryVo.getPageIndex() - 1) * adminInquiryVo.getRecordCountPerPage());
		adminInquiryVo.setLastIndex(adminInquiryVo.getRecordCountPerPage());	
		
		List<AdminInquiryVo> list = adminInquiryMapper.selectAdminApplicationList(adminInquiryVo);
		
		return list;
	}
	
    /**
     * 관리자 신청서 정보
     * @return
     */	
	public AdminInquiryVo selectAdminApplication(AdminInquiryVo adminInquiryVo) {
		return adminInquiryMapper.selectAdminApplication(adminInquiryVo);
	}
	

	/**
	 * 관리자 신청서 첨부파일 
	 * @return
	 */	
	public List<FileVo> selectAdminApplicationFileList(FileVo fileVo) {
		return adminInquiryMapper.selectAdminApplicationFileList(fileVo);
	}
	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	public int deleteAdminApplication(List<String> ids) throws Exception {
		
		int result = adminInquiryMapper.deleteAdminApplication(ids);
		result = adminInquiryMapper.deleteAdminApplicationFile(ids);
		
		return result;
	}
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */	
	public List<AdminInquiryVo> selectAdminApplicationExcel(AdminInquiryVo adminInquiryVo) {
		return adminInquiryMapper.selectAdminApplicationExcel(adminInquiryVo);
	}
	  
}
