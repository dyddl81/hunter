<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@	taglib prefix="c" 	 uri="http://java.sun.com/jsp/jstl/core" %>

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
  <title>wbiz 여성기업 종합정보포털</title>

  <link rel="stylesheet" type="text/css" href="/css/import.css">
  <script src="/js/jquery-1.11.3.min.js"></script>
 </head>
 
 <body oncontextmenu="return false">

	<div id="skipToContent" class="skipnav">
		<a href="#container">본문 바로가기</a>
	</div>

	<!-- [s] wrap -->
	<div id="wrapper">	
	 
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="body" />
        
	</div>
	
	<script>
		function noEvent() {
		    if (event.keyCode == 116) {
		        event.keyCode= 2;
		        return false;
		    }
		    else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
		    {
		        return false;
		    }
		}
		document.onkeydown = noEvent;
	</script>

	<!-- [e] wrap -->        
	<script src="/js/publish.js"></script>

 </body>
</html>