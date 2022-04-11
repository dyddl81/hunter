package co.kr.hunter.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.admin.domain.AdminHistoryVo;
import co.kr.hunter.admin.mapper.AdminHistoryMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminHistoryService {

	@Autowired
	private AdminHistoryMapper adminHistoryMapper;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	public List<AdminHistoryVo> selectAdminApplicationList(AdminHistoryVo adminHistoryVo) {
		
		adminHistoryVo.setFirstIndex((adminHistoryVo.getPageIndex() - 1) * adminHistoryVo.getRecordCountPerPage());
		adminHistoryVo.setLastIndex(adminHistoryVo.getRecordCountPerPage());	
		
		List<AdminHistoryVo> list = adminHistoryMapper.selectAdminApplicationList(adminHistoryVo);
		
		return list;
	}
	
    /**
     * 관리자 신청서 정보
     * @return
     */	
	public AdminHistoryVo selectAdminApplication(AdminHistoryVo adminHistoryVo) {
		return adminHistoryMapper.selectAdminApplication(adminHistoryVo);
	}
	

	/**
	 * 관리자 신청서 첨부파일 
	 * @return
	 */	
	public List<FileVo> selectAdminApplicationFileList(FileVo fileVo) {
		return adminHistoryMapper.selectAdminApplicationFileList(fileVo);
	}
	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	public int deleteAdminApplication(List<String> ids) throws Exception {
		
		int result = adminHistoryMapper.deleteAdminApplication(ids);
		result = adminHistoryMapper.deleteAdminApplicationFile(ids);
		
		return result;
	}
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */	
	public List<AdminHistoryVo> selectAdminApplicationExcel(AdminHistoryVo adminHistoryVo) {
		return adminHistoryMapper.selectAdminApplicationExcel(adminHistoryVo);
	}
	  
}
