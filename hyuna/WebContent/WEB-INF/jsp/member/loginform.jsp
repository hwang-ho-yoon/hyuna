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
		//로그인 버튼클릭
		$("#loginBtn").click(function(){
			$.ajax({
				url : "/member/loginCheck.do",
			    type : "post",
			    data : $("#login_form").serialize(),
			    error : function(){
					alert("실패");
			    },
			    success : function(resultData){			     
				    if(resultData=="success"){
				    	location.href = "/index.jsp";
				    }else{
				    	alert("없음");	
				    	return;				      				      	
					}
				}
			});			
		});
		
		//회원가입 버튼클릭
		$("#memberBtn").click(function(){
			location.href = "/member/memberjoin.do";
		});
		
		//아이디찾기 버튼클릭
		$("#idBtn").click(function(){
			location.href = "/member/findid.do";
		});
		
		$("#pwdBtn").click(function(){
			location.href = "/member/findpw.do";
		});
	});
</script>
<style type="text/css">
body{
    background: url(http://mymaplist.com/img/parallax/back.png);
	background-color: #444;
    background: url(http://mymaplist.com/img/parallax/pinlayer2.png),url(http://mymaplist.com/img/parallax/pinlayer1.png),url(http://mymaplist.com/img/parallax/back.png);    
}

.vertical-offset-100{
    padding-top:50px;
}

</style>
</head>
<body>
<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">회원 로그인</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" id="login_form">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="아이디" name="mem_id" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="비밀번호" name="mem_pwd" type="password" >
			    		</div>
			    		<div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="Remember Me"> 아이디 저장
			    	    	</label>			    	    	
			    	    </div>
			    	    <div class="form-inline" align="center">
			    		<input class="btn btn-lg btn-success btn-block" type="button" value="Login" id="loginBtn">
			    		<hr>
			    		<button type="button" class="btn btn-default" id="memberBtn">회원가입</button>
			    		<button type="button" class="btn btn-default" id="idBtn">아이디찾기</button>
			    		<button type="button" class="btn btn-default" id="pwdBtn">비밀번호찾기</button>			    					    		
			    		</div>	
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>