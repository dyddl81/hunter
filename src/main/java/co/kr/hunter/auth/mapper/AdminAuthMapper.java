package co.kr.hunter.auth.mapper;

import org.springframework.stereotype.Repository;

import co.kr.hunter.auth.domain.AdminAuthVo;

@Repository
public interface AdminAuthMapper {

    /**
     * 관리자 인증
     * @return
     */	
    AdminAuthVo selectAdminUser(String adminId);
    
}
