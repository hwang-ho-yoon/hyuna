<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="wrapper">	
	<div class="container">
	<div class="row">
	<h1>등록된 상품 목록</h1>
	
	
	<!-- 새상품 등록 -->
	<div class="prdBtn">
	<button type="button" id="InsertBtn" class="btn btn-default pull-right">상품등록</button>
	</div>
	</div>
		
	
	
	<div class="row">
	<!-- 상품목록 테이블 -->
	<table class="table table-hover table-condensed">
  		<colgroup>
					<col width="5%" />
					<col width="15%" />
					<col width="35%" />
					<col width="10%" />
					<col width="15%" />
					<col width="15%" />
		</colgroup>
  		<thead >
  			<tr>
  			<th>#</th><th>코드</th><th>상품명</th><th>상태</th><th>판매가</th><th>등록일</th>
  			</tr>
  		</thead>
  		<tbody>
  			<tr>
  			<td>예시#</td><td>예시코드</td><td>예시상품명</td><td>예시상태</td><td>예시판매가</td><td>예시등록일</td>
  			</tr>
  			<%--===========데이터 출력============ --%>
					<c:choose>
						<c:when test="${not empty boardList }">
							<c:forEach var="board" items="${boardList }" varStatus="status">
								<!-- status 인텍스 상테를 판단가능하다. -->
								<tr class="tac" data-num="${board.b_num }">
									<td>${board.b_num }</td>
									<td class="tal"><span class="goDetail">${board.b_title }</span></td>
									<td>${board.b_date }</td>
									<td>${board.b_name }</td>
									<td>${board.b_date }</td>
									<td>${board.b_name }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise><tr><td colspan="6" class="tac"> 등록된 게시물이 없습니다.</td></tr></c:otherwise>
						
					</c:choose>
  		</tbody>
	</table>
	</div>
	</div>
</div>