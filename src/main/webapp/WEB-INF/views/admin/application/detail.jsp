<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../page_init.jsp" %>

		<!-- [s] container -->
		<div id="admin_content">
			<div class="inner">
				<div class="ad_head">
					<h2>신청자 상세정보</h2>
					<p class="ad_list_a"><a href="/admin/application" title="전체 신청자 리스트 목록">목록</a></p>
				</div>
				<div class="ad_cont">
					<form action="#none" method="post">
						<fieldset class="detail_list">
							<legend>01. 제출서류</legend>
							<h3 class="docu_tit">01. 제출서류</h3>
							<ul class="docu_down">
								<c:forEach items="${fileResult}" var="result" varStatus="status">     
								<li>
									<a href="/filedownload?fileNo=<c:out value="${result.fileNo}"/>"><c:out value="${result.fileNm}"/></a>
								</li>
								</c:forEach>
							</ul>
							<!-- p>
								<a href="#none" title="제출서류 다운로드" class="ad_list_dow ad_docu_down" download>다운로드</a>
							</p-->
						</fieldset>
						<fieldset class="detail_list">
							<legend>02. 지역정보</legend>
							<h3 class="docu_tit">02. 지역정보</h3>
							<ul class="detail_area">
								<li>
									<div class="frm">
										<label for="app_number" class="tit">접수번호</label>
										<input id="app_number" type="text" name="app_number" value="${fn:substring(result.applicationId, 11, 14)}" class="input_basic gr"  readonly/>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="app_radio" class="tit">신청분야<span class="sub_tit">(중복선택불가)</span><span class="point"></span></label>
										<div class="radio" id="app_radio">
											<input id="application_type_01" type="radio" name="applicationType" class="chk" <c:out value="${result.applicationType eq '1'?'checked':''}"/> value="1"/>
											<label for="application_type_01" class="chk_label">창업기업</label>
											<input id="application_type_02" type="radio" name="applicationType" class="chk" <c:out value="${result.applicationType eq '2'?'checked':''}"/> value="2"/>
											<label for="application_type_02" class="chk_label">예비창업</label>
										</div>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="itemNm" class="tit">아이템명</label>
										<input id="itemNm" type="text" name="itemNm" value="<c:out value="${result.itemNm}"/>" class="input_basic"placeholder="아이템명을 입력해주세요."  maxlength="50"/>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="app_radio" class="tit">사업자구분</label>
										<div class="radio" id="app_radio">
											<input id="businessType_01" type="radio" name="businessType" class="chk" value="1" <c:out value="${result.businessType eq '1'?'checked':''}"/>/>
											<label for="businessType_01" class="chk_label">예비창업자</label>
											<input id="businessType_02" type="radio" name="businessType" class="chk" value="2" <c:out value="${result.businessType eq '2'?'checked':''}"/>/>
											<label for="businessType_02" class="chk_label">개인사업자</label>
											<input id="businessType_03" type="radio" name="businessType" class="chk" value="3" <c:out value="${result.businessType eq '3'?'checked':''}"/>/>
											<label for="businessType_03" class="chk_label">법인사업자</label>
										</div>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="app_date" class="tit">창업일</label>
										<div class="inp_date date infit" id="app_date">
											<input id="foundingYear" type="text" name="foundingYear" title="창업 년도" class="input_basic" required placeholder="YYYY" maxlength="4" autocomplete="off"/><span> / </span>
											<input id="foundingMonth" type="text" name="foundingMonth" title="창업 월" class="input_basic" required placeholder="MM"maxlength="2" autocomplete="off"/><span> / </span>
											<input id="foundingDay" type="text" name="foundingDay" title="창업 일"class="input_basic"  required placeholder="DD"maxlength="2" autocomplete="off"/>
										</div>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="app_area" class="tit">지역<span class="point"></span></label>
										<div class="option" id="app_area">
											<select id="area" name="area" class="option_list" title="지역">
												<option class="option_item" value="">선택</option>
												<option class="option_item" value="01">서울</option>
												<option class="option_item" value="02">경기</option>
												<option class="option_item" value="03">인천</option>
												<option class="option_item" value="04">대전</option>
												<option class="option_item" value="05">세종</option>
												<option class="option_item" value="06">충북</option>
												<option class="option_item" value="07">충남</option>
												<option class="option_item" value="08">광주</option>
												<option class="option_item" value="09">전남</option>
												<option class="option_item" value="10">전북</option>
												<option class="option_item" value="11">대구</option>
												<option class="option_item" value="12">경북</option>
												<option class="option_item" value="13">부산</option>
												<option class="option_item" value="14">울산</option>
												<option class="option_item" value="15">경남</option>
												<option class="option_item" value="16">강원</option>
												<option class="option_item" value="17">제주</option>
											</select>
										</div>
									</div>
								</li>
							</ul>
						</fieldset>
						<fieldset class="detail_list">
							<legend>03. 회사정보</legend>
							<h3 class="docu_tit">03. 회사정보</h3>
								<ul class="detail_area">
									<li>
										<div class="frm">
											<label for="companyNm" class="tit">회사명</label>
											<input id="companyNm" type="text" name="companyNm" class="input_basic gr"maxlength="20" value="<c:out value="${result.companyNm}"/>"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="business" class="tit">사업자 등록번호</label>
											<div class="inp_date inp_biz infit" id="business">
												<input id="biz_num1" type="text" name="biz_num1" title="사업자등록번호 앞자리" class="input_basic gr" required autocomplete="off"/><span>-</span>
												<input id="biz_num2" type="text" name="biz_num2" title="사업자등록번호 가운데" class="input_basic gr" required autocomplete="off"/><span>-</span>
												<input id="biz_num3" type="text" name="biz_num3" title="사업자등록번호 맨뒤" class="input_basic gr" required autocomplete="off"/>
											</div>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="corporationNum" class="tit">법인번호</label>
											<input id="corporationNum" type="text" name="corporationNum" value="<c:out value="${result.corporationNum}"/>" class="input_basic gr"maxlength="20"/>
										</div>
									</li>									
									<li>
										<div class="frm">
											<label for="business_type" class="tit">업종 / 업태<span class="sub_tit">*예비 창업자는 기재하지 않음</span></label>
											<div class="inp_date inp_type infit" id="business_type">
												<input id="sectors" type="text" name="sectors" title="업종" class="input_basic gr" value="<c:out value="${result.sectors}"/>" required/><span>/</span>
												<input id="businessCondition" type="text" name="businessCondition" title="업종" class="input_basic gr" value="<c:out value="${result.businessCondition}"/>" required/>
											</div>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="majorIndustries" class="tit">주생산품</label>
											<input id="majorIndustries" type="text" name="majorIndustries" class="input_basic gr" value="<c:out value="${result.majorIndustries}"/>" maxlength="50"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="est_date" class="tit">설립일<span class="sub_tit">*사업개시일을 기준으로 작성</span></label>
											<div class="inp_date date infit" id="est_date">
												<input id="estYear" type="text" name="est_year" title="설립 년도" class="input_basic" required placeholder="YYYY" maxlength="4" autocomplete="off"/><span>/</span>
												<input id="estMonth" type="text" name="est_month" title="설립 월" class="input_basic" required placeholder="MM"maxlength="2" autocomplete="off"/><span>/</span>
												<input id="estDay" type="text" name="est_day" title="설립 일"class="input_basic"  required placeholder="DD"maxlength="2" autocomplete="off"/>
											</div>
										</div>
									</li>
									<li>
										<div class="frm infit">
											<p class="tit">전년도 매출<span class="sub_tit">(천원)</span></p>
											<p class="year_type">
												<label for="previousYearSales">2021년도</label>
												<input id="previousYearSales" type="text" name="previousYearSales" value="<c:out value="${result.previousYearSales}"/>" class="input_basic gr"maxlength="20"/>
											</p>
											<p class="year_type">
												<label for="previousYearSales2">2020년도</label>
												<input id="previousYearSales2" type="text" name="previousYearSales2" value="<c:out value="${result.previousYearSales2}"/>" class="input_basic gr"maxlength="20"/>
											</p>
										</div>
									</li>
									<li>
										<div class="frm infit">
											<p class="tit">상시 근로자수<span class="sub_tit">(명)</span></p>
											<p class="year_type">
												<label for="fulltimeWorker">2021년도</label>
												<input id="fulltimeWorker" type="text" name="fulltimeWorker" value="<c:out value="${result.fulltimeWorker}"/>" class="input_basic gr"maxlength="20"/>
											</p>
											<p class="year_type">
												<label for="fulltimeWorker2">2020년도</label>
												<input id="fulltimeWorker2" type="text" name="fulltimeWorker2" value="<c:out value="${result.fulltimeWorker2}"/>" class="input_basic gr"maxlength="20"/>
											</p>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="ret_fund" class="tit">투자유치금<span class="sub_tit">(천원)</span></label>
											<div class="radio" id="ret_fund">
												<input id="investmentAttractionY" type="radio" name="investmentAttractionYn" class="chk have" <c:out value="${result.investmentAttractionYn eq 'Y'?'checked':''}"/>/>
												<label for="investmentAttractionY" class="chk_label">여</label>
												<input id="investmentAttractionN" type="radio" name="investmentAttractionYn" class="chk not" <c:out value="${result.investmentAttractionYn eq 'N'?'checked':''}"/>/>
												<label for="investmentAttractionN" class="chk_label">부</label>
											</div>
											<p class="entry_box" id="investmentAttractionView">
												<input id="investmentAttraction" type="text" name="investmentAttraction" value="<c:out value="${result.investmentAttraction}"/>" class="input_basic gr" title="투자유치금" maxlength="20"/>
											</p>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="export" class="tit">수출금<span class="sub_tit">(천원)</span></label>
											<div class="radio" id="export">
												<input id="exportMoneyY" type="radio" name="exportMoneyYn" class="chk have" value="Y" <c:out value="${result.exportMoneyYn eq 'Y'?'checked':''}"/>/>
												<label for="exportMoneyY" class="chk_label">여</label>
												<input id="exportMoneyN" type="radio" name="exportMoneyYn" class="chk not" value="N" <c:out value="${result.exportMoneyYn eq 'N'?'checked':''}"/>/>
												<label for="exportMoneyN" class="chk_label">부</label>
											</div>
											<p class="entry_box" id="expoertMoneyView">
												<input id="exportMoney" type="text" name="exportMoney" value="<c:out value="${result.exportMoney}"/>" class="input_basic gr" title="수출금" maxlength="20"/>
											</p>
										</div>
									</li>									
									<li>
										<div class="frm">
											<label for="capital" class="tit">자본금<span class="sub_tit">(천원)</span></label>
											<input id="capital" type="text" name="capital" value="<c:out value="${result.capital}"/>" class="input_basic gr"maxlength="20"/>
										</div>
									</li>									
									<li>
										<div class="frm">
											<label for="businessAddress" class="tit">사업장 주소<span class="sub_tit">*예비창업자는 주민등록본 주소 기재</span></label>
											<input id="businessAddress" type="text" name="businessAddress" value="<c:out value="${result.businessAddress}"/>" class="input_basic"placeholder="사업장 주소를 입력해주세요."maxlength="50"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="app_radio" class="tit">여성기업확인서 발급 여부</label>
											<div class="radio" id="app_radio">
												<input id="womenBusinessCert_01" type="radio" name="womenBusinessCert" value="Y" <c:out value="${result.womenBusinessCert eq 'Y'?'checked':''}"/> class="chk"/>
												<label for="womenBusinessCert_01" class="chk_label">여</label>
												<input id="womenBusinessCert_02" type="radio" name="womenBusinessCert" value="N" <c:out value="${result.womenBusinessCert eq 'N'?'checked':''}"/> class="chk"/>
												<label for="womenBusinessCert_02" class="chk_label">부</label>
											</div>
										</div>
									</li>									
								</ul>
						</fieldset>						
						<fieldset class="detail_list">
							<legend>04. 대표자 인적사항</legend>
							<h3 class="docu_tit">04. 대표자 인적사항</h3>
							<ul class="detail_area">
								<li>
									<div class="frm">
										<label for="appNm" class="tit">성명</label>
										<input id="appNm" type="text" name="appNm" value="<c:out value="${result.appNm}"/>" class="input_basic gr"  maxlength="20"/>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="birth" class="tit">생년월일</label>
										<div class="inp_date date infit" id="birth">
											<input id="birthYear" type="text" name="birthYear" title="생년" class="input_basic gr" required placeholder="YYYY" maxlength="4" autocomplete="off"/><span> / </span>
											<input id="birthMonth" type="text" name="birthMonth" title="월" class="input_basic gr" required placeholder="MM"maxlength="2" autocomplete="off"/><span> / </span>
											<input id="birthDay" type="text" name="birthDay" title="일"class="input_basic gr"  required placeholder="DD"maxlength="2" autocomplete="off"/>
										</div>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="phone" class="tit">휴대폰</label>
										<input id="phone" type="text" name="phone" value="<c:out value="${result.phone}"/>" class="input_basic gr"maxlength="20"/>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="email" class="tit">이메일</label>
										<input id="email" type="text" name="email" value="<c:out value="${result.email}"/>" class="input_basic gr"maxlength="50"/>
									</div>
								</li>
								<li>
									<div class="frm">
										<label for="major_ex" class="tit">주요경력<span class="sub_tit">(직장경력)</span></label>
										<textarea name="majorCareer" id="majorCareer"><c:out value="${result.majorCareer}"/></textarea>
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
											<input id="major" type="text" name="major" value="<c:out value="${result.major}"/>" title="전공" class="input_basic"placeholder="전공을 입력해주세요."maxlength="20"/>
										</p>
									</div>
								</li>
							</ul>
						</fieldset>

					</form>
				</div>
			</div>
		</div>
		<!-- [e] container -->

