<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags" %>
		
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
						<li id="appAbout"><a href="/member/introduction" title="사업소개">사업소개</a></li>
						<li id="appWrite"><a href="/member/application/step1" title="신청서작성">신청서작성</a></li>
						<li id="appList"><a href="/member/application" title="신청조회">신청조회</a></li>
					</ul>
					<div class="member">
						<span class="me_login">
						<sec:authorize access="isAnonymous()">
							<a href="/member/login" title="로그인">로그인</a>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">						
							<a href="/member/logout" title="로그아웃">로그아웃</a>
						</sec:authorize>						
						</span>
					</div>
				</nav>
			</div>
		</header>		