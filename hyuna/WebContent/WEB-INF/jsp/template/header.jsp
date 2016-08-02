<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">		
	$(function(){
		$("#my").click(function(){
			$("#myModal").modal('show');			
		});
		$("#pwdchkBtn").click(function(){
			$.ajax({
				url : "/member/pwdCheck.do",
			    type : "post",
			    data : $("#pwd_form").serialize(),
			    error : function(){
					alert("실패");
			    },
			    success : function(resultData){			     
				    if(resultData==1){	
				      	location.href = "/member/membermenu.do";
				    }else{
				      	alert("틀림");			      	
					}    
				}
			});			
		});
		
		$("#mem_pwd").keydown(function(evt){
			if(evt.keyCode==13)
				return false;			
		});
				
		$("#login").click(function(){
			location.href = "/member/loginform.do";
		});
		$("#logout").click(function(){
			location.href = "/member/logout.do";
		});
		$("#memberjoin").click(function(){
			location.href = "/member/memberjoin.do";
		});
		$("#cart").click(function(){			
			location.href = "/cart/cart.do";
		});
		$("#my").mouseover(function(){
			$("#my").css("text-decoration","underline");	
		});
		$("#my").mouseout(function(){
			$("#my").css("text-decoration","none");	
		});
		$("#login").mouseover(function(){
			$("#login").css("text-decoration","underline");	
		});
		$("#login").mouseout(function(){
			$("#login").css("text-decoration","none");	
		});
		$("#logout").mouseover(function(){
			$("#logout").css("text-decoration","underline");	
		});
		$("#logout").mouseout(function(){
			$("#logout").css("text-decoration","none");	
		});
		$("#memberjoin").mouseover(function(){
			$("#memberjoin").css("text-decoration","underline");	
		});
		$("#memberjoin").mouseout(function(){
			$("#memberjoin").css("text-decoration","none");	
		});
		$("#cart").mouseover(function(){
			$("#cart").css("text-decoration","underline");	
		});
		$("#cart").mouseout(function(){
			$("#cart").css("text-decoration","none");	
		});
		$("#prd").bind('click',function(){
			//var link=$(this).attr('href');
			//alert(link);
			//location.href = "/product/prdMainList.do?model_machine=+"$(this).attr('href');
			location.href = "/product/prdMainList.do";
		})
		
	});
	
	 function goSearch(keyword){
		 $("#model_machine").val(keyword);
			$("#search").attr({
				"method":"get","action":"/product/prdMainList.do"	
			
			});
			$("#search").submit();
		//location.href = "/product/prdMainList.do?model_machine=+"keyword;
	} 
</script>
<form id="search" name="search">
	<input type="hidden" id="model_machine" name="model_machine">
</form>
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                </div>
                <div class="col-md-5">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline" style="margin-top: 20px">                                                
                          <li><i class="fa fa-user"></i><span id="my" style="cursor: pointer; "> 나의정보</span></li>
                            <li><i class="fa fa-user"></i><span id="cart" style="cursor: pointer; "> My Cart</span></li>
                            <c:choose>
                            	<c:when test="${not empty sessionScope.hyunaMember }">
                            		<li><i class="fa fa-user"></i><span id="logout" style="cursor: pointer; "> 로그아웃</span></li>
                            		<li>${sessionScope.hyunaname } 님</li>
                            	</c:when>                            
	                            <c:otherwise>
	                            	<li><i class="fa fa-user"></i><span id="login" style="cursor: pointer; "> 로그인</span></li>
	                            	<li><i class="fa fa-user"></i><span id="memberjoin" style="cursor: pointer; "> 회원가입</span></li>
	                            </c:otherwise>
                            </c:choose>                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="/include/image/logo.png"></a></h1>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <li class="dropdown dropdown-small">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">
	                            <span class="key">Samsung</span>
	                            <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:goSearch('겔럭시');" id="prd">갤럭시</a></li>
                                <li><a href="노트" id="prd">노트</a></li>
                                <!-- <li><a href="#">보급</a></li> -->
                            </ul>
						</li>
                        <li class="dropdown dropdown-small">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">
	                            <span class="key">Apple</span>
	                            <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                            	<li><a href="/product/prdMainList.do?model_machine=4S" id="prd">4S</a></li>
                                <li><a href="5S" id="prd">5S</a></li>
                                <li><a href="6S" id="prd">6S</a></li>
                                <!-- <li><a href="#">7S</a></li> -->
                            </ul>
						</li>
                        <li class="dropdown dropdown-small">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">
	                            <span class="key">LG</span>
	                            <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">G시리즈</a></li>
                                <li><a href="#">G프로</a></li>
                                <li><a href="#">옵티머스</a></li>
                            </ul>
						</li>
                        <li><a href="/order/orderWrite.do">주문조회</a></li>
                        <li><a href="/board/qna/qnaList.do">Q&A</a></li>
                        <li><a href="/board/faq/faqList.do">FAQ</a></li>
						<li><a href="/board/review/reviewList.do">review</a></li>
						<li><a href="/product/prdRgtList.do">상품등록</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    		
    		<div id="myModal" class="modal fade" data-backdrop="static">
	    	<div class="modal-dialog modal-sm">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                <h4 class="modal-title">비밀번호 입력</h4>
		            </div>
		            <div class="modal-body form-inline">
		            <form id="pwd_form">
		            <input type="hidden" name="mem_no" value="${sessionScope.hyunaMember }">
		                  비밀번호:&nbsp;&nbsp;<input type="password" name="mem_pwd" id="mem_pwd" maxlength="16" class="form-control" style="width: 150px">
		            </form>		            	
		         	</div>
		           <div class="modal-footer">
		                <button type="button" class="btn btn-primary btn-sm" id="pwdchkBtn">확인</button>
		                <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">취소</button>
            	   </div>
	         	</div>
         	</div>
         </div>
