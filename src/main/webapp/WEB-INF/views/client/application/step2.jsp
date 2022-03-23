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
							<li class="on">2<span class="dv_pc">. 신청 정보</span></li>
							<li>3</li>
							<li>4</li>
						</ul>
					</div>
					<div class="app_cont">
						<aside class="app_sub">
							<h3>지역 선택</h3>
							<div>(<span class="point"></span>) 표시는 필수 항목입니다.</div>
						</aside>
						<article class="app_data">
							<form id="form" onsubmit="return false;" name="form" method="POST" enctype="multipart/form-data">
								<ul>
									<li>
										<div class="frm">
											<label for="applicationNm" class="tit">접수번호</label>
											<input id="applicationNm" type="text" name="applicationNm" class="input_basic gr" value="${fn:substring(applicationVo.applicationId, 11, 14)}" readonly/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="app_radio" class="tit">신청분야<span class="sub_tit">(중복선택불가)</span><span class="point"></span></label>
											<div class="radio" id="app_radio">
												<input id="application_type_01" type="radio" name="applicationType" class="chk" <c:out value="${applicationVo.applicationType eq '1'?'checked':''}"/> value="1"/>
												<label for="application_type_01" class="chk_label">창업기업</label>
												<input id="application_type_02" type="radio" name="applicationType" class="chk" <c:out value="${applicationVo.applicationType eq '2'?'checked':''}"/> value="2"/>
												<label for="application_type_02" class="chk_label">예비창업</label>
											</div>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="itemNm" class="tit">아이템명</label>
											<input id="itemNm" type="text" name="itemNm" class="input_basic"placeholder="아이템명을 입력해주세요." value="<c:out value="${applicationVo.itemNm}"/>" maxlength="50"/>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="app_radio" class="tit">사업자구분</label>
											<div class="radio" id="app_radio">
												<input id="businessType_01" type="radio" name="businessType" class="chk" value="1" <c:out value="${applicationVo.businessType eq '1'?'checked':''}"/>/>
												<label for="businessType_01" class="chk_label">예비창업자</label>
												<input id="businessType_02" type="radio" name="businessType" class="chk" value="2" <c:out value="${applicationVo.businessType eq '2'?'checked':''}"/>/>
												<label for="businessType_02" class="chk_label">개인사업자</label>
												<input id="businessType_03" type="radio" name="businessType" class="chk" value="3" <c:out value="${applicationVo.businessType eq '3'?'checked':''}"/>/>
												<label for="businessType_03" class="chk_label">법인사업자</label>
											</div>
										</div>
									</li>
									<li>
										<div class="frm">
											<label for="app_date" class="tit">창업일</label>
											<div class="inp_date infit" id="app_date">
												<input id="foundingYear" type="text" name="foundingYear" title="창업 년도" class="input_basic" required placeholder="YYYY" maxlength="4" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/><span> / </span>
												<input id="foundingMonth" type="text" name="foundingMonth" title="창업 월" class="input_basic" required placeholder="MM"maxlength="2" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/><span> / </span>
												<input id="foundingDay" type="text" name="foundingDay" title="창업 일"class="input_basic"  required placeholder="DD"maxlength="2" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
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
									<li>
										<div class="frm">
											<label for="app_file" class="tit">파일첨부</label>
											<div class="file_list fs1" id="app_file">
												<ul>
													<li>
														<div class="file_area">
															<p class="tit">지원신청서 및 사업계획서<span class="point"></span></p>
															<c:choose>
																<c:when test="${fileResult.size() > 0}">
									                                <c:forEach items="${fileResult }" var="result" varStatus="status">      
									                                <c:if test="${result.code eq 01 }">  
																		<p class="file_nm">
																			<span class="attach"><a href="/filedownload?fileNo=<c:out value="${result.fileNo}"/>"><c:out value="${result.fileNm}"/></a></span><span class="attach_del" onclick="delFile('<c:out value="${result.fileNo}"/>');"></span>
																		</p>
																	</c:if>
									                                </c:forEach>																
																</c:when>
																<c:otherwise>
																	<div id="file_nm01"></div>
																</c:otherwise>
															</c:choose>
														</div>
														<p class="file_a">
															<label for="file01">첨부하기</label>
															<input id="file01" type="file" name="file01" title="파일 첨부하기" class="inp_file"/>
														</p>
													</li>
													<li>
														<div class="file_area">
															<p class="tit">(학위) 졸업증명서</p>
															<c:choose>
																<c:when test="${fileResult.size() > 0}">
									                                <c:forEach items="${fileResult }" var="result" varStatus="status">      
									                                <c:if test="${result.code eq 02 }">  
																		<p class="file_nm">
																			<span class="attach"><a href="/filedownload?fileNo=<c:out value="${result.fileNo}"/>"><c:out value="${result.fileNm}"/></a></span><span class="attach_del" onclick="delFile('<c:out value="${result.fileNo}"/>');"></span>
																		</p>
																	</c:if>
									                                </c:forEach>																
																</c:when>
																<c:otherwise>
																	<div id="file_nm02"></div>
																</c:otherwise>
															</c:choose>
														</div>
														<p class="file_a">
															<label for="file02">첨부하기</label>
															<input id="file02" type="file" name="file02" title="파일 첨부하기" class="inp_file"/>
														</p>
													</li>
													<li>
														<div class="file_area">
															<p class="tit">(경력) 재직증명서 또는 경력증명서</p>
															<c:choose>
																<c:when test="${fileResult.size() > 0}">
									                                <c:forEach items="${fileResult }" var="result" varStatus="status">      
									                                <c:if test="${result.code eq 03 }">  
																		<p class="file_nm">
																			<span class="attach"><a href="/filedownload?fileNo=<c:out value="${result.fileNo}"/>"><c:out value="${result.fileNm}"/></a></span><span class="attach_del" onclick="delFile('<c:out value="${result.fileNo}"/>');"></span>
																		</p>
																	</c:if>
									                                </c:forEach>																
																</c:when>
																<c:otherwise>
																	<div id="file_nm03"></div>
																</c:otherwise>
															</c:choose>													
														</div>
														<p class="file_a">
															<label for="file03">첨부하기</label>
															<input id="file03" type="file" name="file03" title="파일 첨부하기" class="inp_file"/>
														</p>
													</li>
													<li>
														<div class="file_area">
															<p class="tit">(기타) 국가전문자격 등 신청자의 이공계 전문성을 확인할 수 있는 증빙 </p>
															<c:choose>
																<c:when test="${fileResult.size() > 0}">
									                                <c:forEach items="${fileResult }" var="result" varStatus="status">      
									                                <c:if test="${result.code eq 04 }">  
																		<p class="file_nm">
																			<span class="attach"><a href="/filedownload?fileNo=<c:out value="${result.fileNo}"/>"><c:out value="${result.fileNm}"/></a></span><span class="attach_del" onclick="delFile('<c:out value="${result.fileNo}"/>');"></span>
																		</p>
																	</c:if>
									                                </c:forEach>																
																</c:when>
																<c:otherwise>
																	<div id="file_nm04"></div>
																</c:otherwise>
															</c:choose>																
														</div>
														<p class="file_a">
															<label for="file04">첨부하기</label>
															<input id="file04" type="file" name="file04" title="파일 첨부하기" class="inp_file"/>
														</p>
													</li>
												</ul>
											</div>
											<div class="file_list fs2" id="app_file">
												<ul>
													<li>
														<div class="file_area">
															<p class="tit">지원신청서 및 사업계획서<span class="point"></span></p>
															<c:choose>
																<c:when test="${fileResult.size() > 0}">
									                                <c:forEach items="${fileResult }" var="result" varStatus="status">      
									                                <c:if test="${result.code eq 05 }">  
																		<p class="file_nm">
																			<span class="attach"><a href="/filedownload?fileNo=<c:out value="${result.fileNo}"/>"><c:out value="${result.fileNm}"/></a></span><span class="attach_del" onclick="delFile('<c:out value="${result.fileNo}"/>');"></span>
																		</p>
																	</c:if>
									                                </c:forEach>																
																</c:when>
																<c:otherwise>
																	<div id="file_nm05"></div>
																</c:otherwise>
															</c:choose>																
														</div>
														<p class="file_a">
															<label for="file05">첨부하기</label>
															<input id="file05" type="file" name="file05" title="파일 첨부하기" class="inp_file"/>
														</p>
													</li>
													<li>
														<div class="file_area">
															<p class="tit">국세청 사업자등록증명</p>
															<c:choose>
																<c:when test="${fileResult.size() > 0}">
									                                <c:forEach items="${fileResult }" var="result" varStatus="status">      
									                                <c:if test="${result.code eq 06 }">  
																		<p class="file_nm">
																			<span class="attach"><a href="/filedownload?fileNo=<c:out value="${result.fileNo}"/>"><c:out value="${result.fileNm}"/></a></span><span class="attach_del" onclick="delFile('<c:out value="${result.fileNo}"/>');"></span>
																		</p>
																	</c:if>
									                                </c:forEach>																
																</c:when>
																<c:otherwise>
																	<div id="file_nm06"></div>
																</c:otherwise>
															</c:choose>																	
														</div>
														<p class="file_a">
															<label for="file06">첨부하기</label>
															<input id="file06" type="file" name="file06" title="파일 첨부하기" class="inp_file"/>
														</p>
													</li>
													<li>
														<div class="file_area">
															<p class="tit">국세/지방세 완납증명서</p>
															<c:choose>
																<c:when test="${fileResult.size() > 0}">
									                                <c:forEach items="${fileResult }" var="result" varStatus="status">      
									                                <c:if test="${result.code eq 07 }">  
																		<p class="file_nm">
																			<span class="attach"><a href="/filedownload?fileNo=<c:out value="${result.fileNo}"/>"><c:out value="${result.fileNm}"/></a></span><span class="attach_del" onclick="delFile('<c:out value="${result.fileNo}"/>');"></span>
																		</p>
																	</c:if>
									                                </c:forEach>																
																</c:when>
																<c:otherwise>
																	<div id="file_nm06"></div>
																</c:otherwise>
															</c:choose>																	
														</div>
														<p class="file_a">
															<label for="file07">첨부하기</label>
															<input id="file07" type="file" name="file07" title="파일 첨부하기" class="inp_file"/>
														</p>
													</li>
												</ul>
											</div>
										</div>
									</li>
								</ul>
								<div class="btnBox step2">
									<span><input type="button" value="다음" title="다음 버튼" onclick="applicationAdd();"/></span>
								</div>
								<input type="hidden" name="applicationId" id="applicationId" value="<c:out value="${applicationVo.applicationId}"/>" />
								<input type="hidden" name="foundingDate" id="foundingDate" value="">
								<input type="hidden" name="step" id="step" value="<c:out value="${!empty applicationVo.step? applicationVo.step:'2'}"/>">								
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

		
	    $('.inp_file').change(function(){
	    	
	    	let formData = new FormData();
	    	let inputFile;
	        for (let i=1; i<8; i++){
		        if($('#file0'+i).val() != ''){
			       	formData.append("file", $("#file0"+i)[0].files[0]);
			        formData.append("code", "0"+i);
		        }
	        }
	        
	        formData.append("applicationId", "<c:out value='${applicationVo.applicationId}'/>");
	        
	        $.ajax({
	            type: "POST",
	            url: url+'/file',
	            data: formData,
	            processData: false,
	            contentType: false,
	            cache: false,
	            timeout: 600000,
                beforeSend : function(xhr) {
                    xhr.setRequestHeader(header, token);
                },  	            
	            success: function (result) {
	            	<c:choose>
		            	<c:when test="${applicationVo.view eq 'N'}">
		    	        for (let i=1; i<8; i++){
		    		        if($('#file0'+i).val() != ''){
		    		        	let tag = '<p class="file_nm">';
		    		        	tag += '<span class="attach">'+$('#file0'+i).val()+'</span>'
		    		        	tag += '</p>';
								$('#file_nm0'+i).append(tag);
		    		        	$('#file0'+i).val("");
		    		        	formData.delete('applicationId');
		    		        	formData.delete('file');
		    		        	formData.delete('code');
		    		        }
		    	        }		          
		    	        
		            	</c:when>
		            	<c:otherwise>
			            	reloadAdd();
		            	</c:otherwise>
	            	</c:choose>	        
	            },
	            error: function(request,status,error){
	            	alert("error가 발생했습니다.\n관리자에게 문의 바랍니다.");            	
	            }	            
	        });
            
	    });
	  
	    
		<c:if test="${!empty applicationVo.foundingDate}">
			$("#foundingYear").val('${fn:substring(applicationVo.foundingDate,0,4) }');
			$("#foundingMonth").val('${fn:substring(applicationVo.foundingDate,5,7) }');
			$("#foundingDay").val('${fn:substring(applicationVo.foundingDate,8,10) }');
		</c:if>

		<c:if test="${!empty applicationVo.businessType}">
	    	<c:choose>
		    	<c:when test="${applicationVo.businessType eq '1'}">
					$(".file_list.fs1").show();
					$(".file_list.fs2").hide();
		    	</c:when>
		    	<c:otherwise>
					$(".file_list.fs1").hide();
					$(".file_list.fs2").show();
		    	</c:otherwise>
			</c:choose>		
		</c:if>
		
		<c:if test="${!empty applicationVo.area}">
			$("#area").val("<c:out value='${applicationVo.area}'/>").prop("selected", true);
		</c:if>
	}); 

	
    /**
     * 수정 
     */
	function reloadAdd(){
    	
		$('#foundingDate').val($("#foundingYear").val()+'-'+$("#foundingMonth").val()+'-'+$("#foundingDay").val());
		
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
            	location.reload();	
            },
            error: function(request,status,error){
            	alert("error가 발생했습니다.\n관리자에게 문의 바랍니다.");            	
            }
        });
      
	}		
	
    /**
     * 추가 / 수정 
     */
	function applicationAdd(){
    	
		if(!$('input:radio[name=applicationType]').is(':checked')){
			alert("신청분야를 선택하세요");
			$('#applicationType').focus();
			return;
		}
		if($("#itemNm").val() == ""){
			alert("아이템명을 입력하세요");
			$('#itemNm').focus();
			return;
		}
		if(!$('input:radio[name=businessType]').is(':checked')){
			alert("사업자구분을 선택하세요");
			return;
		}
		if($("#foundingYear").val() == ""){
			alert("창업일을 입력하세요");
			$('#foundingYear').focus();
			return;
		}
		if($("#foundingYear").val().length < 4){
			alert("4자리로 입력하세요");
			$('#foundingYear').focus();
			return;
		}
		if($("#foundingMonth").val() == ""){
			alert("창업일을 입력하세요");
			$('#foundingMonth').focus();
			return;
		}
		if($("#foundingMonth").val().length < 2){
			alert("2자리로 입력하세요");
			$('#foundingMonth').focus();
			return;
		}
		if($("#foundingDay").val() == ""){
			alert("창업일을 입력하세요");
			$('#foundingDay').focus();
			return;
		}
		if($("#foundingDay").val().length < 2){
			alert("2자리로 입력하세요");
			$('#foundingDay').focus();
			return;
		}
		if($("#area").val() == ""){
			alert("지역을 선택하세요");
			$('#area').focus();
			return;
		}
		$('#foundingDate').val($("#foundingYear").val()+'-'+$("#foundingMonth").val()+'-'+$("#foundingDay").val());
		
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
		                location.replace(url+'/step3/N/<c:out value="${applicationVo.applicationId}"/>');
	            	</c:when>
	            	<c:otherwise>
		                location.replace(url+'/step3/U/<c:out value="${applicationVo.applicationId}"/>');
	            	</c:otherwise>
            	</c:choose>
                	                
            },
            error: function(request,status,error){
            	alert("error가 발생했습니다.\n관리자에게 문의 바랍니다.");            	
            }
        });
      
	}	
    
    
    /**
     * 추가 / 수정 
     */
	function delFile(fileNo){

        if(!confirm('삭제하시겠습니까?')) {
            return;
        } else {
			const method = 'DELETE';
			
	        $.ajax({
	            url: url+'/file',
	            type: method,
	            dataType: 'json',
	            contentType: "application/json",
	            data: JSON.stringify({"fileNo":fileNo}),
	            crossDomain: true,
	            beforeSend : function(xhr) {
	                xhr.setRequestHeader(header, token);
	            },             
	            success: function(response) {
	            	location.reload();
	            },
	            error: function(request,status,error){
	            	alert("error가 발생했습니다.\n관리자에게 문의 바랍니다.");            	
	            }
	        });
        }
	}	    
</script>  
