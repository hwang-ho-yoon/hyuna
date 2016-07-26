<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	 <%@ page trimDirectiveWhitespaces="true" %>
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
    
  
  
  
  
  
  
<!--    
    게시판 전용
    게시판 전용
    게시판 전용
    게시판 전용 -->
    
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<style>
	#list{
		 width:100%;
		}
		#write{
		width:80px;
		height:41;
		margin-left:5%;
		margin-right:0;
		}
		/* <-- width 60 height 41--> */
		.bottom{
		margin-bottom:15%;
		}
		#search{
		width:150px;
		height:41px;
		}
		#select{
		width:100px;
		height:41px;
		}
		#page{
		width: 250px;
		margin-top:20px;
		}
		
		#searchBtndiv{
		margin-left:73px;
		margin-bottom:200px;
		}
 	</style>
  <script src="/include/board/js/ckeditor/ckeditor.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <!-- 게시판 전용
  게시판 전용
  게시판 전용
  게시판 전용
  게시판 전용
   -->
   </head>
   <body>
	<div id="wrapper">
		<div class="board">
			<form>
				<table class="table table-bordered">
		    		<tr>
		    			<td style="background-color:grey">제목</td>
		    			<td colspan="3">ㅁㄴㅇㅇㅇ</td>
		    		</tr>
		    		<tr>
		    			<td style="background-color:grey">작성자</td>
		    			<td colspan="3">ㅁㄴㅇㅇㅇ</td>
		    		</tr>
		    		<tr>
		    			<td style="background-color:grey">작성일</td>
		    			<td>2016-11-11</td>
		    			<td style="background-color:grey">조회수</td>
		    			<td colspan="2">1</td>
		    		</tr>
		    		<tr>
		    			<td colspan="4">본문</td>
		    		</tr>
				</table>
				<!-- 버튼들 -->
				<div class="col-md-1">
				<input type="button" class="btn btn-info btn-block" id="list" value="목록">
				</div>
				<div class="col-md-1 col-md-offset-9">
				<input type="button" class="btn btn-info btn-block" id="delete" value="삭제">
				</div>
				<div class="col-md-1">
				<input type="button" class="btn btn-info btn-block" id="modify" value="수정">
				</div>
			</form>
		</div>
	</div>
	</body>
<script>
	$(function(){
		$("#write").click(function(){
			location.href = "/board/faqwrite.do";
		})
	})
</script>

</html>