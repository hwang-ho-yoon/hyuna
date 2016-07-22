<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쇼핑몰</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="/include/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/include/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/include/css/owl.carousel.css">
    <link rel="stylesheet" href="/include/css/style.css">
    <link rel="stylesheet" href="/include/css/responsive.css">
    <link rel="stylesheet" href="/include/css/common.css">
    
    <!-- Elements CSS -->
    <link rel="stylesheet" href="/include/css/elements/animate.min.css">
    <link rel="stylesheet" href="/include/css/elements/checkbox3.min.css">
    <link rel="stylesheet" href="/include/css/elements/dataTables.bootstrap.css">
    <link rel="stylesheet" href="/include/css/elements/element.css">
    <link rel="stylesheet" href="/include/css/elements/flat-blue.css">
    <link rel="stylesheet" href="/include/css/elements/flat-green.css">
    <link rel="stylesheet" href="/include/css/elements/font-awesome.min.css">
    <link rel="stylesheet" href="/include/css/elements/jquery.dataTables.min.css">
    <link rel="stylesheet" href="/include/css/elements/select2.min.css">
    <link rel="stylesheet" href="/include/css/elements/bootstrap-switch.min.css">
    
    <!-- board css-->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<style>
		#list{
		 width:100%;
		}
		#write{
		width 150px;
		}
		.bottom{
		margin-bottom:15%;
		}
	</style>
 
  <script src="/include/board/js/ckeditor/ckeditor.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
    
	<!-- jQuery와 Postcodify를 로딩한다 -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
</head>
<body>
	<div>
		<header class="main-header">
			<tiles:insertAttribute name="header" />
		</header> <!-- /. main-header -->
		
		<div id="main-wrapper">
			<tiles:insertAttribute name="body" />
		</div>
		
		 <footer class="main-footer">
			<tiles:insertAttribute name="footer" />
		 </footer>
	</div>
</body>
</html>