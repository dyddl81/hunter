package co.kr.hunter.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.admin.domain.AdminApplicationVo;
import co.kr.hunter.admin.mapper.AdminApplicationMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminApplicationService {

	@Autowired
	private AdminApplicationMapper adminApplicationMapper;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	public List<AdminApplicationVo> selectAdminApplicationList(AdminApplicationVo adminApplicationVo) {
		
		adminApplicationVo.setFirstIndex((adminApplicationVo.getPageIndex() - 1) * adminApplicationVo.getRecordCountPerPage());
		adminApplicationVo.setLastIndex(adminApplicationVo.getRecordCountPerPage());	
		
		List<AdminApplicationVo> list = adminApplicationMapper.selectAdminApplicationList(adminApplicationVo);
		
		return list;
	}
	
    /**
     * 관리자 신청서 정보
     * @return
     */	
	public AdminApplicationVo selectAdminApplication(AdminApplicationVo adminApplicationVo) {
		return adminApplicationMapper.selectAdminApplication(adminApplicationVo);
	}
	

	/**
	 * 관리자 신청서 첨부파일 
	 * @return
	 */	
	public List<FileVo> selectAdminApplicationFileList(FileVo fileVo) {
		return adminApplicationMapper.selectAdminApplicationFileList(fileVo);
	}
	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	public int deleteAdminApplication(List<String> ids) throws Exception {
		
		int result = adminApplicationMapper.deleteAdminApplication(ids);
		result = adminApplicationMapper.deleteAdminApplicationFile(ids);
		
		return result;
	}
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */	
	public List<AdminApplicationVo> selectAdminApplicationExcel(AdminApplicationVo adminApplicationVo) {
		return adminApplicationMapper.selectAdminApplicationExcel(adminApplicationVo);
	}
	  
}
