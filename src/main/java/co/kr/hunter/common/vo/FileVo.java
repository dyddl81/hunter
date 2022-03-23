package co.kr.hunter.common.vo;

import lombok.Data;

@Data
public class FileVo {

	/** 파일번호 */
    private int fileNo;
    
    /** 아이디 */
    private String codeId;
    
    /** 코드 */
    private String code;
    
    /** 사용자아이디 */
    private String userId;
    
    /** 파일명 */
    private String fileNm;
    
    /** 파일사이즈 */
    private long fileSize;

    /** 파일경로 */
    private String filePath;
    
}
