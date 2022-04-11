package co.kr.hunter.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.admin.domain.AdminMainVo;
import co.kr.hunter.admin.mapper.AdminMainMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminMainService {

	@Autowired
	private AdminMainMapper adminMainMapper;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	public List<AdminMainVo> selectAdminApplicationList(AdminMainVo adminMainVo) {
		
		adminMainVo.setFirstIndex((adminMainVo.getPageIndex() - 1) * adminMainVo.getRecordCountPerPage());
		adminMainVo.setLastIndex(adminMainVo.getRecordCountPerPage());	
		
		List<AdminMainVo> list = adminMainMapper.selectAdminApplicationList(adminMainVo);
		
		return list;
	}
	
    /**
     * 관리자 신청서 정보
     * @return
     */	
	public AdminMainVo selectAdminApplication(AdminMainVo adminMainVo) {
		return adminMainMapper.selectAdminApplication(adminMainVo);
	}
	

	/**
	 * 관리자 신청서 첨부파일 
	 * @return
	 */	
	public List<FileVo> selectAdminApplicationFileList(FileVo fileVo) {
		return adminMainMapper.selectAdminApplicationFileList(fileVo);
	}
	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	public int deleteAdminApplication(List<String> ids) throws Exception {
		
		int result = adminMainMapper.deleteAdminApplication(ids);
		result = adminMainMapper.deleteAdminApplicationFile(ids);
		
		return result;
	}
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */	
	public List<AdminMainVo> selectAdminApplicationExcel(AdminMainVo adminMainVo) {
		return adminMainMapper.selectAdminApplicationExcel(adminMainVo);
	}
	  
}
