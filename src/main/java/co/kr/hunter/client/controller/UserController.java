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

import co.kr.hunter.client.domain.UserVo;
import co.kr.hunter.client.service.UserService;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("client/user")
@Slf4j
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/courseAdded")
	public String selectCourseAdded(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectCourseAdded");
		
//		List<UserVo> list = userService.selectApplicationList(userVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(userVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<UserVo> list = userService.selectApplication(userVo);
//        log.info("selectApplication : " + list);
//        
//		model.put("result", list);
		model.put("userVo", userVo);
		
		return "client/application/courseAdded";
	}	
	
	@GetMapping("/instructorDeleteAccount")
	public String selectInstructorDeleteAccount(UserVo userVo, ModelMap model) throws Exception{
		log.info("instructorDeleteAccount");
		
//		List<UserVo> list = userService.selectApplicationList(userVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(userVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<UserVo> list = userService.selectApplication(userVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("userVo", userVo);
		
		return "client/application/instructorDeleteAccount";
	}	
	
	@GetMapping("/instructorPayout")
	public String selectInstructorPayout(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectInstructorPayout");
		
//		List<UserVo> list = userService.selectApplicationList(userVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(userVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<UserVo> list = userService.selectApplication(userVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("userVo", userVo);
		
		return "client/application/instructorPayout";
	}	
	
	@GetMapping("/instructorSetting")
	public String selectInstructorSetting(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectInstructorSetting");
		
//		List<UserVo> list = userService.selectApplicationList(userVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(userVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<UserVo> list = userService.selectApplication(userVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("userVo", userVo);
		
		return "client/application/instructorSetting";
	}	
	
	@GetMapping("/studentDashboard")
	public String selectStudentDashboard(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectStudentDashboard");
		
//		List<UserVo> list = userService.selectApplicationList(userVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(userVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<UserVo> list = userService.selectApplication(userVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("userVo", userVo);
		
		return "client/application/studentDashboard";
	}	
	
	@GetMapping("/universityAdmissionForm")
	public String selectUniversityAdmissionForm(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectUniversityAdmissionForm");
		
//		List<UserVo> list = userService.selectApplicationList(userVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(userVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<UserVo> list = userService.selectApplication(userVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("userVo", userVo);
		
		return "client/application/universityAdmissionForm";
	}	
	

	@GetMapping("/step1")
	public String selectApplicationStep1(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep1");
		
		int cnt = userService.selectApplicationCnt(userVo);
		model.put("cnt", cnt);
		
		return "client/application/step1";
	}	
	
	@GetMapping("/step2/{view}")
	public String selectApplicationStep2(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep2");
		log.info("view : "+userVo.getView());
		log.info("getApplicationId : "+userVo.getApplicationId());
		
		List<FileVo> fileResult = null;
		if("N".equals(userVo.getView())) {
			if(userVo.getApplicationId() == null) {
				userService.insertApplication(userVo);
			}
		}else {
			
			String view = userVo.getView();
			userVo.setApplicationId(view);
			userVo = userService.selectApplicationInfo(userVo);
			userVo.setView("U");
			
			FileVo fileVo = new FileVo();
			fileVo.setCodeId(userVo.getApplicationId());
			fileResult = userService.selectApplicationFileList(fileVo);			
		}
		
		
		model.put("userVo", userVo);
		model.put("fileResult", fileResult);
		return "client/application/step2";
	}	
	
	@GetMapping("/step3/{view}/{applicationId}")
	public String selectApplicationStep3(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep3");
		
		if("U".equals(userVo.getView())) {
			String view = userVo.getView();
			userVo = userService.selectApplicationInfo(userVo);
			userVo.setView(view);
		}
		
		model.put("userVo", userVo);
		return "client/application/step3";
	}	
	
	@GetMapping("/step4/{view}/{applicationId}")
	public String selectApplicationStep4(UserVo userVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep4");
		
		if("U".equals(userVo.getView())) {
			String view = userVo.getView();
			userVo = userService.selectApplicationInfo(userVo);
			userVo.setView(view);
		}
		
		model.put("userVo", userVo);
		return "client/application/step4";
	}	
	
    /**
     * 신청서 등록
     * @return
     */
	@PostMapping
	@ResponseBody
	public int insertApplication(@RequestBody UserVo userVo) throws Exception{
		log.info("insertApplication");
		int result = userService.insertApplication(userVo);
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
	public int insertApplicationFile(UserVo userVo, MultipartHttpServletRequest mpRequest) throws Exception {
		log.info("insertApplicationFile");
		
		log.info("getApplicationId : " + userVo.getApplicationId());
		log.info("getCode : " + userVo.getCode());
		
		int result = userService.insertApplicationFile(userVo, mpRequest);
		
		return result;
		
	}
	
	
    /**
     * 신청서 수정
     * @return
     */	
	@PutMapping
	@ResponseBody
	public int updateApplication(@RequestBody UserVo userVo) throws Exception{
		log.info("updateApplication");
		int result = userService.updateApplication(userVo);
		log.info("result : " + result);
		
		return result;
	}	

	
    /**
     * 신청서 삭제
     * @return
     */
	@DeleteMapping
	@ResponseBody
	public int deleteApplication(@RequestBody UserVo userVo) throws Exception{
		log.info("deleteApplication");
		int result = userService.deleteApplication(userVo);
		log.info("result : " + result);
		
		return result;
	}	
	
	/**
	 * 파일 삭제
	 * @return
	 */
	@DeleteMapping("/file")
	@ResponseBody
	public int deleteApplicationFile(@RequestBody UserVo userVo) throws Exception{
		log.info("deleteApplicationFile");
		int result = userService.deleteApplicationFile(userVo);
		log.info("result : " + result);
		
		return result;
	}	
}
