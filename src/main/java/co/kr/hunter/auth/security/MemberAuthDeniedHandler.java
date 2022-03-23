package co.kr.hunter.auth.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.access.AccessDeniedHandler;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class MemberAuthDeniedHandler implements AccessDeniedHandler {
	
	public void handle(
			HttpServletRequest request, 
			HttpServletResponse response,
			AccessDeniedException accessDeniedException
	) throws IOException, ServletException {
		
			//logger.info("Exception Exceiption : {}",accessDeniedException);
			log.info("Exception LocalizedMessage : {}",accessDeniedException.getLocalizedMessage());
			log.info("Exception Message : {}",accessDeniedException.getMessage());
			log.info("Exception StackTrace : {}",accessDeniedException.getStackTrace());
		 /*
AdminAuthDeniedHandler:handle , line:30 | Exception LocalizedMessage : Access is denied
AdminAuthDeniedHandler:handle , line:31 | Exception Message : Access is denied
AdminAuthDeniedHandler:handle , line:32 | Exception StackTrace : org.springframework.security.access.vote.AffirmativeBased.decide(AffirmativeBased.java:84)
AdminAuthDeniedHandler:handle , line:37 | User: m_id attempted to access the protected URL: /admin/main
		  * 
		  * 
		  */
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        
	        if (auth != null) {
	        	log.info("User: " + auth.getName() 
	              + " attempted to access the protected URL: "
	              + request.getRequestURI());
	        }
	 
	        response.sendRedirect(request.getContextPath() + "/member/accessDenied");

	}

}
