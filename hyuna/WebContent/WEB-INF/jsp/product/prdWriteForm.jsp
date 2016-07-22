<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.11.0.min.js"></script>
<script>

	$(function(){

		$("#optionadd").click(function(){
			var add=$("#machine").val();
			var color=$("#color").val();
			
			var new_tr = $("<tr>");
			new_tr.addClass("option");
			
			//새로운 글이 추가될 때 row 태그 객체 생성 및 class를 선언함.
			var new_tr = $("<tr>");
			new_tr.addClass("option");
			
			
			//작성자 정보가 지정될 p태그
			var writer_p = $("<p>");
			writer_p.addClass("writer");
			
			//작성자정보의 이름
			var name_span=$("<span>");
			name_span.addClass("name");
			name_span.html($("#user_name").val()+"님");
			
			 //작성일시
			var date_span=$("<span>");
			date_span.html("/"+today+" ");
			
			//삭제하기
			var del_input = $("<input>");
			del_input.attr({
				"type" : "button",
				"value": "삭제하기"
			});
			del_input.addClass("delete_btn");
			
			
			//내용
			var content_p = $("<p>");
			content_p.html($("#comment").val());
			
			//조립하기
			writer_p.append(name_span).append(date_span).append(del_input);
			new_li.append(writer_p).append(content_p);
			$("#comment_list").append(new_li);
			
			//입력내용 지우기
			$("#user_name").val("");
			$("#comment").val(""); 
			
			return false;
			
		});
	});
</script>
</head>
<body>
<form>
<h1>상품등록</h1>
<table class="shop_table">
<tr>
	<td>제품코드 </td>
	<td><input type="text" id="prd_no" name="prd_no"/></td>
	<td>상품명</td>
	<td><input type="text" id="prd_name" name="prd_name"/></td>
</tr>
<tr>
	<td>제조사</td>
	<td><input type="text" id="prd_manufacturer" name="prd_manufacturer"/></td>
	<td>원산지</td>
	<td><input type="text" id="prd_origine" name="prd_origine"/></td>
</tr>
<tr>
	<td>매입가</td>
	<td><input type="radio" id="prd_prcprice" name="prd_prcprice"/></td>
	<td>정상가</td>
	<td><input type="radio" id="prd_orgprice" name="prd_orgprice"/></td>
</tr>
<tr>
	<td>판매가</td>
	<td><input type="radio" id="prd_saleprice" name="prd_saleprice"/></td>
	<td>전시상태</td>
	<td><input type="radio" id="prd_open" name="prd_open"/></td>
</tr>
<tr>
	<td>옵션사용</td>
	<td colspan="3"> Brand : <input type="checkbox" id="option_brand" name="option_brand"/>
					 Color : <input type="checkbox" id="option_color" name="option_color"/></td>
</tr>
<tr>
	<td colspan="4">이미지 설정</td>
</tr>
<tr>	
	<td >Main</td>
	<td colspan="3"><input type="file" name="file1" id="file1"></td>
<tr>
	<td >Thumbnail</td>
	<td colspan="3"><input type="file" name="file2" id="file2"></td>
</tr>
<tr>
	<td >Detail</td>
	<td colspan="3"><input type="file" name="file3" id="file3"></td>
</tr>
</table>
</form>
<br>
<div id="optionbrand" class="optionbrand" style = "display:block; border:1px solid black; width:400px;">
<select id="brand">
	<option >SAMSUNG</option>
	<option>LG</option> 
	<option>APPLE</option>
</select>
<select id="machine">
	<option>아이폰6/6S</option>
	<option>아이폰6플러스</option>
	<option>아이폰SE/5/5S</option>
	<option>아이폰4/4S</option>
	<option>애플워치</option>
</select>
<!-- <div id="optioncolor" class="optioncolor" style = "display:block; border:1px solid black; width:200px; float:left;" > -->

<select id="color">
	<option>빨강</option>
	<option>노랑</option>
	<option>파랑</option>
</select>
<!-- </div> -->
<input type="button" id="optionadd" name="optionadd" value="+"/>

</div>
<!-- 선택된옵션표 -->
<div id="optiontable" class="optiontable">
<table id="tb_option" >
	<tr><td>기종</td><td>color</td><td>추가요금</td><td>가격</td><td>재고</td><td>공개</td></tr>
</table>
</div>

</body>
</html>