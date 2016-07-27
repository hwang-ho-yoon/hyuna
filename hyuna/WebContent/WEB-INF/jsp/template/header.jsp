<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                </div>
                <div class="col-md-5">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                          <li><a href="#"><i class="fa fa-user"></i> 마이메뉴</a></li>
                            <!-- <li><a href="/cart/cart.do"><i class="fa fa-user"></i> My Cart</a></li> -->
                            <li><a href="/cart/cartList.do"><i class="fa fa-user"></i> My Cart</a></li>
                            <c:choose>
                            	<c:when test="${not empty sessionScope.hyunaMember }">
                            		<li><a href=""><i class="fa fa-user"></i> 로그아웃</a></li>
                            	</c:when>                            
	                            <c:otherwise>
	                            	<li><a href="/member/loginform.do"><i class="fa fa-user"></i> 로그인</a></li>
	                            </c:otherwise>
                            </c:choose>
                            <li><a href="/member/memberjoin.do"><i class="fa fa-user"></i> 회원가입</a></li>
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
                                <li><a href="#">갤럭시</a></li>
                                <li><a href="#">노트</a></li>
                                <li><a href="#">보급</a></li>
                            </ul>
						</li>
                        <li class="dropdown dropdown-small">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#">
	                            <span class="key">Apple</span>
	                            <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">5S</a></li>
                                <li><a href="#">6S</a></li>
                                <li><a href="#">7S</a></li>
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
						 
<!-- 						 <button type="button" class="btn btn-info">PHP</button>
						 <button type="button" class="btn btn-info">Blogger</button>
						 <div class="btn-group">
							 <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
							 	Android <span class="caret"></span>
							 </button>
						 
							 <ul class="dropdown-menu" role="menu">
								 <li><a href="#">Android Studio</a></li>
								 <li><a href="#">Eclipse</a></li>
								 <li><a href="#">Basics</a></li>
							 </ul>
						 </div> -->
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
