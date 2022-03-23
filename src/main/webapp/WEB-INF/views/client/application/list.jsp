<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

		<!-- [s] container -->
		<div id="container">
			<div class="content">
				<div class="inner">
					<div class="app_head">
						<h2>사업 신청내역</h2>
						<p>w-창업패키지 지원 사업의 신청내역, 진행상태 등 상세내용을 확인합니다.</p>
					</div>
					<div class="app_list">
						<div class="tbl_area tbl1">
							<table>
								<caption class="hidden">데이터셋관리</caption>
								<colgroup>
									<col class="tbl1_col1">
									<col class="tbl1_col2">
									<col class="tbl1_col3">
									<col class="tbl1_col4">
									<col class="tbl1_col5">
									<col class="tbl1_col6">
									<col class="tbl1_col7">
									<col class="tbl1_col8">
									<col class="tbl1_col9">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">접수번호</th>
										<th scope="col">과제명</th>
										<th scope="col">지원분야</th>
										<th scope="col">기업명</th>
										<th scope="col">이름</th>
										<th scope="col">휴대폰</th>
										<th scope="col">이메일</th>
										<th scope="col">상태</th>
										<th scope="col">관리</th>
									</tr>
								</thead>
								<tbody>
			                        <c:choose>
			                            <c:when test="${result.size() > 0 }">
			                                <c:forEach items="${result }" var="result" varStatus="status">                                    
	                                        <tr>
	                                            <td class="app_list_num" scope="row">${fn:substring(result.applicationId, 11, 14)}</td>
	                                            <td class="app_list_project"><c:out value="${result.itemNm}"/></td>
	                                            <td class="app_list_type"><c:out value="${result.applicationType eq '1'?'창업기업':'예비창업'}"/></td>
	                                            <td class="app_list_company"><c:out value="${result.companyNm}"/></td>
	                                            <td class="app_list_name"><c:out value="${result.appNm}"/></td>
	                                            <td class="app_list_mobile"><c:out value="${result.phone}"/></td>
	                                            <td class="app_list_email"><c:out value="${result.email}"/></td>
	                                            <td class="<c:out value="${result.step eq '4'?'app_list_end':(result.step eq '2'?'app_list_wait':'app_list_now')}"/> "><c:out value="${(result.step eq '1' ? '작성대기':(result.step eq '4' ?'작성완료':'작성중'))}"/></td>
	                                            <td><a class="list_btn" href="javascript:info('<c:out value="${result.applicationId}"/>')" title="수정">수정</a><a class="list_btn" href="javascript:appDel('<c:out value="${result.applicationId}"/>')" title="삭제">삭제</a></td>
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
					</div>
				</div>
			</div>
		</div>
		<form id="form" name="form" method="GET">
		</form>
		<!-- [e] container -->

<script>

	const token = "${_csrf.token}";
	const header = "${_csrf.headerName}";	

	const url = "<c:url value='/member/application'/>";

	$(document).ready(function() {

		$("#appList").addClass('on');
		
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
     * 리스트
     */
	function list(){
        let frm = document.form;
        frm.action = url;
        frm.submit();
	}

    /**
     * 수정
     */
    function info(applicationId){
        let frm = document.form;
        frm.action = url+'/step2/'+applicationId;
        frm.submit();        
    }
    
    /**
     * 삭제
     */	
	function appDel(applicationId){

        if(!confirm('삭제하시겠습니까?')) {
            return;
        } else {
        	const method = 'DELETE';
			
	        $.ajax({
	            url: url,
	            type: method,
	            dataType: 'html',
	            contentType: "application/json",
	            data: JSON.stringify({"applicationId":applicationId}),
	            crossDomain: true,
	            beforeSend : function(xhr) {
	                xhr.setRequestHeader(header, token);
	            },     
	            success: function(response) {
	                list();
	            },
	            error:function(request,status,error){
	            	alert("error가 발생했습니다.\n관리자에게 문의 바랍니다.");            
	            }
	        });
        }
	}
</script>  
