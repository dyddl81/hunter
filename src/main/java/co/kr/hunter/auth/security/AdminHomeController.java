package co.kr.hunter.auth.security;


import java.util.Collection;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class AdminHomeController {
	
	// **************************************************
	// admin
	// **************************************************
	@RequestMapping(value="/admin/login")
	public String adminLogin(HttpServletRequest request, ModelMap model) {
		log.info("어드민 로그인 화면 접근");
		
		// 현재 로그인 화면은 permitAll 이므로 그냥 접근이 된다.
		
		// 세션이 있는 상태이면 메인으로 보내고 아니면 로그인으로 ..
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		log.info("auth 정보:{}" , auth.toString());
		log.info("auth getAuthorities 정보:{}" , auth.getAuthorities());
		log.info("auth getPrincipal 정보:{}" , auth.getPrincipal());
		
		
		// 생성된 인증정보에 맞게 화면 이동
		
		Collection<? extends GrantedAuthority>  auths = auth.getAuthorities(); 
		if ( auths.stream().filter(o -> o.getAuthority().equals("ROLE_001")).findAny().isPresent() )
		{
			log.info("메인화면으로 이동");
			return "redirect:/admin/main";
		} else {
			log.info("로그인화면으로 이동");
			String sysMsg = request.getParameter("status");
			String message = "";
			if("fail".equals(sysMsg)) {
				message = "아이디 비밀번호를 확인해주세요!";
			}
			model.put("sysMsg", message);			
			return "/admin/login";
		}
		
	}
	@RequestMapping(value="/admin/logout")
	public String adminLogout( HttpSession session ) {
		log.info("어드민 로그아웃 화면 접근");
		
		session.invalidate(); 
		
		return "redirect:/admin/login";
	}
	/**
	 * @설명 :시큐리티에서 인증 성공후 보내는 페이지
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/admin/loginSuccess")
	public String adminLoginSuccess( HttpSession session ) {
		
		log.info("인증후  보내는 default-target-url 진입");
		
		// 세션 확인용
		log.info("인증후  생성된 세션 확인");
		Enumeration<?> session_attributes = session.getAttributeNames();
		while(session_attributes.hasMoreElements()) {
	        String session_name  = session_attributes.nextElement().toString();
	        String session_value = session.getAttribute(session_name).toString();
	        log.info("세션키:{}",session_name);
	        log.info("세션값:{}",session_value);
		}
		
		// 인증된 정보
		log.info("SecurityContextHolder 에 등록된 정보 확인");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if ( auth != null) {
			
			log.info("Authentication getAuthorities:{}" , auth.getAuthorities().toString());
			log.info("Authentication getPrincipal:{}" , auth.getPrincipal());
			log.info("Authentication getName:{}" , auth.getName());
			log.info("Authentication getCredentials:{}" , auth.getCredentials());
			log.info("Authentication getDetails:{}" , auth.getDetails());
			log.info("Authentication isAuthenticated:{}" , auth.isAuthenticated());
			
		}
		
		return "redirect:/admin/main"; // 어드민 메인 화면으로 이동
	}
	
	@RequestMapping(value="/admin")
	public String admin( HttpSession session ) {
		log.info("어드민 메인");
		
		return "redirect:/admin/main";
	}
	
	/**
	 * @설명 :로그인 중복 확인
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/admin/loginDuplicate")
	public String adminLoginDuplicate( HttpSession session ) {
		log.info("/admin/loginDuplicate 호출");
		session.invalidate(); 
		
		return "redirect:/admin/login";
	}
	
	@RequestMapping(value="/admin/accessDenied")
	public String adminAccessDenied( HttpSession session ) {
		log.info("/admin/accessDenied 호출");
		session.invalidate(); 
		
		return "redirect:/admin/login";
	}
	
}
