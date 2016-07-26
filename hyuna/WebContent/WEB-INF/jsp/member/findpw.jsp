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
			$("#teltxt").hide();				
			$("#teltxt").hide();			
		}
		$("#rm").click(function(){			
			$("#teltxt").hide();				
			$("#teltxt").hide();
			$("#mailtxt").show();				
			$("#mailtxt").show();
		});
		$("#rp").click(function(){			
			$("#mailtxt").hide();				
			$("#mailtxt").hide();
			$("#teltxt").show();				
			$("#teltxt").show();
		});
		
		$("#okBtn").click(function(){
			$("#findpw_form").attr({
				"method":"post",
				"action":"/member/memberPw.do"
			});
			$("#findpw_form").submit();
			alert("비밀번호가 이메일로 발송되었습니다");
			location.href = "/index.jsp";
		});

/*  		var pattern1 = /[0-9]/;
		
		var pattern2 = /[a-zA-Z]/;
		
		var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/;
		
		alert(pattern2);ran
 		var ranNum = pattern1(Math.random()*10);
		alert(ranNum);  */

	}); 
/*  	 function createCode(objArr, iLength) {
         var arr = objArr;
         var randomStr = "";
         
         for (var j=0; j<iLength; j++) {
             randomStr += arr[Math.floor(Math.random()*arr.length)];
         }
         
         return randomStr
     }
    function getRandomCode(iLength) {
    	var arr="0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,~,`,!,@,#,$,%,^,&,*,(,),-,+,|,_,=,\,[,],{,},<,>,?,/,.,;".split(",");        
    	var arr="0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z".split(",");        
        var rnd = createCode(arr, iLength);        	
        return rnd;
    } */
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
.telc{width: 100px}
</style>
</head>
<body>
<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">비밀번호 찾기</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form" id="findpw_form">
                    <fieldset>
                    	<div class="form-group">                    	
			    		    <input name="mem_radio" id="rm" type="radio" value="mail" checked="checked">&nbsp;이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    		    <input name="mem_radio" id="rp" type="radio" value="ph">&nbsp;휴대폰			    		
			    		</div>
			    		<hr>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="아이디" name="mem_id" id="mem_id" type="text">
			    		</div>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="이름" name="mem_name" id="mem_name" type="text">
			    		</div>
			    		<div class="form-group" id="mailtxt">
			    			<input class="form-control" placeholder="이메일 주소" name="mem_mail" id="mem_mail" type="email" >
			    		</div>			    		
			    		<div class="form-group" id="teltxt">
			    			<input class="telc" name="tel1" type="text" maxlength="3">&nbsp;-
			    			<input class="telc" name="tel2" type="text" maxlength="4">&nbsp;-
			    			<input class="telc" name="tel3" type="text" maxlength="4">
			    		</div>			    		
			    	    <div class="form-inline" align="center">
			    		<input class="btn btn-lg btn-success btn-block" type="button" value="확인" id="okBtn">
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