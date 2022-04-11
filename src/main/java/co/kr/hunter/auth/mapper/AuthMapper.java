package co.kr.hunter.auth.mapper;

import org.springframework.stereotype.Repository;

import co.kr.hunter.auth.domain.AuthVo;

@Repository
public interface AuthMapper {

    /**
     * 사용자 인증
     * @return
     */	
    AuthVo selectMemberUser(String userId);
    
}
