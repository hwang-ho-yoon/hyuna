<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script type="text/javascript">
$(function() {
	$("input:checked").each(function(){
		if(this.checked)"Y"
		else"N"
	});
});
function prdUpdate(prd_no){
	<%--if ($("#file").val().indexOf(".") > -1) {
		if (chkfile()) {
		$("input:checkbox").each(function(){
			if(this.checked)"Y"
			else"N"
		});--%>
		if(!$("#file1").val().indexOf(".") > -1){
			$("#file1").val('');
		}
		if(!$("#file2").val().indexOf(".") > -1){
			$("#file2").val('');
		}
		if(!$("#file3").val().indexOf(".") > -1){
			$("#file3").val('');
		}
		
		
		      
		
		<%--var chk=$("#prd_display").val();
		console.log(chk);
		
		if(chk==true){
			document.forms["prd_update"]["prd_display"].value='Y';
		}--%>
		
		$("#prd_update").attr({
			"method" : "post",
			"action" : "/product/prdUpdate.do"
		});
		$("#prd_update").submit();
		<%--		} else
			return;

	} else {
		$("#f_writeForm").attr({
			"method" : "post",
			"action" : "/board/boardUpdate.do"
		});
		$("#f_writeForm").submit();

	}--%>
	
}

</script>
<div id="wrapper">
	<div class="container">
	
		<div class="row">
			<h1>상품수정</h1>
			<div style="float:right;margin-bottom:5px;">
				<button type="button" id="updatePrd" name="updatePrd" onclick="prdUpdate('${detail.prd_no}')">수정완료</button>
				<!-- <button type="button" id="regPrd" name="regPrd" onclick="prdWriteFrom()">새상품등록</button> -->
				<button type="button" id="PrdList" name="PrdList" onclick="prdRgtList()">상품목록</button>
			</div>
			<form id="prd_update" name="prd_update" enctype="multipart/form-data">
			<table class="shop_table">
				<tr>
					<td>제품코드</td>
					<td><input type="text" id="prd_no" name="prd_no"  value="${detail.prd_no}" readonly/></td>
					<td>* 상품명</td>
					<td><input type="text" id="prd_name" name="prd_name"  value="${detail.prd_name}"></td>
				</tr>
				<tr>
					<td>제조사</td>
					<td><input type="text" id="prd_manufacturer"
						name="prd_manufacturer" value="${detail.prd_manufacturer}"/></td>
					<td>원산지</td>
					<td><input type="text" id="prd_origine" name="prd_origine" value="${detail.prd_origine}"/></td>
				</tr>
				<tr>
					<td>매입가</td>
					<td><input type="number" id="prd_prcprice" name="prd_prcprice" value="${detail.prd_prcprice}"/></td>
					<td>정상가</td>
					<td><input type="number" id="prd_orgprice" name="prd_orgprice" value="${detail.prd_orgprice}"/></td>
				</tr>
				<tr>
					<td>* 판매가</td>
					<td><input type="number" id="prd_saleprice" name="prd_saleprice" value="${detail.prd_saleprice}"/></td>
					<td>전시상태</td>
					<%-- <td><input type="checkbox" id="prd_display" name="checkbox" /> ${detail.prd_display}</td> --%>
					<td><select id="prd_display" name="prd_display"><option value='Y'>Y</option><option value='N'>N</option></select>${detail.prd_display}</td>
				</tr>
				<tr>
					<td colspan="4">상품설명</td>
				</tr>
				<tr>
					<td colspan="4"><textarea rows="5" cols="20" id="prd_desc" name="prd_desc">${detail.prd_desc}</textarea></td>
				</tr>
				<%-- <tr>
					<td>옵션사용</td>
					<td colspan="3"><span>Color :  ${detail.prd_optclr}</span> 
					<span>Brand :  ${detail.prd_optbrd}</span> </td>

				</tr> --%>
				<tr>
					<td colspan="4">이미지 설정</td>
				</tr>
				<tr>
					<td>Main</td>
					<td colspan="3"><input type="file" name="file1" id="file1"><span>${detail.img_1 }</span>
				<tr>
					<td>Thumbnail</td>
					<td colspan="3"><input type="file" name="file2" id="file2"><span>${detail.img_2 }</span>
				</tr>
				<tr>
					<td>Detail</td>
					<td colspan="3"><input type="file" name="file3" id="file3"><span>${detail.img_3 }</span>
					</td>
				</tr>
			</table>
			</form>
		</div>
		<br>
		<div class="row">
			<div id="optiontable" class="optiontable">
				<c:choose>
					<c:when test="${not empty optList }">
						<table id="tb_option" class="table">
							<colgroup>
								<col width="20%" />
								<col width="20%" />
								<col width="20%" />
								<col width="20%" />
								<col width="20%" />
							</colgroup>
							<tr id="tr_opt">
								<th>옵션번호</th>
								<th>Color</th>
								<th>Brand</th>
								<th>기종</th>
								<th>표시여부</th>
							</tr>


							<c:forEach var="opt" items="${optList }" varStatus="status">
								<tr class="tac" data-num="${opt.prd_d_no }">
									<td>${opt.prd_d_no }</td>
									<td>${opt.color_detail }</td>
									<td>${opt.model_machine }</td>
									<td>${opt.prd_d_display }</td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>등록된 옵션이 없습니다.</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>