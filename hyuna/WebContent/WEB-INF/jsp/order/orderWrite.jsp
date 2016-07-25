<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
<script type="text/javascript">
	$(function() {
		$("#postcodify_search_button").postcodifyPopUp();
		$("#pay_btn").click(function() {
			location.href = "/order/orderPay.do"
		});
		$("#paySelect").change(function () {
			if ($("#paySelect").val() == "mutongjang") {
				var data =	"<table class='table' style='margin-bottom: 0px'>"
					data += "<tr>"
					data +=	"<td>국민은행 : </td>"
					data +=	"<td>황호윤 210701-04-266770</td>"
					data += "</tr>"
					data += "<tr>"
					data +=	"<td>입금자명 : </td>"
					data += "<td><input type='text' class='form-control input-sm'></td>"
					data += "</tr>"
					data += "</table>"
				$("#payManager").html(data);
			} else {
				var data =	"<table class='table' style='margin-bottom: 0px'>"
					data += "<tr>"
					data +=	"<td>카드사 : </td>"
					data +=	"<td><select id='paySelect' class='form-control'>"
					data += "<option value='kb'>국민은행</option>"
					data += "<option value='sin'>신한은행</option>"
					data += "</select></td>"
					data += "</tr>"
					data += "<tr>"
					data +=	"<td>카드번호 : </td>"
					data += "<td><input type='text' class='form-control input-sm'></td>"
					data += "</tr>"
					data += "</table>";
				$("#payManager").html(data);
			}
		});
	});
</script>
	<div id="wrapper">
		<div class="col-md-12" style="padding: 0"> 
			<h3>상품정보</h3> 
			<hr></hr>
		</div>
		<table class="table table-hover table-bordered">
			<tr>
				<td>이미지</td>
				<td>상품명</td>
				<td>판매가</td>
				<td>수량</td>
				<td>합계</td>
			</tr>
			<tr>
				<td>이미지1</td>
				<td>비비므망고 땡땡이 아크릴 패치</td>
				<td>15,000원</td>
				<td>2</td>
				<td>30000원</td>
			</tr>
		</table>
		<div class="col-md-offset-8" align="right">
			<table class="table table-hover table-bordered">
				<tr>
					<td>총 주문 금액</td>
					<td>30000원</td>
				</tr>
			</table>
		</div>
		
			<div class="col-md-5" style="padding: 0">
				<font size="5px">배송지 정보</font>
			</div>
			<div class="col-md-7" align="right" style="padding-right: 0px; padding-top: 10px">
				<div class="radio3 radio-check radio-inline" style="padding: 0" align="right"> 
						<input type="radio" id="radio4" name="radio2" value="option1">
						<label for="radio4"> 주문자와 동일</label>
				</div>
				<div class="radio3 radio-check radio-inline" style="padding: 0" align="right"> 
						<input type="radio" id="radio5" name="radio2" value="option2">
						<label for="radio5"> 새로운 배송지</label>
				</div>
			</div>
			<div class="col-md-12" style="padding: 0">
				<hr></hr>
			</div>
		<table class="table table-hover table-bordered">
			<tr>
				<td style="padding-top: 12px">성명</td>
				<td><input type="text" class="form-control input-sm"></td>
				<td style="padding-top: 12px">이메일</td>
				<td><input type="text" class="form-control input-sm"></td>
			</tr>
			<tr>
				<td style="padding-top: 12px">연락처</td>
				<td><input type="text" class="form-control input-sm"></td>
				<td style="padding-top: 12px">우편번호</td>
				<td><div class="form-inline"> <input type="text" class="form-control input-sm postcodify_postcode5" readonly="readonly" style="background: white;"><button id="postcodify_search_button" class="btn btn-default btn-sm" style="margin: 0">검색</button></div></td>
			</tr>
			<tr>
				<td style="padding-top: 12px">기본주소</td>
				<td colspan="3"><input type="text" class="form-control input-sm postcodify_jibeon_address" readonly="readonly" style="background: white;"></td>
			</tr>
			<tr>
				<td style="padding-top: 12px">상세주소</td>
				<td colspan="3"><input type="text" class="form-control input-sm postcodify_details"></td>
			</tr>
			<tr>
				<td style="padding-top: 12px">메시지</td>
				<td colspan="3"><input type="text" class="form-control input-sm"></td>
			</tr>
		</table>
		
		<div class="col-md-12" style="padding: 0"> 
			<h3>결제 정보</h3> 
			<hr></hr>
		</div>
		<table class="table table-hover table-bordered">
			<tr>
				<td style="width: 23%">결제금액</td>
				<td>30000원</td>
			</tr>
			<tr>
				<td>결제방식</td>
				<td>
					<select id="paySelect" class="form-control">
						<option value="mutongjang">무통장</option>
						<option value="card">카드결제</option>
					</select> 
				</td>
			</tr>
			<tr>
				<td style="padding-top: 35px">결제도우미</td>
				<td>
					<span id="payManager">
						<table class='table' style="margin-bottom: 0px">
							<tr>
								<td>국민은행 : </td>
								<td>황호윤 210701-04-266770</td>
							</tr>
							<tr>
								<td>입금자명 : </td>
								<td><input type='text' class='form-control input-sm'></td>
							</tr>
						</table>
					</span>
				</td>
			</tr>
		</table>
		<div align="center">
			<button class="btn btn-default" id="pay_btn">결제</button>
			<button class="btn btn-default">취소</button>
		</div>
		</div>
