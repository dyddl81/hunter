package co.kr.hunter.admin.domain;

import co.kr.hunter.common.vo.DefaultVo;
import lombok.Data;

@Data
public class AdminInquiryVo extends DefaultVo {

	/** array값 */
	private String arrCheckId;
	
	/** array값 */
	private String[] list;
	
	/** 상태 */
	private String step;
	
	/** 신규 / 수정 */
	private String view;
	
	/** 신청서 아이디 */
	private String applicationId;
	
	/** 사용자 아이디 */
	private String userId;
	
	/** 아이템명 */
	private String itemNm;
	
	/** 신첨분야 */
	private String applicationType;
	
	/** 지약 */
	private String area;
	
	/** 지약명 */
	private String areaNm;
	
	/** 사업자구분 */
	private String businessType;
	
	/** 창업일 */
	private String foundingDate;
	
	/** 성명 */
	private String appNm;
	
	/** 생년월일 */
	private String birthDate;
	
	/** 휴대폰 */
	private String phone;
	
	/** 이메일 */
	private String email;
	
	/** 최종학력 */
	private String lastEducational;
	
	/** 최종학력명 */
	private String lastEducationalNm;
	
	/** 전공 */
	private String major;
	
	/** 주요경력 */
	private String majorCareer;
	
	/** 여성기업확인서 발급여부 */
	private String womenBusinessCert;
	
	/** 회사명 */
	private String companyNm;
	
	/** 사업자등록번호 */
	private String businessNum;
	
	/** 업종 */
	private String sectors;
	
	/** 업태 */
	private String businessCondition;
	
	/** 법인번호 */
	private String corporationNum;
	
	/** 쥬요산업 */
	private String majorIndustries;
	
	/** 설립일 */
	private String establishmentDate;
	
	/** 전년도 매출 */
	private int previousYearSales;
	
	/** 전전년도 매출 */
	private int previousYearSales2;
	
	/** 전년도 상시근로자수 */
	private int fulltimeWorker;
	
	/** 전전년도 상시근로자수 */
	private int fulltimeWorker2;
	
	/** 투자유치금여부 */
	private String investmentAttractionYn;
	
	/** 투자유치금 */
	private int investmentAttraction;
	
	/** 수출금여부 */
	private String exportMoneyYn;
	
	/** 수출금 */
	private int exportMoney;
	
	/** 자본금 */
	private int capital;
	
	/** 사업장 주소 */
	private String businessAddress;
	
	/** 코드 */
	private String code;
	
	/** 등록자아이디 */
	private String createdId;
	
	/** 등록일자 */
	private String createdDatetime;
	
	/** 수정자아이디 */
	private String updatedId;
	
	/** 수정일자 */
	private String updatedDatetime;
	
}
