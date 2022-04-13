<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@	taglib prefix="c" 	 uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>IT hunters</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Eduport- LMS, Education and Course Theme">

	<!-- Favicon -->
	<link rel="shortcut icon" href="<c:url value="/assets/images/favicon.ico" />">

	<!-- Google Font -->
	<link rel="preconnect" href="<c:url value="https://fonts.googleapis.com" />">
	<link rel="preconnect" href="<c:url value="https://fonts.gstatic.com" />" crossorigin>
	<link rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&family=Roboto:wght@400;500;700&display=swap" />">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/vendor/font-awesome/css/all.min.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/vendor/bootstrap-icons/bootstrap-icons.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/vendor/apexcharts/css/apexcharts.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css" />">

	<!-- Theme CSS -->
	<link id="style-switch" rel="stylesheet" type="text/css" href="<c:url value="/assets/css/style.css" />">

</head>
<body>
	<!-- **************** MAIN CONTENT START **************** -->
	<main>
		<!-- [s] wrap -->
		<tiles:insertAttribute name="menu" />
		<!-- Page content START -->
		<div class="page-content">		
			<tiles:insertAttribute name="header" />
			<tiles:insertAttribute name="body" />	
		</div>
		<!-- Page content END -->		
		<!-- [e] wrap -->
	</main>
	<!-- **************** MAIN CONTENT END **************** -->
</body>
</html>