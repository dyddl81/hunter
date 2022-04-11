package co.kr.hunter.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.admin.domain.AdminSettingVo;
import co.kr.hunter.admin.mapper.AdminSettingMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminSettingService {

	@Autowired
	private AdminSettingMapper adminSettingMapper;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	public List<AdminSettingVo> selectAdminApplicationList(AdminSettingVo adminSettingVo) {
		
		adminSettingVo.setFirstIndex((adminSettingVo.getPageIndex() - 1) * adminSettingVo.getRecordCountPerPage());
		adminSettingVo.setLastIndex(adminSettingVo.getRecordCountPerPage());	
		
		List<AdminSettingVo> list = adminSettingMapper.selectAdminApplicationList(adminSettingVo);
		
		return list;
	}
	
    /**
     * 관리자 신청서 정보
     * @return
     */	
	public AdminSettingVo selectAdminApplication(AdminSettingVo adminSettingVo) {
		return adminSettingMapper.selectAdminApplication(adminSettingVo);
	}
	

	/**
	 * 관리자 신청서 첨부파일 
	 * @return
	 */	
	public List<FileVo> selectAdminApplicationFileList(FileVo fileVo) {
		return adminSettingMapper.selectAdminApplicationFileList(fileVo);
	}
	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	public int deleteAdminApplication(List<String> ids) throws Exception {
		
		int result = adminSettingMapper.deleteAdminApplication(ids);
		result = adminSettingMapper.deleteAdminApplicationFile(ids);
		
		return result;
	}
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */	
	public List<AdminSettingVo> selectAdminApplicationExcel(AdminSettingVo adminSettingVo) {
		return adminSettingMapper.selectAdminApplicationExcel(adminSettingVo);
	}
	  
}
