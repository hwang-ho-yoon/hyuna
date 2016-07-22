<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	 <%@ page trimDirectiveWhitespaces="true" %>

	<div id="container">
		<form>
			<table class="table table-bordered">
		    <thead>
		      <tr>     
		        <th width="10%">글번호</th>
		        <th width="60%">제목</th>
		        <th width="10%">작성자</th>
		        <th width="10%">작성일</th>
		        <th width="10%">조회수</th>
		      </tr>
		    </thead>
		    <tbody>
		     	<%-- <c:choose>
						<c:when test="${not empty faqList }">
							<c:forEach var = "faq" items="${faqList}" varStatus="status">
							<tr data-num="${faq.b_num }">
								<td>${faq.faq_no }</td> <!-- 번호 -->
								<td>
									<span>${faq.faq_title }</span>
								</td>
								<td>${faq.faq_content}</td>
								<td>${faq.faq_writedate }</td>
								<td>${faq.faq_hit }</td>
							</tr>
							</c:forEach>
						</c:when>
						<c:otherwise> --%>
							<tr>
								<td colspan="6">등록된 게시물이 존재하지 않습니다</td>
							</tr>
					<%-- 	</c:otherwise>
					</c:choose> --%>
		    </tbody>
		  </table>
		</form>
		<div class="row col-md-3 col-md-offset-4" id="page">
		<a href="#">&lt;&lt;</a><a href="#">&nbsp;1&nbsp;</a><a href="#">&nbsp;2&nbsp;</a><a href="#">&nbsp;3&nbsp;</a>
		<a href="#">&nbsp;4&nbsp;</a><a href="#">&nbsp;5&nbsp;</a><a href="#">&nbsp;6&nbsp;</a><a href="#">&nbsp;7&nbsp;</a>
		<a href="#">&nbsp;8&nbsp;</a><a href="#">&nbsp;9&nbsp;</a><a href="#">&nbsp;10&nbsp;</a>
		<a href="#">&gt;&gt;</a>
		</div>
		<form>
			<div class="col-md-1 col-md-offset-4">
			<input type="submit" class="btn btn-info btn-block" id="write" value="글쓰기">
			</div>
		</form>
		<form>
			<div class="col-md-2 col-md-offset-4">
				<select class="form-control">
				  <option>제목</option>
				  <option>작성자</option>
				  </select>
			</div>
			<div class="col-md-2">
			 <input type="text" class="form-control" id="search" name="search" placeholder="검색">
			</div>
			<div class="col-md-1">
			<input type="submit" class="btn btn-info btn-block" id="searchBtn" name="searchBtn" value="검색">
			</div>
		</form>
	</div>


