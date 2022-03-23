package co.kr.hunter.client.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import co.kr.hunter.client.domain.ApplicationVo;
import co.kr.hunter.client.service.ApplicationService;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("member/application")
@Slf4j
@Controller
public class ApplicationController {
	
	@Autowired
	private ApplicationService applicationService;
	
	@GetMapping
	public String selectApplicationList(ApplicationVo applicationVo, ModelMap model) throws Exception{
		log.info("selectApplicationList");
		
//		List<ApplicationVo> list = applicationService.selectApplicationList(applicationVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(applicationVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
        List<ApplicationVo> list = applicationService.selectApplication(applicationVo);
        log.info("selectApplication : " + list);
        
		model.put("result", list);
		model.put("applicationVo", applicationVo);
		
		return "client/application/list";
	}	

	@GetMapping("/step1")
	public String selectApplicationStep1(ApplicationVo applicationVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep1");
		
		int cnt = applicationService.selectApplicationCnt(applicationVo);
		model.put("cnt", cnt);
		
		return "client/application/step1";
	}	
	
	@GetMapping("/step2/{view}")
	public String selectApplicationStep2(ApplicationVo applicationVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep2");
		log.info("view : "+applicationVo.getView());
		log.info("getApplicationId : "+applicationVo.getApplicationId());
		
		List<FileVo> fileResult = null;
		if("N".equals(applicationVo.getView())) {
			if(applicationVo.getApplicationId() == null) {
				applicationService.insertApplication(applicationVo);
			}
		}else {
			
			String view = applicationVo.getView();
			applicationVo.setApplicationId(view);
			applicationVo = applicationService.selectApplicationInfo(applicationVo);
			applicationVo.setView("U");
			
			FileVo fileVo = new FileVo();
			fileVo.setCodeId(applicationVo.getApplicationId());
			fileResult = applicationService.selectApplicationFileList(fileVo);			
		}
		
		
		model.put("applicationVo", applicationVo);
		model.put("fileResult", fileResult);
		return "client/application/step2";
	}	
	
	@GetMapping("/step3/{view}/{applicationId}")
	public String selectApplicationStep3(ApplicationVo applicationVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep3");
		
		if("U".equals(applicationVo.getView())) {
			String view = applicationVo.getView();
			applicationVo = applicationService.selectApplicationInfo(applicationVo);
			applicationVo.setView(view);
		}
		
		model.put("applicationVo", applicationVo);
		return "client/application/step3";
	}	
	
	@GetMapping("/step4/{view}/{applicationId}")
	public String selectApplicationStep4(ApplicationVo applicationVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep4");
		
		if("U".equals(applicationVo.getView())) {
			String view = applicationVo.getView();
			applicationVo = applicationService.selectApplicationInfo(applicationVo);
			applicationVo.setView(view);
		}
		
		model.put("applicationVo", applicationVo);
		return "client/application/step4";
	}	
	
    /**
     * 신청서 등록
     * @return
     */
	@PostMapping
	@ResponseBody
	public int insertApplication(@RequestBody ApplicationVo applicationVo) throws Exception{
		log.info("insertApplication");
		int result = applicationService.insertApplication(applicationVo);
		log.info("result : " + result);
		
		return result;
	}	
	
	/**
	 * 첨부파이르 등록
	 * @return
	 * @throws Exception 
	 */	
	@PostMapping("/file")
	@ResponseBody
	public int insertApplicationFile(ApplicationVo applicationVo, MultipartHttpServletRequest mpRequest) throws Exception {
		log.info("insertApplicationFile");
		
		log.info("getApplicationId : " + applicationVo.getApplicationId());
		log.info("getCode : " + applicationVo.getCode());
		
		int result = applicationService.insertApplicationFile(applicationVo, mpRequest);
		
		return result;
		
	}
	
	
    /**
     * 신청서 수정
     * @return
     */	
	@PutMapping
	@ResponseBody
	public int updateApplication(@RequestBody ApplicationVo applicationVo) throws Exception{
		log.info("updateApplication");
		int result = applicationService.updateApplication(applicationVo);
		log.info("result : " + result);
		
		return result;
	}	

	
    /**
     * 신청서 삭제
     * @return
     */
	@DeleteMapping
	@ResponseBody
	public int deleteApplication(@RequestBody ApplicationVo applicationVo) throws Exception{
		log.info("deleteApplication");
		int result = applicationService.deleteApplication(applicationVo);
		log.info("result : " + result);
		
		return result;
	}	
	
	/**
	 * 파일 삭제
	 * @return
	 */
	@DeleteMapping("/file")
	@ResponseBody
	public int deleteApplicationFile(@RequestBody ApplicationVo applicationVo) throws Exception{
		log.info("deleteApplicationFile");
		int result = applicationService.deleteApplicationFile(applicationVo);
		log.info("result : " + result);
		
		return result;
	}	
}
