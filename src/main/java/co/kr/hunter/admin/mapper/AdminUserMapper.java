package co.kr.hunter.admin.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.hunter.admin.domain.AdminUserVo;
import co.kr.hunter.common.vo.FileVo;

@Repository
public interface AdminUserMapper {

	/**
	 * 관리자 신청서 리스트 
	 * @return
	 */	
	List<AdminUserVo> selectAdminApplicationList(AdminUserVo adminUserVo);

    /**
     * 관리자 신청서 정보
     * @return
     */	
	AdminUserVo selectAdminApplication(AdminUserVo adminUserVo);
	
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
	List<AdminUserVo> selectAdminApplicationExcel(AdminUserVo adminUserVo);
}
