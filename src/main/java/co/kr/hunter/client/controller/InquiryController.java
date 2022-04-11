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

import co.kr.hunter.client.domain.InquiryVo;
import co.kr.hunter.client.service.InquiryService;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("client/inquiry")
@Slf4j
@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	@GetMapping("/instructor")
	public String selectInstructor(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectInstructor");
		
//		List<InquiryVo> list = inquiryService.selectApplicationList(inquiryVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(inquiryVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<InquiryVo> list = inquiryService.selectApplication(inquiryVo);
//        log.info("selectApplication : " + list);
        
//		model.put("result", list);
		model.put("inquiryVo", inquiryVo);
		
		return "client/inquiry/instructor";
	}	
	
	@GetMapping("/blogMasonry")
	public String selectBlogMasonry(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectBlogMasonry");
		
//		List<InquiryVo> list = inquiryService.selectApplicationList(inquiryVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(inquiryVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<InquiryVo> list = inquiryService.selectApplication(inquiryVo);
//        log.info("selectApplication : " + list);
		
//		model.put("result", list);
		model.put("inquiryVo", inquiryVo);
		
		return "client/inquiry/blogMasonry";
	}	
	
	@GetMapping("/blog")
	public String selectBlog(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectBlog");
		
//		List<InquiryVo> list = inquiryService.selectApplicationList(inquiryVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(inquiryVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<InquiryVo> list = inquiryService.selectApplication(inquiryVo);
//        log.info("selectApplication : " + list);
		
//		model.put("result", list);
		model.put("inquiryVo", inquiryVo);
		
		return "client/inquiry/blog";
	}	
	
	@GetMapping("/blogInfo")
	public String selectBlogInfo(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectBlogInfo");
		
//		List<InquiryVo> list = inquiryService.selectApplicationList(inquiryVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(inquiryVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<InquiryVo> list = inquiryService.selectApplication(inquiryVo);
//        log.info("selectApplication : " + list);
		
//		model.put("result", list);
		model.put("inquiryVo", inquiryVo);
		
		return "client/inquiry/blogInfo";
	}	
	
	@GetMapping("/contactUs")
	public String selectContactUs(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectContactUs");
		
//		List<InquiryVo> list = inquiryService.selectApplicationList(inquiryVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(inquiryVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<InquiryVo> list = inquiryService.selectApplication(inquiryVo);
//        log.info("selectApplication : " + list);
		
//		model.put("result", list);
		model.put("inquiryVo", inquiryVo);
		
		return "client/inquiry/contactUs";
	}	
	
	@GetMapping("/faq")
	public String selectFaq(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectFaq");
		
//		List<InquiryVo> list = inquiryService.selectApplicationList(inquiryVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(inquiryVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<InquiryVo> list = inquiryService.selectApplication(inquiryVo);
//        log.info("selectApplication : " + list);
		
//		model.put("result", list);
		model.put("inquiryVo", inquiryVo);
		
		return "client/inquiry/faq";
	}	
	
	@GetMapping("/request")
	public String selectRequest(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("request");
		
//		List<InquiryVo> list = inquiryService.selectApplicationList(inquiryVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(inquiryVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<InquiryVo> list = inquiryService.selectApplication(inquiryVo);
//        log.info("selectApplication : " + list);
		
//		model.put("result", list);
		model.put("inquiryVo", inquiryVo);
		
		return "client/inquiry/request";
	}	

	@GetMapping("/step1")
	public String selectApplicationStep1(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep1");
		
		int cnt = inquiryService.selectApplicationCnt(inquiryVo);
		model.put("cnt", cnt);
		
		return "client/application/step1";
	}	
	
	@GetMapping("/step2/{view}")
	public String selectApplicationStep2(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep2");
		log.info("view : "+inquiryVo.getView());
		log.info("getApplicationId : "+inquiryVo.getApplicationId());
		
		List<FileVo> fileResult = null;
		if("N".equals(inquiryVo.getView())) {
			if(inquiryVo.getApplicationId() == null) {
				inquiryService.insertApplication(inquiryVo);
			}
		}else {
			
			String view = inquiryVo.getView();
			inquiryVo.setApplicationId(view);
			inquiryVo = inquiryService.selectApplicationInfo(inquiryVo);
			inquiryVo.setView("U");
			
			FileVo fileVo = new FileVo();
			fileVo.setCodeId(inquiryVo.getApplicationId());
			fileResult = inquiryService.selectApplicationFileList(fileVo);			
		}
		
		
		model.put("inquiryVo", inquiryVo);
		model.put("fileResult", fileResult);
		return "client/application/step2";
	}	
	
	@GetMapping("/step3/{view}/{applicationId}")
	public String selectApplicationStep3(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep3");
		
		if("U".equals(inquiryVo.getView())) {
			String view = inquiryVo.getView();
			inquiryVo = inquiryService.selectApplicationInfo(inquiryVo);
			inquiryVo.setView(view);
		}
		
		model.put("inquiryVo", inquiryVo);
		return "client/application/step3";
	}	
	
	@GetMapping("/step4/{view}/{applicationId}")
	public String selectApplicationStep4(InquiryVo inquiryVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep4");
		
		if("U".equals(inquiryVo.getView())) {
			String view = inquiryVo.getView();
			inquiryVo = inquiryService.selectApplicationInfo(inquiryVo);
			inquiryVo.setView(view);
		}
		
		model.put("inquiryVo", inquiryVo);
		return "client/application/step4";
	}	
	
    /**
     * 신청서 등록
     * @return
     */
	@PostMapping
	@ResponseBody
	public int insertApplication(@RequestBody InquiryVo inquiryVo) throws Exception{
		log.info("insertApplication");
		int result = inquiryService.insertApplication(inquiryVo);
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
	public int insertApplicationFile(InquiryVo inquiryVo, MultipartHttpServletRequest mpRequest) throws Exception {
		log.info("insertApplicationFile");
		
		log.info("getApplicationId : " + inquiryVo.getApplicationId());
		log.info("getCode : " + inquiryVo.getCode());
		
		int result = inquiryService.insertApplicationFile(inquiryVo, mpRequest);
		
		return result;
		
	}
	
	
    /**
     * 신청서 수정
     * @return
     */	
	@PutMapping
	@ResponseBody
	public int updateApplication(@RequestBody InquiryVo inquiryVo) throws Exception{
		log.info("updateApplication");
		int result = inquiryService.updateApplication(inquiryVo);
		log.info("result : " + result);
		
		return result;
	}	

	
    /**
     * 신청서 삭제
     * @return
     */
	@DeleteMapping
	@ResponseBody
	public int deleteApplication(@RequestBody InquiryVo inquiryVo) throws Exception{
		log.info("deleteApplication");
		int result = inquiryService.deleteApplication(inquiryVo);
		log.info("result : " + result);
		
		return result;
	}	
	
	/**
	 * 파일 삭제
	 * @return
	 */
	@DeleteMapping("/file")
	@ResponseBody
	public int deleteApplicationFile(@RequestBody InquiryVo inquiryVo) throws Exception{
		log.info("deleteApplicationFile");
		int result = inquiryService.deleteApplicationFile(inquiryVo);
		log.info("result : " + result);
		
		return result;
	}	
}
