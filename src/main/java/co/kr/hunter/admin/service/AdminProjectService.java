package co.kr.hunter.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.admin.domain.AdminProjectVo;
import co.kr.hunter.admin.mapper.AdminProjectMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminProjectService {

	@Autowired
	private AdminProjectMapper adminProjectMapper;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	public List<AdminProjectVo> selectAdminApplicationList(AdminProjectVo adminProjectVo) {
		
		adminProjectVo.setFirstIndex((adminProjectVo.getPageIndex() - 1) * adminProjectVo.getRecordCountPerPage());
		adminProjectVo.setLastIndex(adminProjectVo.getRecordCountPerPage());	
		
		List<AdminProjectVo> list = adminProjectMapper.selectAdminApplicationList(adminProjectVo);
		
		return list;
	}
	
    /**
     * 관리자 신청서 정보
     * @return
     */	
	public AdminProjectVo selectAdminApplication(AdminProjectVo adminProjectVo) {
		return adminProjectMapper.selectAdminApplication(adminProjectVo);
	}
	

	/**
	 * 관리자 신청서 첨부파일 
	 * @return
	 */	
	public List<FileVo> selectAdminApplicationFileList(FileVo fileVo) {
		return adminProjectMapper.selectAdminApplicationFileList(fileVo);
	}
	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	public int deleteAdminApplication(List<String> ids) throws Exception {
		
		int result = adminProjectMapper.deleteAdminApplication(ids);
		result = adminProjectMapper.deleteAdminApplicationFile(ids);
		
		return result;
	}
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */	
	public List<AdminProjectVo> selectAdminApplicationExcel(AdminProjectVo adminProjectVo) {
		return adminProjectMapper.selectAdminApplicationExcel(adminProjectVo);
	}
	  
}
