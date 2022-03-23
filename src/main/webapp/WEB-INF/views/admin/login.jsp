<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@	taglib prefix="c" 			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"			uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="ko">
 <head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,user-scalable=no"/>
  <meta name="format-detection" content="telephone=no" />
  <meta name="title" content="Wbiz 여성기업 종압정보 포털" />
  <meta name="subject" content="" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <title>관리자 로그인</title>

  <link rel="stylesheet" type="text/css" href="/css/import.css">
  <script src="/js/jquery-1.11.3.min.js"></script>

 </head>
 <body>

	<div id="skipToContent" class="skipnav">
		<a href="#container">본문 바로가기</a>
	</div>

	<!-- [s] wrap -->
	<div id="wrapper">
		<!-- [s] container -->
		<div id="container">
			<div class="content">
				<div class="inner ad">
					<div class="ad_login">
						<div class="ad_intro">
							<h1>
								<a href="admin_login.html" title="Wbiz 여성기업 종압정보 포털 관리자 로그인">
									<img src="/resources/img/admin_logo.png" alt="Wbiz 여성기업 종합정보 포털 관리자 로고">
								</a>
							</h1>
							<div class="intro_desc">
								<h2>Women Enterprise Supporting Center<span class="ad_green">Admin</span></h2>
								<p>Real Estate Agency for Corporation and People.</p>
							</div>
							<p class="copy_right">Copyright &copy; 2022 Women Enterprise Supporting Center All Rights Reserved.</p>
						</div>
						<div class="ad_entry">
							<form name="form" id="form" action="<c:url value="/admin/loginproc"/>" method='POST'>
							<sec:csrfInput/>
								<fieldset>
									<legend>로그인 입력 영역</legend>
									<ul class="login_entry">
										<li>
											<input id="admin_id" type="text" name="admin_id" title="아이디" placeholder="아이디"  class="input_basic" required/>
										</li>
										<li>
											<input id="admin_pw" type="password" name="admin_pw"  title="비밀번호" placeholder="비밀번호"  class="input_basic" onkeyup="enterkey();" required/>
										</li>
									</ul>
									<div class="login_keep">
										<div class="keep_check">
											<input id="save_id" type="checkbox" name="save_id" value="Y" class="in_keep" onclick="saveId();"/>
											<label for="save_id" class="keep_text">아이디 저장</label>
										</div>
									</div>
									<div class="login_btn">
										<button type="button" onclick="login();">로그인</button>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				<p class="side_bg side_left"><img src="/resources/img/side_bg_left.png"></p>
				<p class="side_bg side_right"><img src="/resources/img/side_bg_right.png"></p>
			</div>
		</div>
		<!-- [e] container -->
	</div>
	<!-- [e] wrap -->

	<script src="/js/publish.js"></script>
	<script src="/js/jquery.cookie.js"></script>
	<script>
	     
	    /**
	     * 로그인 메세지
	     */
	    let sysMsg = '${sysMsg}';
	    if(sysMsg != '') {
	        alert(sysMsg);
	    }
	    
	    /**
	     * 로그인
	     */
		function login(){
	        let frm = document.form;
	        if(frm.admin_id.value == ''){
	        	alert('아이디를 입력하세요!');
	        	frm.admin_id.focus();
	        	return;
	        }
	        if(frm.admin_pw.value == ''){
	        	alert('비밀번호를 입력하세요!');
	        	frm.admin_pw.focus();        	
	        	return;
	        }
	        frm.submit();
		}    
	    
	    /**
	     * 엔터키
	     */
		function enterkey() {
	        if (window.event.keyCode == 13) {
	             // 엔터키가 눌렸을 때 실행할 내용
	        	login();
	        }
		}
	
	    /**
	     * 아이디 저장
	     */
		function saveId(){
			if($("input:checkbox[name='save_id']").is(":checked")){
				$.cookie("save_id", 'Y', { expires: 365, path: '/'});
				$.cookie("admin_id", $("#admin_id").val(), { expires: 365, path: '/'});
			}else{
				$.removeCookie("save_id", { path: '/' });
				$.removeCookie("admin_id", { path: '/' });
			}
		}
		
	    /**
	     * 아이디 저장 확인
	     */
		if($.cookie("save_id") == 'Y'){
			$("input:checkbox[name='save_id']").prop("checked", true);
			$("#admin_id").val($.cookie("admin_id"));
		}
		
	</script>
 </body>
</html>
