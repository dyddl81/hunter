package co.kr.hunter.auth.security;


import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
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
public class HomeController {
	
	// **************************************************
	// member
	// **************************************************
	@RequestMapping(value="/member/login")
	public String memberLogin(HttpServletRequest request, ModelMap model) {
		log.info("회원 로그인 화면 접근");
		
		String sysMsg = request.getParameter("status");
		String message = "";
		if("fail".equals(sysMsg)) {
			message = "아이디 비밀번호를 확인해주세요!";
		}
		model.put("sysMsg", message);
		return "/member/login";
	}
	
	@RequestMapping(value="/member/logout")
	public String memberLogout( HttpSession session ) {
		log.info("회원 로그아웃 화면 접근");
		
		session.invalidate(); 
		
		return "redirect:/member/login";
	}
	/**
	 * @설명 :시큐리티에서 인증 성공후 보내는 페이지
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/member/loginSuccess")
	public String memberLoginSuccess( HttpSession session ) {
		log.info("member 인증후  보내는 default-target-url 진입");
		
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
		
		// 인증시 추가한 사용자의 정보를 가져와 봅니다
//		AdminAuthInfoVO vo = (AdminAuthInfoVO)SecurityContextHolder
//				.getContext().getAuthentication().getDetails();
//		log.info("getDetails에 포함된 정보:{}",vo.getAdminEmail());
		
		
		// 일반적인 세션관리를 위해 별도로 등록해 봅니다. 
		// index.jsp 에서 등록된 세션을 확인해 봅니다. String sessionEmail = (String)session.getAttribute("loginEmail");
//		session.setAttribute("loginEmail", vo.getAdminEmail() + " member 추가태그");
		
		return "redirect:/member/application"; // 어드민 메인 화면으로 이동
	}
	
	@RequestMapping(value="/member")
	public String member( HttpSession session ) {
		log.info("사용자 메인");
		
		return "redirect:/member/application";
	}
	
	@RequestMapping(value="/member/accessDenied")
	public String memberAccessDenied( HttpSession session ) {
		log.info("/member/accessDenied 호출");
		session.invalidate(); 
		return "redirect:/member/login";
	}
	
	/**
	 * @설명 :로그인 중복 확인
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/member/loginDuplicate")
	public String memberLoginDuplicate( HttpSession session ) {
		log.info("/member/loginDuplicate 호출");
		session.invalidate(); 
		return "redirect:/member/login";
	}
	
}
