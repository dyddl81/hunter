package co.kr.hunter.auth.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;

import co.kr.hunter.auth.domain.AuthVO;
import co.kr.hunter.auth.mapper.AuthMapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class MemberAuthService implements AuthenticationProvider {
	
	@Autowired
	private AuthMapper authMapper;
	
	@Autowired 
	private PasswordEncoder passwordEncoder;
	/**
	 * 로그인 사용자 인증 서비스 구현 메서드
	 */
	@Override
	public Authentication authenticate(Authentication authentication) 
			throws AuthenticationException {
		// 
		String user_id = (String)authentication.getPrincipal();		
		String user_pw = (String)authentication.getCredentials();
		log.info("MemberAuthService: id:{} , pwd:{}", user_id , user_pw);
		
		boolean passwordCheck = false;
		AuthVO authVo = null;
		
		// 정보가 없으면 나간다.
		if ( user_id == null || user_id == "" ) {
			throw new BadCredentialsException("로그인 아이디가 없습니다." + user_id );
		}
		if ( user_pw == null || user_pw == ""  ) {
			throw new BadCredentialsException("로그인 비밀번호가 없습니다." + user_pw );
		}
		
		try {
			authVo = authMapper.selectMemberUser(user_id);
			passwordCheck = passwordEncoder.matches(user_pw, authVo.getPassword());
			
			log.info("passwordCheck : "+passwordCheck);
			
		} catch (Exception e) {
			log.info(e.toString());
		}

		/* 실질적인 인증 */
		if(authVo == null ) {
			throw new BadCredentialsException("username");
		} else if(!passwordCheck) {
			throw new BadCredentialsException("password");
		} else {
			UsernamePasswordAuthenticationToken returnToken = new UsernamePasswordAuthenticationToken(user_id, null, authVo.getAuthorities());
			authVo.setPassword(null);
			returnToken.setDetails(authVo);

			return returnToken;
		}
		
		
	}

	@Override
	public boolean supports(Class<?> authentication) {
		
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}