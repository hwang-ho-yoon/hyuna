<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <script type="text/javascript" src="jquery-1.11.0.min.js"></script> -->
<script>
	/* <tr id="tr_opt"><th>기종</th><th>color</th><th>재고</th><th>공개</th></tr> */
	$(function() {

		$("#optionadd").click(function() {
			var add = $("#machine").val();
			var color = $("#color").val();
			var table = document.getElementById("tb_option");
			var tablerows = table.getElementsByTagName("tr").length;

			if (!tableChk(add, color, "이미 입력되어 있는 옵셥입니다."))
				return;
			else {
				new_tr = "<tr class='opt_tr'><td><span>" + add
						+ "</span></td>";
				new_tr += "<td><span>" + color + "</span></td>";
				new_tr += "<td><input type='number' class='form-control col-xs-2 input-sm' id='stocktd_text' value="+0+" step='5' min='0'></td>";
				new_tr += "<td><input type='checkbox' id='openchk' checked></td>";
				new_tr += "<td><button type='button' id='minus' class='minus'>-</button></td></tr>";
				$("#tb_option").append(new_tr);
			}
		});

		//옵션없애기
		$(document).on("click", ".minus", function() {
			var rowtr = $(this).parents("tr");
			rowtr.remove();
		});

		//상품등록버튼
		$("#regPrd").click(function() {
			$("#boardInsert").attr({"method":"post","action":"/prd/productInsert.do"});
  		    $("#boardInsert").submit();
  		    /* 
			var jsonObj = tableToJson(document.getElementById("tb_option")); // table id를 던지고 함수를 실행한다.
			console.log(JSON.stringify(jsonObj)); 
			
			$.ajax({
				url : "prdInsert.do",
				type : "POST",
				headers : {//전달할때 문서타입은 json이라고 말해주기위해 필요하다.
					"content-Type" : "application/json",
					"X-HTTP-Method-Overide" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify(jsonObj),
				success : onSuccess,
				error : onError
			}); */
			
			
		});
	});
	
	function onSuccess(json, status) {
		alert($.trim(json));
	}
	function onError(data, status) {
		alert("error");
	}

	//옵션값이 중복되는지 체크한다.
	function tableChk(add1, add2, str) {
		//var machine=$(".opt_tr").children(0).css('background','red');
		var tf = true;
		if (document.getElementById("tb_option").getElementsByTagName("tr").length > 1) {
			for (var start = 0; start < document.getElementById("tb_option").getElementsByTagName("tr").length - 1; start++) {
				var machine = $(".opt_tr:eq(" + start + ")").children('td:eq(0)').find('span').text();
				var color = $(".opt_tr:eq(" + start + ")").children('td:eq(1)').find('span').text();
				console.log(machine + "   " + color);

				if (add1 == machine && add2 == color) {
					alert(str);
					tf = false;
					return;
				} else {
					tf = true;
				}
			}
		} else {
			tf = true;
		}
		return tf;
	}

	function chkSubmit(v_item, v_name) {
		if (v_item.val().replace(/\s/g, "") == "") {
			alert(v_name + " 입력해 주세요.");
			v_item.val("");
			v_item.focus();
			return false;
		} else {
			return true;
		}
	}
	
	function tableToJson(table) { // 변환 함수
	    var data = [];
	    var headers = [];
	    for(var i=0; i<table.rows[0].cells.length; i++) {
	        headers[i] = table.rows[0].cells[i].innerHTML.toLowerCase().replace(/ /gi,'');
	    }
    
	    for(var i=1; i<table.rows.length; i++) {
	        var tableRow = table.rows[i];
	        var rowData = {};

			for (var j = 0; j < tableRow.cells.length ; j++) {
				if (j==0||j==1) {
					var tabledata = $(".opt_tr:eq(" + (i-1) + ")").children('td:eq('+j+')').find('span').text();
					console.log(tabledata);
					rowData[headers[j]] = tabledata;
				} else {
					var tabledata = $(".opt_tr:eq(" + (i-1) + ")").children('td:eq('+j+')').find("input[type='number']").val();
					console.log(tabledata);
					rowData[headers[j]] = tabledata;
				}
			}
	        data.push(rowData);
	    }

	    return data;
	}
</script>
</head>
<body>
	<div id="wrapper">
		<form id="basicInfo" name="basicInfo" enctype="multipart/form-data">
			<h1>상품등록</h1>
			<table class="shop_table">

				<tr>
					<td>제품코드</td>
					<td><input type="text" id="prd_no" name="prd_no" value="001"/></td>
					<td>* 상품명</td>
					<td><input type="text" id="prd_name" name="prd_name"  value="prd_001"/></td>
				</tr>
				<tr>
					<td>제조사</td>
					<td><input type="text" id="prd_manufacturer"
						name="prd_manufacturer" value="(주)가리봉"/></td>
					<td>원산지</td>
					<td><input type="text" id="prd_origine" name="prd_origine" value="Corea"/></td>
				</tr>
				<tr>
					<td>매입가</td>
					<td><input type="number" id="prd_prcprice" name="prd_prcprice" value="20150"/></td>
					<td>정상가</td>
					<td><input type="number" id="prd_orgprice" name="prd_orgprice" value="20500"/></td>
				</tr>
				<tr>
					<td>* 판매가</td>
					<td><input type="number" id="prd_saleprice" name="prd_saleprice" value="25000"/></td>
					<td>전시상태</td>
					<td><input type="checkbox" id="prd_open" name="prd_open" checked/></td>
				</tr>
				<tr>
					<td>옵션사용</td>
					<td colspan="3"><label class="checkbox-inline"> <input
							type="checkbox" id="option_color" name="option_color" checked/>Color
					</label> <label class="checkbox-inline"> <input type="checkbox"
							id="option_brand" name="option_brand" checked/>Brand
					</label></td>

				</tr>
				<tr>
					<td colspan="4">이미지 설정</td>
				</tr>
				<tr>
					<td>Main</td>
					<td colspan="3"><input type="file" name="file1" id="file1"></td>
				<tr>
					<td>Thumbnail</td>
					<td colspan="3"><input type="file" name="file2" id="file2"></td>
				</tr>
				<tr>
					<td>Detail</td>
					<td colspan="3"><input type="file" name="file3" id="file3"></td>
				</tr>
			</table>
		</form>
		
		<br>
		<div id="optionbrand" class="optionbrand">
			<select id="brand">
				<option>SAMSUNG</option>
				<option>LG</option>
				<option>APPLE</option>
			</select> <select id="machine">
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

			<button type="button" id="optionadd" name="optionadd" class="btn btn-default pull-right btn-xs">+</button>

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
				<tr id="tr_opt">
					<th>기종</th>
					<th>color</th>
					<th>재고</th>
					<th>공개</th>
					<th>선택</th>
				</tr>


			</table>
			<button type="button" id="regPrd" name="regPrd">상품등록</button>
		</div>
	</div>
</body>
</html>