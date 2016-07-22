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
    
    
    <!-- board css-->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<style>
		#list{
		 width:100%;
		}
		#container{
		margin-left:20%;
		margin-right:20%;
		margin-top:5%;
		margin-bottom:5%;
		}
		.col-md-2 col-md-offset-4{
		margin-right:0px;
		}
		
		#write{
		width:60px;
		}
		#page{
		
		}
	</style>
  
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <!-- ---- -->
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
	
	 <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="/include/js/owl.carousel.min.js"></script>
    <script src="/include/js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="/include/js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="/include/js/main.js"></script>
    
    <!-- Slider -->
    <script type="text/javascript" src="/include/js/bxslider.min.js"></script>
	<script type="text/javascript" src="/include/js/script.slider.js"></script>
</body>
</html>