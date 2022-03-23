<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

		<!-- [s] container -->
		<form:form id="form" modelAttribute="adminApplicationVo" onsubmit="return false;" name="form" method="GET">
		<div id="admin_content">
			<div class="inner">
				<div class="ad_head">
					<h2>전체 신청자 리스트<span class="list_count">총 <c:out value="${totalCount}"/>건</span></h2>
					
					<div class="ad_page">
				        <div class="pg_page infit">
				            <a href="javascript:goPage('${currPage - 1}');" title="페이지 prev" class="pg_btn pg_prev"><img src="/resources/img/ad_pg_prev.png" alt="페이지 prev"></a>
				            <a href="#none" title="페이지" class="pg_num"><fmt:formatNumber value="${currPage }" pattern="#,###" /></a>
				            <span>/</span>
				            <a href="#none" title="페이지" class="pg_total"><fmt:formatNumber value="${totalPage }" pattern="#,###" /></a>
				            <a href="javascript:goPage('${currPage + 1}');" title="페이지 next" class="pg_btn pg_next"><img src="/resources/img/ad_pg_next.png" alt="페이지 next"></a>
				        </div>					
					</div>
					<div class="local_sch local_sch1">
						<fieldset>
							<legend>리스트 검색</legend>
							<label for="searchKeyword" class="sound_only">검색어</label>
							<form:input path="searchKeyword" type="text" onkeyup="enterkey();return false;" placeholder="검색어를 입력해주세요."  class="input_sch" />
							<button type="button" onclick="list();">검색</button>
						</fieldset>
					</div>
				</div>
				<div class="ad_cont">
						<fieldset>
							<legend>전체 신청자 리스트</legend>
							<div class="btn_fixed_top infit">
								<button type="button" class="ad_list_del" onclick="appDel();">삭제</button>
								<a href="#none" title="신청서 다운로드" class="ad_list_dow"  onclick="excelDown();" >신청서 다운로드</a>
							</div>
							<div class="line_num">
								<span class="line_txt">페이지당</span>
			                	<form:select path="recordCountPerPage" class="option_list" title="라인 갯수" onchange="goPage(1)">
									<form:option class="option_item" value="10">10</form:option>
									<form:option class="option_item" value="20">20</form:option>
									<form:option class="option_item" value="50">50</form:option>
									<form:option class="option_item" value="100">100</form:option>
								</form:select>								
								<span class="line_txt">라인씩</span>
							</div>
							<div class="tbl_wrap tbl2">
								<table>
									<caption class="hidden">전체 신청자 리스트</caption>
									<colgroup>
										<col class="tbl2_col1">
										<col class="tbl2_col2">
										<col class="tbl2_col3">
										<col class="tbl2_col4">
										<col class="tbl2_col5">
										<col class="tbl2_col6">
										<col class="tbl2_col7">
										<col class="tbl2_col8">
										<col class="tbl2_col9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">
												<input id="chkall" type="checkbox" name="chkall">
												<label for="chkall"></label>
											</th>
											<th scope="col">접수번호</th>
											<th scope="col">과제명</th>
											<th scope="col">지원분야</th>
											<th scope="col">기업명</th>
											<th scope="col">이름</th>
											<th scope="col">휴대폰</th>
											<th scope="col">이메일</th>
											<th scope="col">상태</th>
										</tr>
									</thead>
									<tbody>
				                        <c:choose>
				                            <c:when test="${result.size() > 0 }">
				                                <c:forEach items="${result }" var="result" varStatus="status">                                    
		                                        <tr>
													<td class="app_list_chk" scope="row">
														<input id="chk_<c:out value="${status.count}"/>" type="checkbox" name="dataChk" value="<c:out value="${result.applicationId}"/>" >
														<label for="chk_<c:out value="${status.count}"/>"></label>
													</td>
													<td style="cursor: pointer" onclick="javascript:info('<c:out value="${result.applicationId}"/>')" class="app_list_num">${fn:substring(result.applicationId, 11, 14)}</td>
													<td class="app_list_project"><c:out value="${result.itemNm}"/></td>
													<td class="app_list_type"><c:out value="${result.applicationType eq '1'?'창업기업':'예비창업'}"/></td>
													<td class="app_list_company"><c:out value="${result.companyNm}"/></td>
													<td class="app_list_company"><c:out value="${result.appNm}"/></td>
													<td class="app_list_mobile"><c:out value="${result.phone}"/></td>
													<td class="app_list_email"><c:out value="${result.email}"/></td>
													<td class="app_list_now"><c:out value="${(result.step eq '1' ? '작성대기':(result.step eq '4' ?'작성완료':'작성중'))}"/></td>		    
		                                        </tr>
				                                </c:forEach>
				                            </c:when>
				                            <c:otherwise>
				                                <tr>
				                                    <td colspan="9" align="center" >신청내역이 없습니다.</td>
				                                </tr>
				                            </c:otherwise>
				                        </c:choose>    
									</tbody>
								</table>
							</div>
						</fieldset>
				</div>
			</div>
		</div>
		<input type="hidden" name="_csrf" value="<c:out value="${_csrf.token}" />">
		<form:hidden path="pageIndex"/>
		<form:hidden path="arrCheckId"/>
        </form:form>
		<!-- [e] container -->

