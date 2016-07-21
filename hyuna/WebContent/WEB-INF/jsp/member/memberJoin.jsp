<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="/include/css/join.css">
<link rel="stylesheet" type="text/css" href="/include/css/bootstrap.min.css">
<script type="text/javascript" src="/include/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript" src="/include/js/board.js"></script>
<script type="text/javascript">
	$(function(){
		var idReg = /^[a-z0-9]{4,16}$/;	//아이디정규식
		var pwdReg = /[A-za-z0-9\[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"\\\'\\]{10,16}/;
		var phReg = /^[0-9]{3,4}$/;
		var mailReg = /^[A-za-z0-9]{4,16}$/i;
		var mail2Reg = /^[A-za-z]*\.[A-za-z]{3}$/i;
		
		$("#mail").change(function(){						
			if($("#mail option:selected").val()=="직접입력"){
				$("#mail2").attr("readonly",false);
				$("#mail2").val("");				
			}else if($("#mail option:selected").val()=="-이메일 선택-"){				
				$("#mail2").attr("readonly",true);
				$("#mail2").val("");				
			}else{				
				$("#mail2").attr("readonly",true);				
				$("#mail2").val($("#mail option:selected").val());						
			}
		})
		
		$("#join").click(function(){
			if(!chks($("#mem_id"),$("#id_msg"),"아이디를"))return;
			else if(!chks($("#mem_pwd"),$("#pwd_msg"),"비밀번호를"))return;
			else if(!chks($("#mem_pwd1"),$("#pwd1_msg"),"비밀번호 확인을"))return;
			else if(!chks($("#mem_answer"),$("#answer_msg"),"비밀번호 확인 답변을"))return;
			else if(!chks($("#mem_post"),$("#post_msg"),"우편번호를"))return;
			else if(!chks($("#mem_address1"),$("#adr1_msg"),"기본주소를"))return;
			else if(!chks($("#mem_address2"),$("#adr2_msg"),"상세주소를"))return;
			else if(!chks($("#tel1"),$("#tel_msg"),"전화번호를"))return;
			else if(!chks($("#tel2"),$("#tel_msg"),"전화번호를"))return;
			else if(!chks($("#mail1"),$("#mail_msg"),"이메일을"))return;
			else if(!chks($("#mail2"),$("#mail_msg"),"이메일을"))return;
			else if(!($(".radio").is(":checked"))){				
				$("#mailcheck_msg").text("뉴스메일을 체크하세요.").css("color", "red");				
				return;
			}else if(!($("#agr_agreeCheck1").is(":checked"))){				
				$("#agr1_msg").text("이용약관에 동의하지 않으면 가입할수 없습니다.").css("color", "red");				
				return;
			}else if(!($("#agr_agreeCheck2").is(":checked"))){				
				$("#agr2_msg").text("개인정보 수집 및 이용에 동의하지않으면 가입할수 없습니다.").css("color", "red");				
				return;
			}	
			//정규식으로 제어
			
/* 			else if(!idReg.test($("#mem_id").val())){ 				
 				$("#id_msg").text("사용할 수 없는 아이디 입니다.").css("color", "red");
 				$("#mem_id").focus();
 				return; 				
 			} */else if(!pwdReg.test($("#mem_pwd").val())){ 				 				
 				$("#pwd_msg").text("사용할 수 없는 비밀번호 입니다.").css("color", "red");
 				$("#mem_pwd").focus();
 				return; 				
 			}else if(($("#mem_pwd").val())!=($("#mem_pwd1").val())){
 				$("#pwd1_msg").text("비밀번호가 일치하지 않습니다.").css("color", "red");
 				$("#mem_pwd1").focus();
 				return;
 			}else if(!phReg.test($("#tel1").val())){
				$("#tel_msg").text("전화번호를 제대로 입력하세요.").css("color", "red");
 				$("#tel1").focus(); 			
 			}else if(!phReg.test($("#tel2").val())){
				$("#tel_msg").text("전화번호를 제대로 입력하세요.").css("color", "red");
 				$("#tel2").focus();
 			}else if(!mailReg.test($("#mail1").val())){
 				$("#mail_msg").text("메일주소를 제대로 입력하세요.").css("color", "red");
 				$("#mail1").focus();
 			}else if(!mail2Reg.test($("#mail2").val())){
 				$("#mail_msg").text("메일주소를 제대로 입력하세요.").css("color", "red");
 				$("#mail2").focus();
 			}
			else{				
				$("#f_writeForm").attr({
					"method":"post",
					"action":"/board/boardInsert.do"
				});
				//$("#f_writeForm").submit();				
				alert("가입");
				
			}
		});
/* 		$("#idcheck").click(function(){
			$.ajax({
				url : "/board/idCheck.do",
			    type : "post",
			    data : $("#join_form").serialize(),
			    error : function(){
					alert("실패");
			    },
			    success : function(resultData){
			     
			    if(resultData==1){
					$("#id_msg").text("사용중인 아이디").css("color","red");
			      	$("#mem_id").select();
			    }else if(resultData==0){
			      	$("#id_msg").text("사용가능 아이디").css("color","blue");
			      
				}     
				}
			});
		}); */

		
		//아이디 정상입력했을시 메시지제거
		$("#mem_id").blur(function(){
			if(idReg.test($("#mem_id").val())){				
				$("#id_msg").text("");
			}
		});
		$("#mem_pwd").blur(function(){
			if(pwdReg.test($("#mem_pwd").val())){				
				$("#pwd_msg").text("");
			}
		});
		$("#mem_pwd1").blur(function(){
			if(($("#mem_pwd").val())==($("#mem_pwd1").val())){				
				$("#pwd1_msg").text("");
			}
		});
		
		$("#mem_id").keyup(function(){
			if(!idReg.test($("#mem_id").val())){ 				
				$("#id_msg").text("사용할 수 없는 아이디 입니다.").css("color", "red");
				$("#mem_id").focus();
				return; 				
			}
			else if($("#mem_id").val()!=""){				
				$("#id_msg").text("");
			}
		});
		
		$("#mem_answer").keyup(function(){			
			if($("#mem_answer").val()!=""){				
				$("#answer_msg").text("");
			}
		});
		$("#mem_post").keyup(function(){
			if($("#mem_post").val()!=""){				
				$("#post_msg").text("");
			}
		});
		$("#mem_address1").keyup(function(){
			if($("#mem_address1").val()!=""){				
				$("#adr1_msg").text("");
			}
		});
		$("#mem_address2").keyup(function(){
			if($("#mem_address2").val()!=""){				
				$("#adr2_msg").text("");
			}
		});
		$("#tel1").keyup(function(){
			if($("#tel1").val()!=""){				
				$("#tel_msg").text("");
			}
		});
		$("#tel2").keyup(function(){
			if($("#tel2").val()!=""){				
				$("#tel_msg").text("");
			}
		});
		$("#mail1").keyup(function(){
			if($("#mail1").val()!=""){				
				$("#mail_msg").text("");
			}
		});
		$("#mail2").keyup(function(){
			if($("#mail2").val()!=""){				
				$("#mail_msg").text("");
			}
		});
		$(".radio").mouseout(function(){
			if($(".radio").is(":checked")){
				$("#mailcheck_msg").text("");
			}
		});
		$("#agr_agreeCheck1").mouseout(function(){
			if(($("#agr_agreeCheck1").is(":checked"))){
				$("#agr1_msg").text("");
			}
		});
		$("#agr_agreeCheck2").mouseout(function(){
			if(($("#agr_agreeCheck2").is(":checked"))){
				$("#agr2_msg").text("");
			}
		});
		/* 목록 버튼 클릭 시 처리 이벤트 */
		$("#boardListBtn").click(function(){			
			location.href = "/board/boardList.do";
		});
	});

</script>
</head>
<body>
<div id="container">
	<div id="content">
	<form id="join_form" name="join_form">
	<h4>기본정보</h4>
		<table>
			<tr>
				<td class="tc">아이디</td>
				<td><input type="text" id="mem_id" name="mem_id" maxlength="16">
				<input type="button" id="idcheck" name="idcheck" value="아이디 중복확인">(영문소문자/숫자, 4~16자)&nbsp;<span id="id_msg"></span></td>
			</tr>
			<tr>
				<td class="tc">비밀번호</td>
				<td><input type="password" id="mem_pwd" name="mem_pwd" maxlength="16">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)&nbsp;<span id="pwd_msg"></span></td>
			</tr>			
			<tr>
				<td class="tc">비밀번호 확인</td>
				<td><input type="password" id="mem_pwd1" name="mem_pwd1" maxlength="16"><span id="pwd1_msg"></span></td>
			</tr>			
			<tr>
				<td class="tc">비밀번호 찾기 질문</td>
				<td>
					<select id="mem_ask" name="mem_ask">
						<option value="나의 보물 23호는?">나의 보물 23호는?</option>
						<option value="내가 2살때 살았던 곳은?">내가 2살때 살았던 곳은?</option>						
						<option value="초등학교1학년때 짝궁 이름은?">초등학교1학년때 짝궁 이름은?</option>						
						<option value="할머니의 생년월일은?">할머니의 생년월일은?</option>						
						<option value="내가 존경하는 인물은?">내가 존경하는 인물은?</option>						
						<option value="타인이 모르는 나의 신체비밀은?">타인이 모르는 나의 신체비밀은?</option>						
						<option value="기억에 남는 추억의 장소는?">기억에 남는 추억의 장소는?</option>						
						<option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>						
						<option value="부모님 결혼기념일은?">부모님 결혼기념일은?</option>						
						<option value="자신이 좋아하는 음식은?">자신이 좋아하는 음식은?</option>						
					</select><span id="ask_msg"></span>
				</td>				
			</tr>	
			<tr>
				<td class="tc">비밀번호 찾기 답변</td>
				<td><input type="text" id="mem_answer" name="mem_answer" maxlength="50"><span id="answer_msg"></span></td>
			</tr>
			<tr>
				<td class="tc">주소</td>
				<td>
					<input type="text" id="mem_post" name="mem_post" maxlength="6">&nbsp;-&nbsp;<input type="button" name="post" id="post" value="우편번호"><span id="post_msg"></span><br>
					<input type="text" id="mem_address1" name="mem_address1" maxlength="100"><span id="adr1_msg"></span><br>
					<input type="text" id="mem_address2" name="mem_address2" maxlength="100"><span id="adr2_msg"></span>
				</td>
			</tr>
			<tr>
				<td class="tc">휴대전화</td>
				<td>
					<select id="tel" name="tel">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					-<input type="text" id="tel1" name="tel1" maxlength="4">-<input type="text" id="tel2" name="tel2" maxlength="4"><span id="tel_msg"></span>
				</td>	
			</tr>
			<tr>
				<td class="tc">이메일</td>
				<td><input type="text" id="mail1" name="mail1" maxlength="16">&nbsp;@&nbsp;<input type="text" id="mail2" name="mail2" maxlength="16" readonly="readonly">
					<select id="mail" name="mail">						
						<option>-이메일 선택-</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="yahoo.com">yahoo.com</option>
						<option value="empas.com">empas.com</option>
						<option value="korea.com">korea.com</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="gmail.com">gmail.com</option>
						<option>직접입력</option>
					</select><span id="mail_msg"></span>
				</td>
			</tr>
			<tr>
				<td class="tc">뉴스메일</td>
				<td>뉴스 메일을 받으시겠습니까?
					<input type="radio" class="radio" name="mem_mailCheck" value="수신" >수신함
					<input type="radio" class="radio" name="mem_mailCheck">수신안함<span id="mailcheck_msg"></span>
				</td>	
			</tr>		
		</table>
	</form>
	</div>
	
	<!-- 약관 -->
	<h4>이용약관 동의</h4>
	<div class="agr_div">	
		<div>
			<textarea readonly="readonly" style="resize: none">
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
			</textarea>			
		</div>
		<div class="agr_div2">이용약관에 동의하십니까?<input type="checkbox" id="agr_agreeCheck1" name="agr_agreeCheck">동의함&nbsp;<span id="agr1_msg"></span></div>
	</div>
	
	<h4>개인정보 수집 및 이용 동의</h4>
	<div class="agr_div">	
		<div>
			<textarea readonly="readonly" style="resize: none" class="form-control">
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
약관에 동의하셈
			</textarea>
		</div>
		<div class="agr_div2">개인정보 수집 및 이용에 동의하십니까?<input type="checkbox" id="agr_agreeCheck2" name="agr_agreeCheck">동의함&nbsp;<span id="agr2_msg"></span></div>
	</div>
	<div class="contentBtn">
		<input type="button" id="cancel" name="cancel" value="회원가입취소" class="bbb">
		<input type="button" id="join" name="join" value="회원가입" class="bbb">
	</div>
</div>	
</body>
</html>