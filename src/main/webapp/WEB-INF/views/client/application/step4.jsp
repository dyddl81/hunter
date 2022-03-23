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
							<li class="off">3</li>
							<li class="on">4<span class="dv_pc">.대표자 정보</span></li>
						</ul>
					</div>
					<div class="app_cont">
						<aside class="app_sub">
							<h3>대표자 정보</h3>
							<div>(<span class="point"></span>) 표시는 필수 항목입니다.</div>
						</aside>
						<article class="app_data">
							<form id="form" onsubmit="return false;" name="form" method="POST">
								<ul>
									<li>
										<div class="frm">
											<label for="appNm" class="tit">성명</label>
											<input id="appNm" type="text" name="appNm" class="input_basic gr" value="<c:out value="${applicationVo.appNm}"/>" maxlength="20"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="birth" class="tit">생년월일</label>
											<div class="inp_date infit" id="birth">
												<input id="birthYear" type="text" name="birthYear" title="생년" class="input_basic gr" required placeholder="YYYY" maxlength="4" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/><span> / </span>
												<input id="birthMonth" type="text" name="birthMonth" title="월" class="input_basic gr" required placeholder="MM"maxlength="2" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/><span> / </span>
												<input id="birthDay" type="text" name="birthDay" title="일"class="input_basic gr"  required placeholder="DD"maxlength="2" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
											</div>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="phone" class="tit">휴대폰</label>
											<input id="phone" type="text" name="phone" class="input_basic gr"maxlength="11" value="<c:out value="${applicationVo.phone}"/>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="email" class="tit">이메일</label>
											<input id="email" type="text" name="email" class="input_basic gr"maxlength="50" value="<c:out value="${applicationVo.email}"/>"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="majorCareer" class="tit">주요경력<span class="sub_tit">(직장경력)</span></label>
											<textarea name="majorCareer" id="majorCareer"><c:out value="${applicationVo.majorCareer}"/></textarea>
										</div>
									</li>									
									<li>
										<div class="frm infit">
											<label for="app_ability" class="tit">최종학력</label>
											<div class="option" id="app_ability">
												<select id="lastEducational" name="lastEducational" class="option_list" title="최종학력">
													<option class="option_item" value="">선택</option>
													<option class="option_item" value="01">고졸</option>
													<option class="option_item" value="02">대학(2,3년제)</option>
													<option class="option_item" value="03">대학(4년년제)</option>
													<option class="option_item" value="04">석박사</option>
												</select>
											</div>
											<p class="major">
												<input id="major" type="text" name="major"title="전공" class="input_basic"placeholder="전공을 입력해주세요."maxlength="20" value="<c:out value="${applicationVo.major}"/>"/>
											</p>
										</div>
									</li>
								</ul>
								<div class="btnBox step3">
									<span><input type="button" value="다음" title="다음 버튼" onclick="applicationAdd();"/></span>
								</div>
								<input type="hidden" name="applicationId" id="applicationId" value="<c:out value="${applicationVo.applicationId}"/>">
								<input type="hidden" name="birthDate" id="birthDate" value="">
								<input type="hidden" name="step" id="step" value="4">
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

		<c:if test="${!empty applicationVo.birthDate}">
			$("#birthYear").val('${fn:substring(applicationVo.birthDate,0,4) }');
			$("#birthMonth").val('${fn:substring(applicationVo.birthDate,5,7) }');
			$("#birthDay").val('${fn:substring(applicationVo.birthDate,8,10) }');
		</c:if>
			
		<c:if test="${!empty applicationVo.lastEducational}">
			$("#lastEducational").val("<c:out value='${applicationVo.lastEducational}'/>").prop("selected", true);
		</c:if>		
	}); 

    /**
     * 추가 / 수정 
     */
	function applicationAdd(){
    	
		if($("#appNm").val() == ""){
			alert("성명을 입력하세요");
			$('#appNm').focus();
			return;
		}
		
		if($("#birthYear").val() == ""){
			alert("생년월일을 입력하세요");
			$('#birthYear').focus();
			return;
		}
		if($("#birthYear").val().length < 4){
			alert("4자리로 입력하세요");
			$('#birthYear').focus();
			return;
		}
		if($("#birthMonth").val() == ""){
			alert("생년월일을 입력하세요");
			$('#birthMonth').focus();
			return;
		}
		if($("#birthMonth").val().length < 2){
			alert("2자리로 입력하세요");
			$('#birthMonth').focus();
			return;
		}
		if($("#birthDay").val() == ""){
			alert("생년월일을 입력하세요");
			$('#birthDay').focus();
			return;
		}
		if($("#birthDay").val().length < 2){
			alert("2자리로 입력하세요");
			$('#birthDay').focus();
			return;
		}
		if($("#phone").val() == ""){
			alert("휴대폰을 입력하세요");
			$('#phone').focus();
			return;
		}
		if($("#email").val() == ""){
			alert("이메일을 입력하세요");
			$('#email').focus();
			return;
		}
		if($("#email").val() != ""){
			email_regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i; 
			if(!email_regex.test($("#email").val())){ 
				alert("이메일 형식이 아닙니다.");
				return; 
			}
		}
		if($("#majorCareer").val() == ""){
			alert("주요경력을 입력하세요");
			$('#majorCareer').focus();
			return;
		}		
		if($("#lastEducational").val() == ""){
			$('#lastEducational').focus();
			alert("최종학력을 선택하세요");
			return;
		}
		if($("#major").val() == ""){
			alert("전공을 입력하세요");
			$('#major').focus();
			return;
		}

		$('#birthDate').val($("#birthYear").val()+'-'+$("#birthMonth").val()+'-'+$("#birthDay").val());
		
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
            	location.replace(url);        
            },
            error: function(request,status,error){
            	alert("error가 발생했습니다.\n관리자에게 문의 바랍니다.");            	
            }
        });
	}	
</script>  