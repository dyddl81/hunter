<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../page_init.jsp" %>

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
  <title>로그인 : HOME > 회원서비스 > 로그인</title>

  <link rel="stylesheet" type="text/css" href="../css/import.css">
  <script src="/js/jquery-1.11.3.min.js"></script>


 </head>
 <body>

	<div id="skipToContent" class="skipnav">
		<a href="#container">본문 바로가기</a>
	</div>

	<!-- [s] wrap -->
	<div id="wrapper">
		<!-- [s] header -->
		<header id="header">
			<div class="inner">
				<h1>
					<a href="http://www.wbiz.or.kr/index.do" title="Wbiz 여성기업 종압정보 포털">
						<img src="/resources/img/header_logo.png" alt="Wbiz 여성기업 종합정보 포털 로고">
					</a>
				</h1>
				<div class="heder_btn">
					<span></span>
					<span></span>
					<span></span>
				</div>
				<nav id="gnb">
					<ul class="infit">
						<li><a href="/member/introduction" title="사업소개">사업소개</a></li>
						<li><a href="/member/application/step1" title="신청서작성">신청서작성</a></li>
						<li><a href="/member/application" title="신청조회">신청조회</a></li>
					</ul>
					<div class="member">
						<span class="me_login"><a href="/member/login" title="login">로그인</a></span>
					</div>
				</nav>
			</div>
		</header>
		<!-- [e] header -->
		<!-- [s] container -->
		<div id="container">
			<div class="content">
				<div class="inner">
					<div class="login_wrap">
						<h2>Wbiz 로그인</h2>
						<p>회원전용 서비스입니다. 로그인 해주세요.</p>
						<div class="login_con">
							<form name="form" id="form" action="<c:url value="/member/loginproc"/>" method='POST'>
								<sec:csrfInput/>
								<fieldset>
									<legend>로그인 입력 영역</legend>
									<ul class="login_entry">
										<li>
											<input id="member_id" type="text" name="member_id" title="아이디" placeholder="아이디"  class="input_basic" required/>
										</li>
										<li>
											<input id="member_pw" type="password" name="member_pw"  title="비밀번호" placeholder="비밀번호"  class="input_basic" required/>
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
										<!-- p>※ 비밀번호를 연속으로 5회 이상 잘못 입력하신 경우에는<br>5분동안 로그인이 제한됩니다.</p-->
									</div>
									<ul class="find_wrap" id="find_wrap">
										<li>
											<a target="_blank" href="http://www.wbiz.or.kr/login/user/BD_findId.do" title="아이디찾기">아이디찾기</a>
										</li>
										<li>
											<a target="_blank" href="http://www.wbiz.or.kr/login/user/BD_findPwd.do" title="비밀번호찾기">비밀번호찾기</a>
										</li>
									</ul>
									<div class="join_btn">
										<a target="_blank" href="http://www.wbiz.or.kr/web/register/BD_index.do" title="회원가입">회원가입</a>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
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
	        if(frm.member_id.value == ''){
	        	alert('아이디를 입력하세요!');
	        	frm.member_id.focus();
	        	return;
	        }
	        if(frm.member_pw.value == ''){
	        	alert('비밀번호를 입력하세요!');
	        	frm.member_pw.focus();        	
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
				$.cookie("member_id", $("#member_id").val(), { expires: 365, path: '/'});
			}else{
				$.removeCookie("save_id", { path: '/' });
				$.removeCookie("member_id", { path: '/' });
			}
		}
		
	    /**
	     * 아이디 저장 확인
	     */
		if($.cookie("save_id") == 'Y'){
			$("input:checkbox[name='save_id']").prop("checked", true);
			$("#member_id").val($.cookie("member_id"));
		}
		
	</script>
 </body>
</html>

