<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

		<!-- [s] container -->
		<div id="container">
			<div class="content">
				<div class="inner">
					<div class="app_head">
		            	<h2 class="dv_pc">${applicationVo.view eq 'N'? '신청서 작성하기':'신청서 수정하기'}</h2>		
						<ul>
							<li class="off">1</li>
							<li class="off">2</li>
							<li class="on">3<span class="dv_pc">.회사 정보</span></li>
							<li>4</li>
						</ul>
					</div>
					<div class="app_cont">
						<aside class="app_sub">
							<h3>회사 정보</h3>
							<div>(<span class="point"></span>) 표시는 필수 항목입니다.</div>
						</aside>
						<article class="app_data">
							<form id="form" onsubmit="return false;" name="form" method="POST">
								<ul>
									<li>
										<div class="frm">
											<label for="companyNm" class="tit">회사명</label>
											<input id="companyNm" type="text" name="companyNm" class="input_basic gr"maxlength="20" value="<c:out value="${applicationVo.companyNm}"/>"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="business" class="tit">사업자 등록번호</label>
											<div class="inp_date inp_biz infit" id="business">
												<input id="biz_num1" type="text" name="biz_num1" title="사업자등록번호 앞자리" class="input_basic gr" maxlength="3" required autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/><span>-</span>
												<input id="biz_num2" type="text" name="biz_num2" title="사업자등록번호 가운데" class="input_basic gr" maxlength="2" required autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/><span>-</span>
												<input id="biz_num3" type="text" name="biz_num3" title="사업자등록번호 맨뒤" class="input_basic gr" maxlength="5" required autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</div>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="business_type" class="tit">업종 / 업태<span class="sub_tit">*예비 창업자는 기재하지 않음</span></label>
											<div class="inp_date inp_type infit" id="business_type">
												<input id="sectors" type="text" name="sectors" title="업종" class="input_basic gr" value="<c:out value="${applicationVo.sectors}"/>" required/><span>/</span>
												<input id="businessCondition" type="text" name="businessCondition" title="업태" class="input_basic gr" value="<c:out value="${applicationVo.businessCondition}"/>" required/>
											</div>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="corporationNum" class="tit">법인번호</label>
											<input id="corporationNum" type="text" name="corporationNum" class="input_basic gr"maxlength="13" value="<c:out value="${applicationVo.corporationNum}"/>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="majorIndustries" class="tit">주생산품</label>
											<input id="majorIndustries" type="text" name="majorIndustries" class="input_basic gr"maxlength="50" value="<c:out value="${applicationVo.majorIndustries}"/>"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="est_date" class="tit">설립일<span class="sub_tit">*사업개시일을 기준으로 작성</span></label>
											<div class="inp_date infit" id="est_date">
												<input id="estYear" type="text" name="estYear" title="설립 년도" class="input_basic" required placeholder="YYYY" maxlength="4" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/><span>/</span>
												<input id="estMonth" type="text" name="estMonth" title="설립 월" class="input_basic" required placeholder="MM"maxlength="2" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/><span>/</span>
												<input id="estDay" type="text" name="estDay" title="설립 일"class="input_basic"  required placeholder="DD"maxlength="2" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</div>
										</div>
									</li>
									<li>
										<div class="frm infit">
											<p class="tit">전년도 매출<span class="sub_tit">(천원)</span></p>
											<p class="year_type">
												<label for="previousYearSales">2021년도</label>
												<input id="previousYearSales" type="text" name="previousYearSales" value="<c:out value="${applicationVo.previousYearSales}"/>" class="input_basic gr"maxlength="20" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</p>
											<p class="year_type">
												<label for="previousYearSales2">2020년도</label>
												<input id="previousYearSales2" type="text" name="previousYearSales2" value="<c:out value="${applicationVo.previousYearSales2}"/>" class="input_basic gr"maxlength="20" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</p>
										</div>
									</li>
									<li>
										<div class="frm infit">
											<p class="tit">상시 근로자수<span class="sub_tit">(명)</span></p>
											<p class="year_type">
												<label for="fulltimeWorker">2021년도</label>
												<input id="fulltimeWorker" type="text" name="fulltimeWorker" value="<c:out value="${applicationVo.fulltimeWorker}"/>" class="input_basic gr"maxlength="20" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</p>
											<p class="year_type">
												<label for="fulltimeWorker2">2021년도</label>
												<input id="fulltimeWorker2" type="text" name="fulltimeWorker2" value="<c:out value="${applicationVo.fulltimeWorker2}"/>" class="input_basic gr"maxlength="20" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</p>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="ret_fund" class="tit">투자유치금<span class="sub_tit">(천원)</span></label>
											<div class="radio" id="ret_fund">
												<input id="investmentAttractionY" type="radio" name="investmentAttractionYn" value="Y" <c:out value="${applicationVo.investmentAttractionYn eq 'Y'?'checked':''}"/> class="chk have"/>
												<label for="investmentAttractionY" class="chk_label">여</label>
												<input id="investmentAttractionN" type="radio" name="investmentAttractionYn" value="N" <c:out value="${applicationVo.investmentAttractionYn eq 'N'?'checked':''}"/> class="chk not"/>
												<label for="investmentAttractionN" class="chk_label">부</label>
											</div>
											<p class="entry_box" id="investmentAttractionView">
												<input id="investmentAttraction" type="text" name="investmentAttraction" value="<c:out value="${applicationVo.investmentAttraction}"/>" class="input_basic gr" title="투자유치금" maxlength="20" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</p>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="export" class="tit">수출금<span class="sub_tit">(천원)</span></label>
											<div class="radio" id="export">
												<input id="exportMoneyY" type="radio" name="exportMoneyYn" value="Y" <c:out value="${applicationVo.exportMoneyYn eq 'Y'?'checked':''}"/> class="chk have"/>
												<label for="exportMoneyY" class="chk_label">여</label>
												<input id="exportMoneyN" type="radio" name="exportMoneyYn" value="N" <c:out value="${applicationVo.exportMoneyYn eq 'N'?'checked':''}"/> class="chk not"/>
												<label for="exportMoneyN" class="chk_label">부</label>
											</div>
											<p class="entry_box" id="expoertMoneyView">
												<input id="exportMoney" type="text" name="exportMoney" value="<c:out value="${applicationVo.exportMoney}"/>" class="input_basic gr" title="수출금" maxlength="20" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</p>
										</div>
									</li>									
									<li>
										<div class="frm">
											<label for="capital" class="tit">자본금<span class="sub_tit">(천원)</span></label>
											<input id="capital" type="text" name="capital" class="input_basic gr"maxlength="20" value="<c:out value="${applicationVo.capital}"/>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
										</div>
									</li>									
									<li>
										<div class="frm">
											<label for="businessAddress" class="tit">사업장 주소<span class="sub_tit">*예비창업자는 주민등록본 주소 기재</span></label>
											<input id="businessAddress" type="text" name="businessAddress" class="input_basic" value="<c:out value="${applicationVo.businessAddress}"/>" placeholder="사업장 주소를 입력해주세요."maxlength="200"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="app_radio" class="tit">여성기업확인서 발급 여부</label>
											<div class="radio" id="app_radio">
												<input id="womenBusinessCert_01" type="radio" name="womenBusinessCert" value="Y" <c:out value="${applicationVo.womenBusinessCert eq 'Y'?'checked':''}"/> class="chk"/>
												<label for="womenBusinessCert_01" class="chk_label">여</label>
												<input id="womenBusinessCert_02" type="radio" name="womenBusinessCert" value="N" <c:out value="${applicationVo.womenBusinessCert eq 'N'?'checked':''}"/> class="chk"/>
												<label for="womenBusinessCert_02" class="chk_label">부</label>
											</div>
										</div>
									</li>									
								</ul>
								<div class="btnBox step4">
									<span><input type="button" value="신청서 제출" title="신청서 제출" onclick="applicationAdd();"/></span>
								</div>
								<input type="hidden" name="applicationId" id="applicationId" value="<c:out value="${applicationVo.applicationId}"/>">
								<input type="hidden" name="businessNum" id="businessNum" value="">
								<input type="hidden" name="establishmentDate" id="establishmentDate" value="">
								<input type="hidden" name="step" id="step" value="<c:out value="${!empty applicationVo.step? applicationVo.step:'3'}"/>">
							</form>
						</article>
					</div>
				</div>
			</div>
		</div>
		<!-- [e] container -->

