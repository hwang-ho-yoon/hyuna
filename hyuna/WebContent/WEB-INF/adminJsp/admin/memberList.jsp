<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){		
		//이름 클릭시 상세 페이지 이동을 위한 처리 이벤트
		$(".goDetail").click(function(){			
			var mem_no = $(this).parents("tr").attr("data-num");
			$("#mem_no").val(mem_no);
			//상세 페이지로 이동하기 위해 form 추가
			
			$("#detailForm").attr({
				"method":"get",
				"action":"/admin/memberDetail.do"
			});
			$("#detailForm").submit();			
		});
	});
	
	/* 정렬 버튼 클릭시 처리함수 */
	function setOrder(order_by){
		$("#order_by").val(order_by);
		if($("#order_sc").val()=='DESC'){
			$("#order_sc").val('ASC');
		}else{
			$("#order_sc").val('DESC');
		}
		goPage(1);
	}
	
	/* 검색과 한 페이지에 보여줄 레코드 수 처리 및 페이징을 */
	function goPage(page){
		if($("#search").val()=="all"){
			$("#keyword").val("");
		}
		$("#page").val(page);
		$("#f_search").attr({
			"method":"get",
			"action":"/board/boardList.do"
		});
		$("#f_search").submit();
	}
</script>
</head>
<body>
<div id="wrapper">
	<div class="contentTit" class="col-md-12"><h3>회원 리스트</h3></div>
		
		<!-- 상세 페이지 이동을 위한 form -->
		<form id="detailForm" name="detailForm">
			<input type="hidden" id=mem_no name="mem_no">
		<%-- 	<input type="hidden" id="page" name="page" value="${data.page }">
			<input type="hidden" id="pageSize" name="pageSize" value="${data.pageSize }">--%>
		</form> 
		
		<!-- 검색기능 시작 -->
		<div id="boardSearch">
			<form id="f_search" name="f_search" class="form-inline">
<%-- 				<input type="hidden" id="page" name="page" value="${data.page }">
				<input type="hidden" id="order_by" name="order_by" value="${data.order_by }">
				<input type="hidden" id="order_sc" name="order_sc" value="${data.order_sc }"> --%>
				<table summary="검색" class="col-md-12 table" >
					<colgroup>
						<col width="70&"></col>
						<col width="30&"></col>
					</colgroup>
					<tr>				
						<td id="btd1">				
							<label>검색조건</label>
							<select id="search" name="search" class="form-control input-sm" style="height: 30px; width: 80px">
								<option value="all">전체</option> 
								<option value="b_title">제목</option> 
								<option value="b_content">내용</option> 
								<option value="b_name">작성자</option> 
							</select>
							<input type="text" name="keyword" id="keyword" value="검색어를 입력하세요" class="input-sm form-control">
							<button type="button" id="searchData" class="btn btn-default btn-sm" style="margin: 0">검색</button>						
							<button type="button" id="excelDown" class="btn btn-default btn-sm" style="margin: 0">엑셀 다운로드</button>							
						</td>
						<td id="btd2">한페이지에
							<select id="pageSize" name="pageSize">
								<option value="1">1줄</option>
								<option value="2">2줄</option>
								<option value="3">3줄</option>
								<option value="5">5줄</option>
								<option value="7">7줄</option>
								<option value="10">10줄</option>
							</select>							
						</td>						
					</tr>					
				</table>
			</form>
		</div>
					
		<!-- =======================리스트 시작	========================= -->
		<div id="boardList" class="col-md-12">
		<table summary="게시판 리스트" style="background:white; " class="col-md-12 table">
			<colgroup>
				<col width="10%"/>
				<col width="10%"/>
				<col width="20%"/>
				<col width="30%"/>
				<col width="30%"/>
			</colgroup>
			<thead>
 				<tr>
					<th><a href="javascript:setOrder('b_num');">회원번호
<%-- 						<c:choose>
							<c:when test="${data.order_by=='b_num' and data.order_sc=='ASC' }">▲</c:when>
							<c:when test="${data.order_by=='b_num' and data.order_sc=='DESC' }">▼</c:when>
							<c:otherwise>▲</c:otherwise>
						</c:choose> --%>
					</a></th>
					<th>이름</th>
					<th><a href="javascript:setOrder('b_date');">아이디
	<%-- 					<c:choose>
							<c:when test="${data.order_by=='b_date' and data.order_sc=='ASC' }">▲</c:when>
							<c:when test="${data.order_by=='b_date' and data.order_sc=='DESC' }">▼</c:when>
							<c:otherwise>▲</c:otherwise>
						</c:choose> --%>
					</a></th>
					<th class="borcle">회원 가입일</th>
					<th class="borcle">마지막 수정일</th>
				</tr>
			</thead>
			<tbody>
			<!-- 데이터 출력 -->
			<c:choose>
				<c:when test="${not empty memberList }">
					<c:forEach var="member" items="${memberList }" varStatus="status">
						<tr class="tac" data-num="${member.mem_no }">
							<td>${member.mem_no }</td>
							<td class="tal">
							 	<span class="goDetail" style="cursor: pointer;">${member.mem_name }</span>
							</td>
							<td>${member.mem_id }</td>
							<td>${member.mem_registdate }</td>
							<td>${member.mem_updatedate }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
				<tr>
					<td colspan="4" class="tac">회원이 존재하지 않습니다</td>
				</tr>
				</c:otherwise>
			</c:choose>			
			</tbody>
		</table>
		</div>
		<!-- 리스트 종료 -->
		
		<!-- 글쓰기 버튼 출력 시작 -->
		<div class="contentBtn">
			<input type="button" value="글쓰기" id="InsertFormBtn">
		</div>
		<!-- 글쓰기 버튼 출력 종료 -->
		
		<!-- 페이지 네비게이션 시작 -->
		<div id="boardPage">
			<%-- <tag:paging page="${param.page }" total="${total }" list_size="${data.pageSize }"/> --%>
		</div>
		<!-- 페이지 네비게이션 종료 -->
		
	</div>
</body>
</html>