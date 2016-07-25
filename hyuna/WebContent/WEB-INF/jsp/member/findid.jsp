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
		if($("#rm").is(":checked")){				
			$("#td_ph").hide();				
			$("#td_tel").hide();			
		}
		$("#rm").click(function(){			
			$("#td_ph").hide();				
			$("#td_tel").hide();
			$("#td_mail").show();				
			$("#td_email").show();
		});
		$("#rp").click(function(){			
			$("#td_mail").hide();				
			$("#td_email").hide();
			$("#td_ph").show();				
			$("#td_tel").show();
		});
	});
</script>
</head>
<body>
	<form>
	<div id="wrapper" style="margin-bottom: 20px">
		<h4>아이디 찾기</h4>
		<div>
			<div class="row" style="background: #ddd;">
			  <div class="col-xs-6 col-sm-4"></div>
			  <div class="col-xs-6 col-sm-4" style="padding-top: 100px; padding-bottom: 100px; padding-left: 50px">
			  	<table>
			  	
			  	<thead>
			  		<tr align="center">
			  			<th style="text-align: center; padding-bottom: 20px">아이디찾기</th>
			  		</tr>
			  	</thead>
			  	<tbody>	
			  		<tr>
			  			<td>			  			
			  				<input type="radio" name="radio" checked="checked" id="rm">이메일
			  				<input type="radio" name="radio" id="rp">휴대폰			  				
			  			</td>
			  		</tr>
			  		<tr>
			  			<td>이름</td>
			  		</tr>
			  		<tr>
			  			<td><input type="text" id="mem_name" name="mem_name"></td>
			  		</tr>
			  		<tr>
			  			<td id="td_mail">이메일</td>
			  		</tr>
			  		<tr>
			  			<td id="td_email"><input type="email" id="mem_mail" name="mem_mail"></td>
			  		</tr>
			  		<tr>
			  			<td id="td_ph">휴대폰</td>
			  		</tr>
			  		<tr>
			  			<td id="td_tel">
			  				<input type="text" id="tel1" name="tel1" maxlength="3" style="width: 55px">&nbsp;-
			  				<input type="text" id="tel2" name="tel2" maxlength="4" style="width: 55px">&nbsp;-
			  				<input type="text" id="tel3" name="tel3" maxlength="4" style="width: 55px">
			  			</td>
			  		</tr>
			  		<tr>
			  			<td><button type="button" class="btn btn-default" id="okBtn">확인</button>
			  		</tr>			  		
			  	</tbody>	
			  	</table>
			  </div>

			  <div class="col-xs-6 col-sm-4"></div>
			</div>
		</div>
	</div>
	</form>
</body>
</html>