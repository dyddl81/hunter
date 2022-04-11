package co.kr.hunter.admin.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.kr.hunter.admin.domain.AdminMileageVo;
import co.kr.hunter.admin.service.AdminMileageService;
import co.kr.hunter.common.util.Page;
import co.kr.hunter.common.vo.FileVo;
import lombok.extern.slf4j.Slf4j;

@RequestMapping("admin/mileage")
@Slf4j
@Controller
@PropertySource("classpath:properties/config.properties")
public class AdminMileageController {
	
	@Value("${file.path}") 
	private String filePath;		
	
	@Autowired
	private AdminMileageService adminMileageService;
	
	@GetMapping("/event")
	public String selectAdminEvent(AdminMileageVo adminMileageVo, ModelMap model) throws Exception{
		log.info("selectAdminEvent");
		
//		List<AdminMileageVo> list = adminMileageService.selectAdminApplicationList(adminMileageVo);
//		
//		log.info("selectAdminApplicationList : " + list);
//		
//		int totalCount = 0;
//        if (list.size() > 0) {
//            totalCount = list.get(0).getTotalCount();
//        }
//        
//        model = Page.setListPage(adminMileageVo, list.size(), totalCount, model);
//        model.put("totalCount", totalCount);
//		model.put("result", list);
		model.put("adminMileageVo", adminMileageVo);
		
		return "admin/mileage/event";
	}	
	
	@GetMapping("/cart")
	public String selectAdminCart(AdminMileageVo adminMileageVo, ModelMap model) throws Exception{
		log.info("selectAdminCart");
		
//		List<AdminMileageVo> list = adminMileageService.selectAdminApplicationList(adminMileageVo);
//		
//		log.info("selectAdminApplicationList : " + list);
//		
//		int totalCount = 0;
//		if (list.size() > 0) {
//			totalCount = list.get(0).getTotalCount();
//		}
//		
//		model = Page.setListPage(adminMileageVo, list.size(), totalCount, model);
//		model.put("totalCount", totalCount);
//		model.put("result", list);
		model.put("adminMileageVo", adminMileageVo);
		
		return "admin/mileage/cart";
	}	
	
	@GetMapping("/use")
	public String selectAdminUse(AdminMileageVo adminMileageVo, ModelMap model) throws Exception{
		log.info("selectAdminUse");
		
//		List<AdminMileageVo> list = adminMileageService.selectAdminApplicationList(adminMileageVo);
//		
//		log.info("selectAdminApplicationList : " + list);
//		
//		int totalCount = 0;
//		if (list.size() > 0) {
//			totalCount = list.get(0).getTotalCount();
//		}
//		
//		model = Page.setListPage(adminMileageVo, list.size(), totalCount, model);
//		model.put("totalCount", totalCount);
//		model.put("result", list);
		model.put("adminMileageVo", adminMileageVo);
		
		return "admin/mileage/use";
	}	
	
	@GetMapping("/detail/{applicationId}")
	public String selectAdminApplicationDetail(AdminMileageVo adminMileageVo, ModelMap model) throws Exception{
		log.info("selectAdminApplicationDetail");
		
		AdminMileageVo info = adminMileageService.selectAdminApplication(adminMileageVo);
		
		FileVo fileVo = new FileVo();
		fileVo.setCodeId(info.getApplicationId());
		List<FileVo> fileList = adminMileageService.selectAdminApplicationFileList(fileVo);
		
		model.put("result", info);
		model.put("fileResult", fileList);
		model.put("adminMileageVo", adminMileageVo);
		
		return "admin/application/detail";
	}	

	
    /**
     * 관리자 신청서 삭제
     * @return
     */
	@DeleteMapping
	@ResponseBody
	public int deleteAdminApplication(@RequestBody List<String> ids) throws Exception{
		log.info("deleteAdminApplication");
		int result = adminMileageService.deleteAdminApplication(ids);
		log.info("result : " + result);
		
		return result;
	}	
	