<script>

	const token = "${_csrf.token}";
	const header = "${_csrf.headerName}";	

	const url = "<c:url value='/admin/application'/>";

	$(document).ready(function() {

		$.fn.serializeObject = function () {
		  'use strict';
		  let result = {};
		  let extend = function (i, element) {
		    let node = result[element.name];
		    if ('undefined' !== typeof node && node !== null) {
		      if ($.isArray(node)) {
		        node.push(element.value);
		      } else {
		        result[element.name] = [node, element.value];
		      }
		    } else {
		      result[element.name] = element.value;
		    }
		  };
		
		  $.each(this.serializeArray(), extend);
		  return result;
		};
		
	});  
	
    /**
     * 목록 조회
     */
    function goPage(page) {
        page = Number(page);
        if(page < 1) {
            page = 1;
        }

        if(page > Number('<c:out value="${totalPage}"/>')) {
            page = Number('<c:out value="${totalPage}"/>');
        }

        let frm = document.form;
        frm.pageIndex.value = page;
        frm.action = url;
        frm.submit();
    }	
		
    /**
     * 엔터키 이벤트
     */
	function enterkey() { 
		if (window.event.keyCode == 13) { 
			list();
		} 
	}

    /**
     * 리스트
     */
	function list(){
        let frm = document.form;
        frm.pageIndex.value = '1';
        frm.action = url;
        frm.submit();
	}

    /**
     * 상세
     */
    function info(applicationId){
        let frm = document.form;
        frm.method= 'get';
        frm.action = url+'/detail/'+applicationId;
        frm.submit();        
    }
    
    /**
     * 삭제
     */	
	function appDel(){
        let ids = [];
        if($("input[name='dataChk']:checked").length < 1) {
            alert('선택 항목이 없습니다.');
            return;
        }
        $("input[name='dataChk']:checked").each(function (i) {
            ids.push($(this).val());
        });
        if(!confirm('삭제하시겠습니까?')) {
            return;
        } else {
            const data = JSON.stringify(ids);
            $.ajax({
                url: url,
                type: 'DELETE',
                dataType: 'json',
                contentType: "application/json",
                data: data,
                crossDomain: true,
                beforeSend : function(xhr) {
                    xhr.setRequestHeader(header, token);
                },                
                success: function(response) {
          	      list();
                },
                error: function(request,status,error){
                	alert("error가 발생했습니다.\n관리자에게 문의 바랍니다.");            	
                }
            });
        }
	}

	function excelDown(){

		let ids = [];
        if($("input[name='dataChk']:checked").length < 1) {
            alert('선택 항목이 없습니다.');
            return;
        }		
        $("input[name='dataChk']:checked").each(function (i) {
            ids.push($(this).val());
        });
	    
	    var f = document.form;
	    f.method = 'post';
	    f.arrCheckId.value = ids;
		f.action = url+'/excel';
		f.submit();
	}
	
</script>  
