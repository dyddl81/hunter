package co.kr.hunter.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.kr.hunter.client.domain.ApplicationVo;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("member/introduction")
@Slf4j
@Controller
public class IntroductionController {
	
	@GetMapping
	public String selectIntroductionAbout(ApplicationVo applicationVo, ModelMap model) throws Exception{
		log.info("selectIntroductionAbout");
		
		return "client/introduction/about";
	}	


}
