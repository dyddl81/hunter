package co.kr.hunter.admin.domain;

import co.kr.hunter.common.vo.DefaultVo;
import lombok.Data;

@Data
public class AdminProjectVo extends DefaultVo {

	/** 프로젝트번호 */		
	private int projectNo;
	
	/** 회사명 */		
	private String companyNm;
	
	/** 담당자 성명 */		
	private String pName;
	
	/** 담당자 이메일 */		
	private String pEmail;
	
	/** 담당자 연락처 */		
	private String pPhone;
	
	/** 프로젝트명 */		
	private String projectNm;
	
	/** 프로젝트 시작 협의가능여부 */		
	private String consultationYn;
	
	/** 시작일 */		
	private String startDate;
	
	/** 종료일 */		
	private String endDate;
	
	/** 프로젝트 단위예산 */		
	private String unit;
	
	/** 예산 최소금액 */		
	private int minimumAmount;
	
	/** 예산 최대금액 */		
	private int maximumAmount;
	
	/** 금무방식 */		
	private String workingCode;
	
	/** 상세근무지 */		
	private String address;
	
	/** 현재진행사항 */		
	private String progressContent;
	
	/** 담당 업무 */		
	private String mainContent;
	
	/** 업무범위 */		
	private String workContent;
	
	/** 기타 전달사항 또는 우대사항 */		
	private String etcContent;
	
	/** 필요인력 */		
	private int personCnt;
	
	/** 연차시작 */		
	private int workStart;
	
	/** 연차종료 */		
	private int workEnd;
	
	/** 프로젝트 상태 */		
	private String state;
	
	/** 프로젝트 진행개수 */		
	private int stateStartCnt;
	
	/** 프로젝트 종료개수 */		
	private int stateEndCnt;
	
	/** 확인유무 */		
	private String viewYn;
	
	/** 등록자 아이디 */		
	private String createdId;

	/** 등록일자 */		
	private String createdDatetime;
	
	/** 수정자 아이디 */		
	private String updatedId;
	
	/** 수정일자 */	
	private String updatedDatetime;
	
}