<script>

	const token = "${_csrf.token}";
	const header = "${_csrf.headerName}";	

	const url = "<c:url value='/member/application'/>";
	
	$(document).ready(function() {

		$("#appWrite").addClass('on');
		
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

		<c:if test="${!empty applicationVo.businessNum}">
			$("#biz_num1").val('${fn:substring(applicationVo.businessNum,0,3) }');
			$("#biz_num2").val('${fn:substring(applicationVo.businessNum,4,6) }');
			$("#biz_num3").val('${fn:substring(applicationVo.businessNum,7,12) }');
		</c:if>
		<c:if test="${!empty applicationVo.establishmentDate}">
			$("#estYear").val('${fn:substring(applicationVo.establishmentDate,0,4) }');
			$("#estMonth").val('${fn:substring(applicationVo.establishmentDate,5,7) }');
			$("#estDay").val('${fn:substring(applicationVo.establishmentDate,8,10) }');
		</c:if>
		<c:if test="${!empty result.investmentAttractionYn}">
			<c:choose>
				<c:when test="${result.investmentAttractionYn eq 'Y'}">
					$("#investmentAttractionView").show();
				</c:when>
				<c:otherwise>
					$("#investmentAttractionView").hide();
				</c:otherwise>
			</c:choose>
		</c:if>
		<c:if test="${!empty result.expoertMoneyYn}">
			<c:choose>
				<c:when test="${result.expoertMoneyYn eq 'Y'}">
					$("#expoertMoneyView").show();
				</c:when>
				<c:otherwise>
					$("#expoertMoneyView").hide();
				</c:otherwise>
			</c:choose>		
		</c:if>		
	}); 

    /**
     * 추가 / 수정 
     */
	function applicationAdd(){
    	
		if($("#companyNm").val() == ""){
			alert("회사명을 입력하세요");
			$('#companyNm').focus();
			return;
		}
		if($("#biz_num1").val() == ""){
			alert("사업자 등록번호를 입력하세요");
			$('#biz_num1').focus();
			return;
		}
		if($("#biz_num2").val() == ""){
			alert("사업자 등록번호를 입력하세요");
			$('#biz_num2').focus();
			return;
		}
		if($("#biz_num3").val() == ""){
			alert("사업자 등록번호를 입력하세요");
			$('#biz_num3').focus();
			return;
		}
		if($("#corporationNum").val() == ""){
			alert("법인번호를 입력하세요");
			$('#corporationNum').focus();
			return;
		}
		if($("#majorIndustries").val() == ""){
			alert("주생산품을 입력하세요");
			$('#majorIndustries').focus();
			return;
		}
		if($("#estYear").val() == ""){
			alert("설립일을 입력하세요");
			$('#estYear').focus();
			return;
		}
		if($("#estYear").val().length < 4){
			alert("4자리로 입력하세요");
			$('#estYear').focus();
			return;
		}
		if($("#estMonth").val() == ""){
			alert("설립일을 입력하세요");
			$('#estMonth').focus();
			return;
		}
		if($("#estMonth").val().length < 2){
			alert("2자리로 입력하세요");
			$('#estMonth').focus();
			return;
		}
		if($("#estDay").val() == ""){
			alert("설립일을 입력하세요");
			$('#estDay').focus();
			return;
		}
		if($("#estDay").val().length < 2){
			alert("2자리로 입력하세요");
			$('#estDay').focus();
			return;
		}
		if($("#previousYearSales").val() == ""){
			alert("전년도 매출을 입력하세요");
			$('#previousYearSales').focus();
			return;
		}	
		if($("#previousYearSales2").val() == ""){
			alert("전년도 매출을 입력하세요");
			$('#previousYearSales2').focus();
			return;
		}	
		if($("#fulltimeWorker").val() == ""){
			alert("상시 근로자수를 입력하세요");
			$('#fulltimeWorker').focus();
			return;
		}	
		if($("#fulltimeWorker2").val() == ""){
			alert("상시 근로자수를 입력하세요");
			$('#fulltimeWorker2').focus();
			return;
		}	
		if(!$('input:radio[name=investmentAttractionYn]').is(':checked')){
			alert("투자유치금 여부를 선택하세요");
			$('#investmentAttractionY').focus();
			return;
		}	
		if($("input:radio[name=investmentAttractionYn]:checked").val() == 'Y'){

			if($("#investmentAttraction").val() == ""){
				alert("투자유치금을 입력하세요");
				$('#investmentAttraction').focus();
				return;
			}
						
		}		
		if(!$('input:radio[name=exportMoneyYn]').is(':checked')){
			alert("수출금을 입력하세요");
			$('#exportMoneyY').focus();
			return;
		}	
		if($("input:radio[name=exportMoneyYn]:checked").val() == 'Y'){

			if($("#exportMoney").val() == ""){
				alert("경력단절 사유를 입력하세요");
				$('#exportMoney').focus();
				return;
			}
						
		}						
		if($("#capital").val() == ""){
			alert("자본금를 입력하세요");
			$('#capital').focus();
			return;
		}			
		if($("#businessAddress").val() == ""){
			alert("사업장 주소를 입력하세요");
			$('#businessAddress').focus();
			return;
		}
		if(!$('input:radio[name=womenBusinessCert]').is(':checked')){
			alert("여성기업확인서 발급 여부를 선택하세요");
			$('#womenBusinessCert_01').focus();
			return;
		}		
		$('#businessNum').val($("#biz_num1").val()+'-'+$("#biz_num2").val()+'-'+$("#biz_num3").val());
		$('#establishmentDate').val($("#estYear").val()+'-'+$("#estMonth").val()+'-'+$("#estDay").val());
		
		const method = 'PUT';
		const data = JSON.stringify($('#form').serializeObject());
		console.log(data);
		
        $.ajax({
            url: url,
            type: method,
            dataType: 'json',
            contentType: "application/json",
            data: data,
            crossDomain: true,
            beforeSend : function(xhr) {
                xhr.setRequestHeader(header, token);
            },             
            success: function(response) {
            	<c:choose>
	            	<c:when test="${applicationVo.view eq 'N'}">
		                location.replace(url+'/step4/N/<c:out value="${applicationVo.applicationId}"/>');
	            	</c:when>
	            	<c:otherwise>
		                location.replace(url+'/step4/U/<c:out value="${applicationVo.applicationId}"/>');
	            	</c:otherwise>
	        	</c:choose>                    
            },
            error: function(request,status,error){
            	alert("error가 발생했습니다.\n관리자에게 문의 바랍니다.");            	
            }
        });
	}	
</script>  

