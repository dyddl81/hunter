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

import co.kr.hunter.client.domain.MainVo;
import co.kr.hunter.client.service.MainService;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("client/main")
@Slf4j
@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@GetMapping
	public String selectApplicationList(MainVo mainVo, ModelMap model) throws Exception{
		log.info("selectApplicationList");
		
//		List<MainVo> list = mainService.selectApplicationList(mainVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(mainVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
        List<MainVo> list = mainService.selectApplication(mainVo);
        log.info("selectApplication : " + list);
        
		model.put("result", list);
		model.put("mainVo", mainVo);
		
		return "client/application/list";
	}	

	@GetMapping("/step1")
	public String selectApplicationStep1(MainVo mainVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep1");
		
		int cnt = mainService.selectApplicationCnt(mainVo);
		model.put("cnt", cnt);
		
		return "client/application/step1";
	}	
	
	@GetMapping("/step2/{view}")
	public String selectApplicationStep2(MainVo mainVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep2");
		log.info("view : "+mainVo.getView());
		log.info("getApplicationId : "+mainVo.getApplicationId());
		
		List<FileVo> fileResult = null;
		if("N".equals(mainVo.getView())) {
			if(mainVo.getApplicationId() == null) {
				mainService.insertApplication(mainVo);
			}
		}else {
			
			String view = mainVo.getView();
			mainVo.setApplicationId(view);
			mainVo = mainService.selectApplicationInfo(mainVo);
			mainVo.setView("U");
			
			FileVo fileVo = new FileVo();
			fileVo.setCodeId(mainVo.getApplicationId());
			fileResult = mainService.selectApplicationFileList(fileVo);			
		}
		
		
		model.put("mainVo", mainVo);
		model.put("fileResult", fileResult);
		return "client/application/step2";
	}	
	
	@GetMapping("/step3/{view}/{applicationId}")
	public String selectApplicationStep3(MainVo mainVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep3");
		
		if("U".equals(mainVo.getView())) {
			String view = mainVo.getView();
			mainVo = mainService.selectApplicationInfo(mainVo);
			mainVo.setView(view);
		}
		
		model.put("mainVo", mainVo);
		return "client/application/step3";
	}	
	
	@GetMapping("/step4/{view}/{applicationId}")
	public String selectApplicationStep4(MainVo mainVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep4");
		
		if("U".equals(mainVo.getView())) {
			String view = mainVo.getView();
			mainVo = mainService.selectApplicationInfo(mainVo);
			mainVo.setView(view);
		}
		
		model.put("mainVo", mainVo);
		return "client/application/step4";
	}	
	
    /**
     * 신청서 등록
     * @return
     */
	@PostMapping
	@ResponseBody
	public int insertApplication(@RequestBody MainVo mainVo) throws Exception{
		log.info("insertApplication");
		int result = mainService.insertApplication(mainVo);
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
	public int insertApplicationFile(MainVo mainVo, MultipartHttpServletRequest mpRequest) throws Exception {
		log.info("insertApplicationFile");
		
		log.info("getApplicationId : " + mainVo.getApplicationId());
		log.info("getCode : " + mainVo.getCode());
		
		int result = mainService.insertApplicationFile(mainVo, mpRequest);
		
		return result;
		
	}
	
	
    /**
     * 신청서 수정
     * @return
     */	
	@PutMapping
	@ResponseBody
	public int updateApplication(@RequestBody MainVo mainVo) throws Exception{
		log.info("updateApplication");
		int result = mainService.updateApplication(mainVo);
		log.info("result : " + result);
		
		return result;
	}	

	
    /**
     * 신청서 삭제
     * @return
     */
	@DeleteMapping
	@ResponseBody
	public int deleteApplication(@RequestBody MainVo mainVo) throws Exception{
		log.info("deleteApplication");
		int result = mainService.deleteApplication(mainVo);
		log.info("result : " + result);
		
		return result;
	}	
	
	/**
	 * 파일 삭제
	 * @return
	 */
	@DeleteMapping("/file")
	@ResponseBody
	public int deleteApplicationFile(@RequestBody MainVo mainVo) throws Exception{
		log.info("deleteApplicationFile");
		int result = mainService.deleteApplicationFile(mainVo);
		log.info("result : " + result);
		
		return result;
	}	
}
