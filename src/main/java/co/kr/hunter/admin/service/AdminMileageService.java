package co.kr.hunter.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.hunter.admin.domain.AdminMileageVo;
import co.kr.hunter.admin.mapper.AdminMileageMapper;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminMileageService {

	@Autowired
	private AdminMileageMapper adminMileageMapper;
	
	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	public List<AdminMileageVo> selectAdminApplicationList(AdminMileageVo adminMileageVo) {
		
		adminMileageVo.setFirstIndex((adminMileageVo.getPageIndex() - 1) * adminMileageVo.getRecordCountPerPage());
		adminMileageVo.setLastIndex(adminMileageVo.getRecordCountPerPage());	
		
		List<AdminMileageVo> list = adminMileageMapper.selectAdminApplicationList(adminMileageVo);
		
		return list;
	}
	
    /**
     * 관리자 신청서 정보
     * @return
     */	
	public AdminMileageVo selectAdminApplication(AdminMileageVo adminMileageVo) {
		return adminMileageMapper.selectAdminApplication(adminMileageVo);
	}
	

	/**
	 * 관리자 신청서 첨부파일 
	 * @return
	 */	
	public List<FileVo> selectAdminApplicationFileList(FileVo fileVo) {
		return adminMileageMapper.selectAdminApplicationFileList(fileVo);
	}
	
	
    /**
     * 관리자 신청서 삭제
     * @return
     */	
	public int deleteAdminApplication(List<String> ids) throws Exception {
		
		int result = adminMileageMapper.deleteAdminApplication(ids);
		result = adminMileageMapper.deleteAdminApplicationFile(ids);
		
		return result;
	}
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */	
	public List<AdminMileageVo> selectAdminApplicationExcel(AdminMileageVo adminMileageVo) {
		return adminMileageMapper.selectAdminApplicationExcel(adminMileageVo);
	}
	  
}