	/**
	 * 관리자 신청서 다운로드
	 * @return
	 */		
	@PostMapping(value = "/excel")
	@ResponseBody
	public void selectAdminApplicationExcel(AdminMileageVo adminMileageVo, HttpServletResponse response) throws Exception {
		
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = wb.createSheet("Sheet1");
		HSSFRow row = sheet.createRow((short) 0);

		String[] arr = {
				"번호", "접수번호", "신청분야", "아이템명", "사업자구분", 
				"창업일", "지역", "회사명", "사업자 등록번호", "법인번호",
				"업종/업태", "주생산품", "설립일", "전년도매출 2021년도", "전년도매출 2020년도",
				"상시근로자수 2021년도", "상시근로자수 2020년도", "투자유치금 여부", "투자유치금", "수출금 여부", 
				"수출금", "자본금", "사업장 주소", "여성기업확인서 발급 여부", "성명", 
				"생년월일", "휴대폰", "이메일", "주요경력", "최종학력",
				"전공"
				
		};
		
		sheet.setColumnWidth(0, 3500);
		sheet.setColumnWidth(1, 3500);
		sheet.setColumnWidth(2, 3500);
		sheet.setColumnWidth(3, 3500);
		sheet.setColumnWidth(4, 3500);
		sheet.setColumnWidth(5, 3500);
		sheet.setColumnWidth(6, 3500);
		sheet.setColumnWidth(7, 3500);
		sheet.setColumnWidth(8, 4000);
		sheet.setColumnWidth(9, 4500);
		sheet.setColumnWidth(10, 6500);
		sheet.setColumnWidth(11, 3500);
		sheet.setColumnWidth(12, 3500);
		sheet.setColumnWidth(13, 5000);
		sheet.setColumnWidth(14, 5000);
		sheet.setColumnWidth(15, 5500);
		sheet.setColumnWidth(16, 5500);
		sheet.setColumnWidth(17, 4000);
		sheet.setColumnWidth(18, 3500);
		sheet.setColumnWidth(19, 3500);
		sheet.setColumnWidth(20, 3500);
		sheet.setColumnWidth(21, 3500);
		sheet.setColumnWidth(22, 15000);
		sheet.setColumnWidth(23, 6500);
		sheet.setColumnWidth(24, 3500);
		sheet.setColumnWidth(25, 3500);
		sheet.setColumnWidth(26, 3500);
		sheet.setColumnWidth(27, 6000);
		sheet.setColumnWidth(28, 5000);
		sheet.setColumnWidth(29, 5000);
		sheet.setColumnWidth(30, 3500);
        
		HSSFFont font = wb.createFont();
		font.setFontName(HSSFFont.FONT_ARIAL);

		HSSFCellStyle titlestyle = wb.createCellStyle();
		titlestyle.setFont(font);

		HSSFCell cell;
		for(int i=0; i<arr.length; i++) {
			cell = row.createCell(i);
			cell.setCellValue(arr[i]);
			cell.setCellStyle(titlestyle);			
		}

		HSSFCellStyle style = wb.createCellStyle();
		style.setFont(font);

		adminMileageVo.setList(adminMileageVo.getArrCheckId().split(","));
		
		List<AdminMileageVo> list = adminMileageService.selectAdminApplicationExcel(adminMileageVo);
		
		int i = 0;
		for (AdminMileageVo adminVo : list) {
			
			row = sheet.createRow((short) (i + 1));
			
			cell = row.createCell(0);
			cell.setCellValue(i+1);
			cell.setCellStyle(style);
			
			cell = row.createCell(1);
			cell.setCellValue(adminVo.getApplicationId().substring(11));
			cell.setCellStyle(style);
			
			cell = row.createCell(2);
			cell.setCellValue("1".equals(adminVo.getApplicationType())?"창업기업":"예비창업");
			cell.setCellStyle(style);
			
			cell = row.createCell(3);
			cell.setCellValue(adminVo.getItemNm());
			cell.setCellStyle(style);
			
			cell = row.createCell(4);
			cell.setCellValue("1".equals(adminVo.getBusinessType())?"예비창업자":("2".equals(adminVo.getBusinessType())?"개인사업자":"법인사업자"));
			cell.setCellStyle(style);
			
			cell = row.createCell(5);
			cell.setCellValue(adminVo.getFoundingDate());
			cell.setCellStyle(style);
			
			cell = row.createCell(6);
			cell.setCellValue(adminVo.getAreaNm());
			cell.setCellStyle(style);
			
			cell = row.createCell(7);
			cell.setCellValue(adminVo.getCompanyNm());
			cell.setCellStyle(style);
			
			cell = row.createCell(8);
			cell.setCellValue(adminVo.getBusinessNum());
			cell.setCellStyle(style);
			
			cell = row.createCell(9);
			cell.setCellValue(adminVo.getCorporationNum());
			cell.setCellStyle(style);
			
			cell = row.createCell(10);
			cell.setCellValue(adminVo.getSectors()+"/"+adminVo.getBusinessCondition());
			cell.setCellStyle(style);
			
			cell = row.createCell(11);
			cell.setCellValue(adminVo.getMajorIndustries());
			cell.setCellStyle(style);
			
			cell = row.createCell(12);
			cell.setCellValue(adminVo.getEstablishmentDate());
			cell.setCellStyle(style);
			
			cell = row.createCell(13);
			cell.setCellValue(adminVo.getPreviousYearSales());
			cell.setCellStyle(style);
			
			cell = row.createCell(14);
			cell.setCellValue(adminVo.getPreviousYearSales2());
			cell.setCellStyle(style);
			
			cell = row.createCell(15);
			cell.setCellValue(adminVo.getFulltimeWorker());
			cell.setCellStyle(style);
			
			cell = row.createCell(16);
			cell.setCellValue(adminVo.getFulltimeWorker2());
			cell.setCellStyle(style);
			
			cell = row.createCell(17);
			cell.setCellValue("Y".equals(adminVo.getInvestmentAttractionYn())?"여":"부");
			cell.setCellStyle(style);
			
			cell = row.createCell(18);
			cell.setCellValue(adminVo.getInvestmentAttraction());
			cell.setCellStyle(style);
			
			cell = row.createCell(19);
			cell.setCellValue("Y".equals(adminVo.getExportMoneyYn())?"여":"부");
			cell.setCellStyle(style);
			
			cell = row.createCell(20);
			cell.setCellValue(adminVo.getExportMoney());
			cell.setCellStyle(style);
			
			cell = row.createCell(21);
			cell.setCellValue(adminVo.getCapital());
			cell.setCellStyle(style);
			
			cell = row.createCell(22);
			cell.setCellValue(adminVo.getBusinessAddress());
			cell.setCellStyle(style);
			
			cell = row.createCell(23);
			cell.setCellValue("Y".equals(adminVo.getWomenBusinessCert())?"여":"부");
			cell.setCellStyle(style);
			
			cell = row.createCell(24);
			cell.setCellValue(adminVo.getAppNm());
			cell.setCellStyle(style);
			
			cell = row.createCell(25);
			cell.setCellValue(adminVo.getBirthDate());
			cell.setCellStyle(style);
			
			cell = row.createCell(26);
			cell.setCellValue(adminVo.getPhone());
			cell.setCellStyle(style);
			
			cell = row.createCell(27);
			cell.setCellValue(adminVo.getEmail());
			cell.setCellStyle(style);
			
			cell = row.createCell(28);
			cell.setCellValue(adminVo.getMajorCareer());
			cell.setCellStyle(style);
			
			cell = row.createCell(29);
			cell.setCellValue(adminVo.getLastEducationalNm());
			cell.setCellStyle(style);
			
			cell = row.createCell(30);
			cell.setCellValue(adminVo.getMajor());
			cell.setCellStyle(style);
			
			i++;
		}

		Calendar cal = Calendar.getInstance();
		Date date = cal.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String fileName = sdf.format(date);
		cal.get(Calendar.YEAR);
		String name = "output.xls";

		log.info("filePath : "+filePath);
		File file = new File(filePath+name);

		FileOutputStream fileOutputStream = new FileOutputStream(file);

		wb.write(fileOutputStream);

		byte b[] = new byte[(int) file.length()];

		response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xls");
		response.setHeader("Content-Length", String.valueOf(file.length()));
		
		FileInputStream fis = null;
		BufferedInputStream fin = null;
		
		try {
			
			if (file.isFile()) {
				
				fis = new FileInputStream(file);
				fin = new BufferedInputStream(fis);
				
				BufferedOutputStream outs = new BufferedOutputStream(response.getOutputStream());
				int read = 0;
				while ((read = fin.read(b)) != -1) {
					outs.write(b, 0, read);
				}
				outs.close();
			}
			
			if(file.exists()) file.delete();
			
		} catch (FileNotFoundException e) {
			
			log.info("settlement_all_excel Exception : "+e);
		} catch (IOException e) {
			
			log.info("settlement_all_excel Exception : "+e);
		} finally {
            try {
                if (fileOutputStream != null)
                	fileOutputStream.close();
                
                if (fin != null)
                	fin.close();
                
                if (fis != null)
                	fis.close();
            } catch (IOException ex) {
                log.info("ex : "+ex);
            }
        }
		
	}	
}
