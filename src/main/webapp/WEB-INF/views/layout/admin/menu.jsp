<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}" /> 

<!-- Sidebar START -->
<nav class="navbar sidebar navbar-expand-xl navbar-dark bg-dark">

	<!-- Navbar brand for xl START -->
	<div class="d-flex align-items-center">
		<a class="navbar-brand" href="/admin/main" >
			IT hunters
		</a>
	</div>
	<!-- Navbar brand for xl END -->
	
	<div class="offcanvas offcanvas-start flex-row custom-scrollbar h-100" data-bs-backdrop="true" tabindex="-1" id="offcanvasSidebar">
		<div class="offcanvas-body sidebar-content d-flex flex-column bg-dark">

			<!-- Sidebar menu START -->
			<ul class="navbar-nav flex-column" id="navbar-sidebar">
				
				<!-- Menu item 1 -->
				<li class="nav-item"><a href="<c:url value="/admin/main" />" class="nav-link ${path eq '/admin/main'?'active':''}"><i class="bi bi-house fa-fw me-2"></i>메인</a></li>
				
				<!-- Title -->
				<li class="nav-item ms-2 my-2">Pages</li>

				<!-- Menu item 3 -->
				<li class="nav-item"> <a class="nav-link ${path eq '/admin/project'?'active':''}" href="<c:url value="/admin/project" />"><i class="far fa-clipboard fa-fw me-2"></i>프로젝트<span class="badge bg-success text-white rounded-circle ms-2">2</span></a></li>

				<!-- menu item 2 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#memberpage" role="button" aria-expanded="${fn:indexOf(path,'user') > 0 ? 'true':'false'}" aria-controls="memberpage">
						<i class="fas fa-user-tie fa-fw me-2"></i>회원정보
					</a>
					<!-- Submenu -->
					<ul class="nav collapse flex-column" id="memberpage" data-bs-parent="#navbar-sidebar">
						<li class="nav-item"> <a class="nav-link ${path eq '/admin/user/free'?'active':''}" href="<c:url value="/admin/user/free" />">프리랜서</a></li>
						<li class="nav-item"> <a class="nav-link ${path eq '/admin/user/business'?'active':''}" href="<c:url value="/admin/user/business" />">기업</a></li>
					</ul>
				</li>

				<!-- Menu item 4 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#mileage" role="button" aria-expanded="${fn:indexOf(path,'mileage') > 0 ? 'true':'false'}" aria-controls="mileage">
						<i class="bi bi-basket fa-fw me-2"></i>마일리지
					</a>
					<!-- Submenu -->
					<ul class="nav collapse flex-column" id="mileage" data-bs-parent="#navbar-sidebar">
						<li class="nav-item"> <a class="nav-link ${path eq '/admin/mileage/event'?'active':''}" href="<c:url value="/admin/mileage/event" />">이벤트</a></li>
						<li class="nav-item"> <a class="nav-link ${path eq '/admin/mileage/cart'?'active':''}" href="<c:url value="/admin/mileage/cart" />">구매내역</a></li>
						<li class="nav-item"> <a class="nav-link ${path eq '/admin/mileage/use'?'active':''}" href="<c:url value="/admin/mileage/use" />">사용내역</a></li>
					</ul>
				</li>
				
				<!-- Menu item 4 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#inquiry" role="button" aria-expanded="${fn:indexOf(path,'inquiry') > 0 ? 'true':'false'}" aria-controls="inquiry">
						<i class="far fa-comment-dots fa-fw me-2"></i>문의
					</a>
					<!-- Submenu -->
					<ul class="nav collapse flex-column" id="inquiry" data-bs-parent="#navbar-sidebar">
						<li class="nav-item"> <a class="nav-link ${path eq '/admin/inquiry/inquiry'?'active':''}" href="<c:url value="/admin/inquiry/inquiry" />">문의사항<span class="badge bg-success text-white rounded-circle ms-2">2</span></a></li>
						<li class="nav-item"> <a class="nav-link ${path eq '/admin/inquiry/notice'?'active':''}" href="<c:url value="/admin/inquiry/notice" />">공지</a></li>
						<li class="nav-item"> <a class="nav-link ${path eq '/admin/inquiry/declaration'?'active':''}" href="<c:url value="/admin/inquiry/declaration" />">커뮤니티신고내용<span class="badge bg-success text-white rounded-circle ms-2">2</span></a></li>
					</ul>
				</li>

				<!-- Menu item 6 -->
				<li class="nav-item"> <a class="nav-link ${path eq '/admin/history'?'active':''}" href="<c:url value="/admin/history" />"><i class="far fa-chart-bar fa-fw me-2"></i>접속이력</a></li>

				<!-- Menu item 7 -->
				<li class="nav-item"> <a class="nav-link ${path eq '/admin/setting'?'active':''}" href="<c:url value="/admin/setting" />"><i class="fas fa-user-cog fa-fw me-2"></i>Admin Settings</a></li>

			</ul>
			<!-- Sidebar menu end -->
			
		</div>
	</div>
</nav>
<!-- Sidebar END -->