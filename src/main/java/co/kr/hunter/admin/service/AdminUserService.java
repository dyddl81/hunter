package co.kr.hunter.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.admin.domain.AdminUserVo;
import co.kr.hunter.admin.mapper.AdminUserMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminUserService {

	@Autowired
	private AdminUserMapper adminUserMapper;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	public List<AdminUserVo> selectAdminApplicationList(AdminUserVo adminUserVo) {
		
		adminUserVo.setFirstIndex((adminUserVo.getPageIndex() - 1) * adminUserVo.getRecordCountPerPage());
		adminUserVo.setLastIndex(adminUserVo.getRecordCountPerPage());	
		
		List<AdminUserVo> list = adminUserMapper.selectAdminApplicationList(adminUserVo);
		
		return list;
	}
	
    /**
     * 관리자 신청서 정보
     * @return
     */	
	public AdminUserVo selectAdminApplication(AdminUserVo adminUserVo) {
		return adminUserMapper.selectAdminApplication(adminUserVo);
	}
	

	/**
	 * 관리자 신청서 첨부파일 
	 * @return
	 */	
	public List<FileVo> selectAdminApplicationFileList(FileVo fileVo) {
		return adminUserMapper.selectAdminApplicationFileList(fileVo);
	}
	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	public int deleteAdminApplication(List<String> ids) throws Exception {
		
		int result = adminUserMapper.deleteAdminApplication(ids);
		result = adminUserMapper.deleteAdminApplicationFile(ids);
		
		return result;
	}
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */	
	public List<AdminUserVo> selectAdminApplicationExcel(AdminUserVo adminUserVo) {
		return adminUserMapper.selectAdminApplicationExcel(adminUserVo);
	}
	  
}
