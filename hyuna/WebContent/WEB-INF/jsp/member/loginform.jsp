<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$("#joinBtn").click(function(){
			location.href="/member/memberjoin.do";
		});
		
		$("#loginBtn").click(function(){
			alert("로그인");
		});
	});
</script>
</head>
<body>
	<div id="wrapper" style="margin-bottom: 20px">
		<h4>회원 로그인</h4>
		<div>
			<div class="row" style="background: #ddd;">
			  <div class="col-xs-6 col-sm-3"></div>
			  <div class="col-xs-6 col-sm-3" style="padding-top: 100px; padding-bottom: 100px">
			  	<table>
			  	<thead>
			  		<tr align="center">
			  			<th style="text-align: center; padding-bottom: 20px">회원로그인</th>
			  		</tr>
			  	</thead>
			  	<tbody>	
			  		<tr>
			  			<td>ID</td>
			  		</tr>
			  		<tr>
			  			<td><input type="text"></td>
			  		</tr>
			  		<tr>
			  			<td>PW</td>
			  		</tr>
			  		<tr>
			  			<td><input type="password"></td>
			  		</tr>
			  		<tr>
			  			<td><button type="button" class="btn btn-default" id="loginBtn">로그인</button>
			  		</tr>
			  		<tr>
			  			<td>
			  				<a href="/member/findid.do">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;
			  				<a href="/member/findpw.do">비밀번호 찾기</a>
			  			</td>
			  		</tr>
			  	</tbody>	
			  	</table>
			  </div>
			
			
			  <div class="col-xs-6 col-sm-3" style="padding-top: 100px; padding-bottom: 100px">
			  	<table>
			  	<thead>
			  		<tr align="center">
			  			<th style="text-align: center; padding-bottom: 20px">회원가입</th>
			  		</tr>
			  	</thead>
			  	<tbody>	
			  		<tr>
			  			<td>&nbsp;<br>
			  			아직 회원이 아니십니까??<br>
			  			회원을 위한 다양한 혜택이<br>
			  			준비되어 있습니다.<br>
			  			&nbsp;<br>
			  			&nbsp;<br>			  			
			  			</td>
			  		</tr>
			  		<tr>
			  			<td><button type="button" class="btn btn-default" id="joinBtn">회원가입</button>
			  		</tr>
			  	</tbody>	
			  	</table>
			  </div>
			  <div class="col-xs-6 col-sm-3"></div>
			</div>
		</div>
	</div>
</body>
</html>