<script>

	$(document).ready(function() {
	    
		<c:if test="${!empty result.foundingDate}">
			$("#foundingYear").val('${fn:substring(result.foundingDate,0,4) }');
			$("#foundingMonth").val('${fn:substring(result.foundingDate,5,7) }');
			$("#foundingDay").val('${fn:substring(result.foundingDate,8,10) }');
		</c:if>
		<c:if test="${!empty result.area}">
			$("#area").val("<c:out value='${result.area}'/>").prop("selected", true);
		</c:if>
		<c:if test="${!empty result.birthDate}">
			$("#birthYear").val('${fn:substring(result.birthDate,0,4) }');
			$("#birthMonth").val('${fn:substring(result.birthDate,5,7) }');
			$("#birthDay").val('${fn:substring(result.birthDate,8,10) }');
		</c:if>
		<c:if test="${!empty result.lastEducational}">
			$("#lastEducational").val("<c:out value='${result.lastEducational}'/>").prop("selected", true);
		</c:if>			
		<c:if test="${!empty result.businessNum}">
			$("#biz_num1").val('${fn:substring(result.businessNum,0,3) }');
			$("#biz_num2").val('${fn:substring(result.businessNum,4,6) }');
			$("#biz_num3").val('${fn:substring(result.businessNum,7,12) }');
		</c:if>
		<c:if test="${!empty result.establishmentDate}">
			$("#estYear").val('${fn:substring(result.establishmentDate,0,4) }');
			$("#estMonth").val('${fn:substring(result.establishmentDate,5,7) }');
			$("#estDay").val('${fn:substring(result.establishmentDate,8,10) }');
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
		<c:if test="${!empty result.exportMoneyYn}">
			<c:choose>
				<c:when test="${result.exportMoneyYn eq 'Y'}">
					$("#exportMoneyView").show();
				</c:when>
				<c:otherwise>
					$("#exportMoneyView").hide();
				</c:otherwise>
			</c:choose>		
		</c:if>
		
		$(".chk.have").on("click", function(){
			$(this).parent(".radio").next(".entry_box").show();
		});

		$(".chk.not").on("click", function(){
			$(this).parent(".radio").next(".entry_box").hide();
		});
				
	}); 	
	
</script>	