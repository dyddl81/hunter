package co.kr.hunter.auth.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;

import co.kr.hunter.auth.domain.AdminAuthVo;
import co.kr.hunter.auth.mapper.AdminAuthMapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class AdminAuthService implements AuthenticationProvider {
	
	@Autowired
	private AdminAuthMapper adminAuthMapper;
	
	@Autowired 
	private PasswordEncoder passwordEncoder;
	
	/**
	 * 로그인 사용자 인증 서비스 구현 메서드
	 * 성공하면 default-target-url 에 설정된 화면으로 이동한다.
	 */
	@Override
	public Authentication authenticate(Authentication authentication) 
			throws AuthenticationException {
		
		log.info("AuthenticationProvider > authenticate 호출");
		
		// 로그인 화면에서 입력한 정보를 가져옵니다.
		String admin_id = (String)authentication.getPrincipal();		
		String admin_pw = (String)authentication.getCredentials();
		log.info("넘어온 정보: id:{} , pwd:{}, pwdE:{}", admin_id , admin_pw, passwordEncoder.encode(admin_pw));
		
		boolean passwordCheck = false;
		AdminAuthVo adminAuthVo = null;
		
		// 정보가 없으면 나간다.
		if ( admin_id == null || admin_id == "" ) {
			throw new BadCredentialsException("로그인 아이디가 없습니다." );
		}
		
		if ( admin_pw == null || admin_pw == ""  ) {
			throw new BadCredentialsException("로그인 암호가 없습니다." );
		}
		
		// 
		// dao를 통해서 로그인 사용자의 정보를 확인한다.
		// 안 맞는 경우에는 exception 을 던진다.
		// 디비사용은 안하니까 .우선은 간단하게 테스트 로직으로 한다,
		
		
		try {
			adminAuthVo = adminAuthMapper.selectAdminUser(admin_id);
			passwordCheck = passwordEncoder.matches(admin_pw, adminAuthVo.getPassword());
			
			log.info("passwordCheck : "+passwordCheck);
			log.info("getAuthorities : "+adminAuthVo.getAuthorities());
			
		} catch (Exception e) {
			log.info(e.toString());
		}

		/* 실질적인 인증 */
		if(adminAuthVo == null ) {
			throw new BadCredentialsException("username");
		} else if(!passwordCheck) {
			throw new BadCredentialsException("password");
		} else {
			UsernamePasswordAuthenticationToken returnToken = new UsernamePasswordAuthenticationToken(admin_id, null, adminAuthVo.getAuthorities());
			adminAuthVo.setPassword(null);
			returnToken.setDetails(adminAuthVo);

			return returnToken;
		}
		
	}

	@Override
	public boolean supports(Class<?> authentication) {
		log.info("AuthenticationProvider > supports 호출");
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}