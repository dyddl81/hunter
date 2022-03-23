package co.kr.hunter.common.util;

import org.springframework.ui.ModelMap;

import co.kr.hunter.common.vo.DefaultVo;

public class Page {

    public static ModelMap setListPage( DefaultVo vo, int size, int listTotalCount, ModelMap model) {
        // paging 처리
        int currPage = vo.getPageIndex();
        int pageUnit = 10;
        int totalCount = 0;
        int totalPage = 1;
        int firstPage = 1;
        int lastPage = 1;

        if(size > 0) {
            totalCount = listTotalCount;
            totalPage = (totalCount /vo.getRecordCountPerPage());
            if((totalCount % vo.getRecordCountPerPage()) > 0) {
                totalPage = totalPage + 1;
            }

            lastPage = (((currPage - 1) / pageUnit) + 1) * pageUnit;
            firstPage = lastPage - 9;
        }

        if(lastPage > totalPage) {
            lastPage = totalPage;
        }

        if(currPage % pageUnit == 1 && currPage > lastPage ) {
            firstPage = currPage;
            lastPage = lastPage + pageUnit;
        }

        model.addAttribute("firstPage", firstPage);
        model.addAttribute("lastPage", lastPage);
        model.addAttribute("currPage", currPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("searchCondition", vo.getSearchCondition());
        model.addAttribute("searchKeyword", vo.getSearchKeyword());

        return model;
    }
	
}
