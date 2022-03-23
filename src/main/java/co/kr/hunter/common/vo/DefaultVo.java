package co.kr.hunter.common.vo;

import lombok.Data;

@Data
public class DefaultVo extends FileVo{

    /** 검색기간 */
    private String searchStdDate = "";
    private String searchEndDate = "";

    /** 검색조건 */
    private String searchCondition = "";
    
    /** popup 검색조건 */
    private String searchPopCondition = "";

    /** 검색키워드 */
    private String searchKeyword = "";
    
    /** Popup 검색키워드 */
    private String searchPopKeyword = "";

    /** 검색사용여부 */
    private String searchUseYn = "";

    /** 현재페이지 */
    private int pageIndex = 1;

    /** 페이지갯수 */
    private int pageUnit = 1;

    /** 페이지사이즈 */
    private int pageSize = 10;

    /** firstIndex */
    private int firstIndex = 1;

    /** lastIndex */
    private int lastIndex = 1;

    /** recordCountPerPage */
    private int recordCountPerPage = 10;
    
    /** row number */
    private int rnum = 0;

    /** total count */
    private int totalCount = 0;

    /** 정렬필드명 */
    private String orderByName;

    /** 정렬 키 */
    private String orderByKey;
    
    /** 가설 종류 조건 */
    private String typeCondition;
    
    /** 파일 유형 */
    private String fileType;
    
}
