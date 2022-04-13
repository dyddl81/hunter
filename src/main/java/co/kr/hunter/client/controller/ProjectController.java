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

import co.kr.hunter.client.domain.ProjectVo;
import co.kr.hunter.client.service.ProjectService;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("client/project")
@Slf4j
@Controller
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;
	
	@GetMapping("/course")
	public String selectCourse(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectCourse");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//        List<ProjectVo> list = projectService.selectApplication(projectVo);
//        log.info("selectApplication : " + list);
//        
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/course";
	}	
	
	@GetMapping("/courseDetail")
	public String selectCourseDetail(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectCourseDetail");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/courseDetail";
	}	
	
	@GetMapping("/courseDetailAdv")
	public String selectCourseDetailAdv(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectCourseDetailAdv");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/courseDetailAdv";
	}	
	
	@GetMapping("/courseList")
	public String selectCourseList(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectCourseList");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/courseList";
	}	
	
	@GetMapping("/courseList2")
	public String selectCourseList2(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectCourseList2");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/courseList2";
	}	
	
	@GetMapping("/instructorCreateCourse")
	public String selectInstructorCreateCourse(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectInstructorCreateCourse");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/instructorCreateCourse";
	}	
	
	@GetMapping("/instructorEarning")
	public String selectInstructorEarning(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectInstructorEarning");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/instructorEarning";
	}	
	
	@GetMapping("/instructorList")
	public String selectInstructorList(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectInstructorList");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/instructorList";
	}	
	
	@GetMapping("/instructorManageCourse")
	public String selectInstructorManageCourse(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectInstructorManageCourse");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/instructorManageCourse";
	}	
	
	@GetMapping("/instructorOrder")
	public String selectIstructorOrder(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectIstructorOrder");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/instructorOrder";
	}	
	
	@GetMapping("/instructorReview")
	public String selectInstructorReview(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectInstructorReview");
		
//		List<ProjectVo> list = projectService.selectApplicationList(projectVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(projectVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
//		List<ProjectVo> list = projectService.selectApplication(projectVo);
//		log.info("selectApplication : " + list);
//		
//		model.put("result", list);
		model.put("projectVo", projectVo);
		
		return "client/project/instructorReview";
	}	

	@GetMapping("/step1")
	public String selectApplicationStep1(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep1");
		
		int cnt = projectService.selectApplicationCnt(projectVo);
		model.put("cnt", cnt);
		
		return "client/application/step1";
	}	
	
	@GetMapping("/step2/{view}")
	public String selectApplicationStep2(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep2");
		log.info("view : "+projectVo.getView());
		log.info("getApplicationId : "+projectVo.getApplicationId());
		
		List<FileVo> fileResult = null;
		if("N".equals(projectVo.getView())) {
			if(projectVo.getApplicationId() == null) {
				projectService.insertApplication(projectVo);
			}
		}else {
			
			String view = projectVo.getView();
			projectVo.setApplicationId(view);
			projectVo = projectService.selectApplicationInfo(projectVo);
			projectVo.setView("U");
			
			FileVo fileVo = new FileVo();
			fileVo.setCodeId(projectVo.getApplicationId());
			fileResult = projectService.selectApplicationFileList(fileVo);			
		}
		
		
		model.put("projectVo", projectVo);
		model.put("fileResult", fileResult);
		return "client/application/step2";
	}	
	
	@GetMapping("/step3/{view}/{applicationId}")
	public String selectApplicationStep3(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep3");
		
		if("U".equals(projectVo.getView())) {
			String view = projectVo.getView();
			projectVo = projectService.selectApplicationInfo(projectVo);
			projectVo.setView(view);
		}
		
		model.put("projectVo", projectVo);
		return "client/application/step3";
	}	
	
	@GetMapping("/step4/{view}/{applicationId}")
	public String selectApplicationStep4(ProjectVo projectVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep4");
		
		if("U".equals(projectVo.getView())) {
			String view = projectVo.getView();
			projectVo = projectService.selectApplicationInfo(projectVo);
			projectVo.setView(view);
		}
		
		model.put("projectVo", projectVo);
		return "client/application/step4";
	}	
	
    /**
     * 신청서 등록
     * @return
     */
	@PostMapping
	@ResponseBody
	public int insertApplication(@RequestBody ProjectVo projectVo) throws Exception{
		log.info("insertApplication");
		int result = projectService.insertApplication(projectVo);
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
	public int insertApplicationFile(ProjectVo projectVo, MultipartHttpServletRequest mpRequest) throws Exception {
		log.info("insertApplicationFile");
		
		log.info("getApplicationId : " + projectVo.getApplicationId());
		log.info("getCode : " + projectVo.getCode());
		
		int result = projectService.insertApplicationFile(projectVo, mpRequest);
		
		return result;
		
	}
	
	
    /**
     * 신청서 수정
     * @return
     */	
	@PutMapping
	@ResponseBody
	public int updateApplication(@RequestBody ProjectVo projectVo) throws Exception{
		log.info("updateApplication");
		int result = projectService.updateApplication(projectVo);
		log.info("result : " + result);
		
		return result;
	}	

	
    /**
     * 신청서 삭제
     * @return
     */
	@DeleteMapping
	@ResponseBody
	public int deleteApplication(@RequestBody ProjectVo projectVo) throws Exception{
		log.info("deleteApplication");
		int result = projectService.deleteApplication(projectVo);
		log.info("result : " + result);
		
		return result;
	}	
	
	/**
	 * 파일 삭제
	 * @return
	 */
	@DeleteMapping("/file")
	@ResponseBody
	public int deleteApplicationFile(@RequestBody ProjectVo projectVo) throws Exception{
		log.info("deleteApplicationFile");
		int result = projectService.deleteApplicationFile(projectVo);
		log.info("result : " + result);
		
		return result;
	}	
}
