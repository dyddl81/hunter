<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

		<!-- [s] container -->
		<div id="container">
			<div class="content">
				<div class="inner">
					<div class="app_head">
						<h2 class="dv_pc">신청서 작성하기</h2>
						<ul>
							<li class="on">1<span class="dv_pc">. 약관동의</span></li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
						</ul>
					</div>
					<div class="app_cont">
						<aside class="app_sub">
							<h3>약관 동의</h3>
							<div>(<span class="point"></span>) 표시는 필수 항목입니다.</div>
						</aside>
						<article class="app_data">
							<p class="agree_all">
								<input id="allCheck" type="checkbox" name="allCheck" onclick="allBtn();"/>
								<label for="allCheck" class="chk_label">모든 약관에 동의합니다.</label>
							</p>
							<ul>
								<li>
									<div class="frm">
										<label for="app_radio" class="tit">개인(기업) 정보제공 및 신용조회 동의</label><span class="point"></span>
										<div class="agr radio" id="app_radio">
											<input id="app_type_01" type="radio" name="agr1" class="chk agr_like"/>
											<label for="app_type_01" class="chk_label">동의</label>
											<input id="app_type_02" type="radio" name="agr1" class="chk agr_dislike"/>
											<label for="app_type_02" class="chk_label">비동의</label>
										</div>
										<p class="agrree_more">
											<a href="javascript:void(0)" class="agr_pop1_open">약관보기</a>
										</p>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="app_radio" class="tit">고유식별정보 수집 안내</label><span class="point"></span>
										<div class="agr radio" id="app_radio">
											<input id="app_type_03" type="radio" name="agr2" class="chk agr_like"/>
											<label for="app_type_03" class="chk_label">동의</label>
											<input id="app_type_04" type="radio" name="agr2" class="chk agr_dislike"/>
											<label for="app_type_04" class="chk_label">비동의</label>
										</div>
										<p class="agrree_more">
											<a href="javascript:void(0)" class="agr_pop2_open">약관보기</a>
										</p>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="app_radio" class="tit">개인정보처리 위탁 안내</label><span class="point"></span>
										<div class="agr radio" id="app_radio">
											<input id="app_type_05" type="radio" name="agr3" class="chk agr_like"/>
											<label for="app_type_05" class="chk_label">동의</label>
											<input id="app_type_06" type="radio" name="agr3" class="chk agr_dislike"/>
											<label for="app_type_06" class="chk_label">비동의</label>
										</div>
										<p class="agrree_more">
											<a href="javascript:void(0)" class="agr_pop3_open">약관보기</a>
										</p>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="app_radio" class="tit">개인정보 제3자 정보 제공동의</label><span class="point"></span>
										<div class="agr radio" id="app_radio">
											<input id="app_type_07" type="radio" name="agr4" class="chk agr_like"/>
											<label for="app_type_07" class="chk_label">동의</label>
											<input id="app_type_08" type="radio" name="agr4" class="chk agr_dislike"/>
											<label for="app_type_08" class="chk_label">비동의</label>
										</div>
										<p class="agrree_more">
											<a href="javascript:void(0)" class="agr_pop4_open">약관보기</a>
										</p>
									</div>
								</li>
							</ul>
							<div class="btnBox step1">
								<span><input type="button" value="다음" title="다음 버튼"/></span>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
		<!-- [e] container -->

		<!-- [s] 약관보기 팝업 -->
		<div class="agree_pop agr_1">
			<div class="ag_cont">
				<div class="inner">
					<h4 class="ag_ttl">국고보조금 보조사업 고유식별정보 및 개인정보 제공 안내</h4>
					<div class="ag_text_contents">
						국고보조금 보조사업 고유식별정보 및 개인정보 제공 안내<br><br>
	
						보조금법 제26조의3, 제26조의7에 따라 아래의 정보를 한국재정정보원에 제공합니다.<br>
						 - 제공받는자 : 한국재정정보원<br>
						 - 제공목적 : 보조금정보관리<br>
						 - 제공항목 : 주민번호, 보조사업자명, 보조사업자 주소 (우편번호, 건물관리번호, 상세주소)<br>
						 - 보유기간 : 「보조금법」에 따라 5년 또는 5년 초과
					</div>
					<p><a href="javascript:void(0)" class="agr_close_btn">닫기</a></p>
				</div>
			</div>
		</div>
	
		<div class="agree_pop agr_2">
			<div class="ag_cont">
				<div class="inner">
					<h4 class="ag_ttl">국고보조금 보조사업 고유식별정보 및 개인정보 제공 안내</h4>
					<div class="ag_text_contents">
						국고보조금 보조사업 고유식별정보 및 개인정보 제공 안내<br><br>
	
						보조금법 제26조의3, 제26조의7에 따라 아래의 정보를 한국재정정보원에 제공합니다.<br>
						 - 제공받는자 : 한국재정정보원<br>
						 - 제공목적 : 보조금정보관리<br>
						 - 제공항목 : 주민번호, 보조사업자명, 보조사업자 주소 (우편번호, 건물관리번호, 상세주소)<br>
						 - 보유기간 : 「보조금법」에 따라 5년 또는 5년 초과
					</div>
					<p><a href="javascript:void(0)" class="agr_close_btn">닫기</a></p>
				</div>
			</div>
		</div>
	
		<div class="agree_pop agr_3">
			<div class="ag_cont">
				<div class="inner">
					<h4 class="ag_ttl">국고보조금 보조사업 고유식별정보 및 개인정보 제공 안내</h4>
					<div class="ag_text_contents">
						국고보조금 보조사업 고유식별정보 및 개인정보 제공 안내<br><br>
	
						보조금법 제26조의3, 제26조의7에 따라 아래의 정보를 한국재정정보원에 제공합니다.<br>
						 - 제공받는자 : 한국재정정보원<br>
						 - 제공목적 : 보조금정보관리<br>
						 - 제공항목 : 주민번호, 보조사업자명, 보조사업자 주소 (우편번호, 건물관리번호, 상세주소)<br>
						 - 보유기간 : 「보조금법」에 따라 5년 또는 5년 초과
					</div>
					<p><a href="javascript:void(0)" class="agr_close_btn">닫기</a></p>
				</div>
			</div>
		</div>
	
		<div class="agree_pop agr_4">
			<div class="ag_cont">
				<div class="inner">
					<h4 class="ag_ttl">국고보조금 보조사업 고유식별정보 및 개인정보 제공 안내</h4>
					<div class="ag_text_contents">
						국고보조금 보조사업 고유식별정보 및 개인정보 제공 안내<br><br>
	
						보조금법 제26조의3, 제26조의7에 따라 아래의 정보를 한국재정정보원에 제공합니다.<br>
						 - 제공받는자 : 한국재정정보원<br>
						 - 제공목적 : 보조금정보관리<br>
						 - 제공항목 : 주민번호, 보조사업자명, 보조사업자 주소 (우편번호, 건물관리번호, 상세주소)<br>
						 - 보유기간 : 「보조금법」에 따라 5년 또는 5년 초과
					</div>
					<p><a href="javascript:void(0)" class="agr_close_btn">닫기</a></p>
				</div>
			</div>
		</div>
		<!-- [e] 약관보기 레이어 팝업 -->
	
<script>
	const url = "<c:url value='/member/application'/>";

	$(document).ready(function() {
		$("#appWrite").addClass('on');
		$(".btnBox").find("input[value='다음']").click(function(){
			var chk0 = $("#app_type_01").prop("checked");
			var chk1 = $("#app_type_03").prop("checked");
			var chk2 = $("#app_type_05").prop("checked");
			var chk3 = $("#app_type_07").prop("checked");
			if(chk0==true && chk1==true && chk2==true && chk3==true){
				location.href="step2/N"
			}else if(chk0==false){
				alert("약관에 동의해 주세요.");
			}else if(chk1==false){
				alert("약관에 동의해 주세요.");
			}else if(chk2==false){
				alert("약관에 동의해 주세요.");
			}else if(chk3==false){
				alert("약관에 동의해 주세요.");
			}else{}
		});	
	}); 

	<c:if test="${cnt > 0 }">
		alert('이미 신청하신 내역이 있습니다.');
        location.replace(url);
	</c:if>
</script>  