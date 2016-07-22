<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.11.0.min.js"></script>
<script>
/* <tr id="tr_opt"><th>기종</th><th>color</th><th>재고</th><th>공개</th></tr> */
	$(function(){

		$("#optionadd").click(function(){
			var add=$("#machine").val();
			console.log(add);
			var color=$("#color").val();
			console.log(color);
//			var new_tr ="<tr><td><input type='text' id='mc_text' value="+add+"></td>";
//			new_tr+="<td><input type='text' id='color_text' value="+color+"></td>";
			var new_tr ="<tr class='opt_tr'><td><span>"+add+"</span></td>";
			    new_tr+="<td><span>"+color+"</span></td>";
			    new_tr+="<td><input type='number' class='form-control col-xs-2 input-sm' id='stocktd_text' value="+0+" step='5' ></td>";
			    new_tr+="<td><input type='checkbox' id='openchk' checked></td>";
			    new_tr+="<td><button type='button' id='minus' class='minus'>-</button></td></tr>";
			    $("#tb_option").append(new_tr);
			
			
			return false;
			
		});
		
		//옵션없애기
		$(document).on("click", ".minus", function() {

	        var rowtr= $(this).parents("tr");
	        rowtr.remove();
	 	});
		
	});
</script>
</head>
<body>
<div id="wrapper">
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
	<td><input type="text" id="prd_prcprice" name="prd_prcprice"/></td>
	<td>정상가</td>
	<td><input type="text" id="prd_orgprice" name="prd_orgprice"/></td>
</tr>
<tr>
	<td>판매가</td>
	<td><input type="text" id="prd_saleprice" name="prd_saleprice"/></td>
	<td>전시상태</td>
	<td><input type="checkbox" id="prd_open" name="prd_open"/></td>
</tr>
<tr>
	<td>옵션사용</td>
	<td colspan="3"> 
	<label class="checkbox-inline">
	<input type="checkbox" id="option_color" name="option_color"/>Color
	</label>

	<label class="checkbox-inline">
	<input type="checkbox" id="option_brand" name="option_brand"/>Brand  
	</label>
	
	</td>
					 
					 
					 
					 
					 
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
<div id="optionbrand" class="optionbrand" >
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

<button type="button" id="optionadd" name="optionadd" class="btn btn-default pull-right btn-xs" > + </button>

</div>
<!-- 선택된옵션표 -->
<div id="optiontable" class="optiontable">
<table id="tb_option" class="table">
	<colgroup>
					<col width="25%" />
					<col width="25%" />
					<col width="25%" />
					<col width="15%" />
					<col width="10%" />
	</colgroup>
	<tr id="tr_opt"><th>기종</th><th>color</th><th>재고</th><th>공개</th><th>선택</th></tr>
	
	
</table>
</div>
</div>
</body>
</html>