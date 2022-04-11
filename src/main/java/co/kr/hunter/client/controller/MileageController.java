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

import co.kr.hunter.client.domain.MileageVo;
import co.kr.hunter.client.service.MileageService;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("client/mileage")
@Slf4j
@Controller
public class MileageController {
	
	@Autowired
	private MileageService mileageService;
	
	@GetMapping
	public String selectApplicationList(MileageVo mileageVo, ModelMap model) throws Exception{
		log.info("selectApplicationList");
		
//		List<MileageVo> list = mileageService.selectApplicationList(mileageVo);
//		
//		log.info("selectApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(mileageVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
		
        List<MileageVo> list = mileageService.selectApplication(mileageVo);
        log.info("selectApplication : " + list);
        
		model.put("result", list);
		model.put("mileageVo", mileageVo);
		
		return "client/application/list";
	}	

	@GetMapping("/step1")
	public String selectApplicationStep1(MileageVo mileageVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep1");
		
		int cnt = mileageService.selectApplicationCnt(mileageVo);
		model.put("cnt", cnt);
		
		return "client/application/step1";
	}	
	
	@GetMapping("/step2/{view}")
	public String selectApplicationStep2(MileageVo mileageVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep2");
		log.info("view : "+mileageVo.getView());
		log.info("getApplicationId : "+mileageVo.getApplicationId());
		
		List<FileVo> fileResult = null;
		if("N".equals(mileageVo.getView())) {
			if(mileageVo.getApplicationId() == null) {
				mileageService.insertApplication(mileageVo);
			}
		}else {
			
			String view = mileageVo.getView();
			mileageVo.setApplicationId(view);
			mileageVo = mileageService.selectApplicationInfo(mileageVo);
			mileageVo.setView("U");
			
			FileVo fileVo = new FileVo();
			fileVo.setCodeId(mileageVo.getApplicationId());
			fileResult = mileageService.selectApplicationFileList(fileVo);			
		}
		
		
		model.put("mileageVo", mileageVo);
		model.put("fileResult", fileResult);
		return "client/application/step2";
	}	
	
	@GetMapping("/step3/{view}/{applicationId}")
	public String selectApplicationStep3(MileageVo mileageVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep3");
		
		if("U".equals(mileageVo.getView())) {
			String view = mileageVo.getView();
			mileageVo = mileageService.selectApplicationInfo(mileageVo);
			mileageVo.setView(view);
		}
		
		model.put("mileageVo", mileageVo);
		return "client/application/step3";
	}	
	
	@GetMapping("/step4/{view}/{applicationId}")
	public String selectApplicationStep4(MileageVo mileageVo, ModelMap model) throws Exception{
		log.info("selectApplicationStep4");
		
		if("U".equals(mileageVo.getView())) {
			String view = mileageVo.getView();
			mileageVo = mileageService.selectApplicationInfo(mileageVo);
			mileageVo.setView(view);
		}
		
		model.put("mileageVo", mileageVo);
		return "client/application/step4";
	}	
	
    /**
     * 신청서 등록
     * @return
     */
	@PostMapping
	@ResponseBody
	public int insertApplication(@RequestBody MileageVo mileageVo) throws Exception{
		log.info("insertApplication");
		int result = mileageService.insertApplication(mileageVo);
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
	public int insertApplicationFile(MileageVo mileageVo, MultipartHttpServletRequest mpRequest) throws Exception {
		log.info("insertApplicationFile");
		
		log.info("getApplicationId : " + mileageVo.getApplicationId());
		log.info("getCode : " + mileageVo.getCode());
		
		int result = mileageService.insertApplicationFile(mileageVo, mpRequest);
		
		return result;
		
	}
	
	
    /**
     * 신청서 수정
     * @return
     */	
	@PutMapping
	@ResponseBody
	public int updateApplication(@RequestBody MileageVo mileageVo) throws Exception{
		log.info("updateApplication");
		int result = mileageService.updateApplication(mileageVo);
		log.info("result : " + result);
		
		return result;
	}	

	
    /**
     * 신청서 삭제
     * @return
     */
	@DeleteMapping
	@ResponseBody
	public int deleteApplication(@RequestBody MileageVo mileageVo) throws Exception{
		log.info("deleteApplication");
		int result = mileageService.deleteApplication(mileageVo);
		log.info("result : " + result);
		
		return result;
	}	
	
	/**
	 * 파일 삭제
	 * @return
	 */
	@DeleteMapping("/file")
	@ResponseBody
	public int deleteApplicationFile(@RequestBody MileageVo mileageVo) throws Exception{
		log.info("deleteApplicationFile");
		int result = mileageService.deleteApplicationFile(mileageVo);
		log.info("result : " + result);
		
		return result;
	}	
}
