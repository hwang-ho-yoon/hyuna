<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>

	<div id="wrapper" style="height: auto;">
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
		
		<div class="col-md-12" style="padding: 0"> 
			<font size="5px">배송지 정보</font><div class="radio3 radio-check radio-inline col-md-offset-7"> <input type="radio" id="radio4" name="radio2" value="option1"> <label for="radio4"> 주문자와 동일</label> </div>
			<hr></hr>
		</div>
		<table class="table table-hover table-bordered">
			<tr>
				<td>성명</td>
				<td>황호윤</td>
				<td>이메일</td>
				<td>ehddbs70@naver.com</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>010-5663-9227</td>
				<td>우편번호</td>
				<td>420101 <button class="btn btn-default btn-xs" style="margin: 0">검색</button></td>
			</tr>
			<tr>
				<td>기본주소</td>
				<td colspan="3">역곡1동</td>
			</tr>
			<tr>
				<td>상세주소</td>
				<td colspan="3">한양수자인 아파트</td>
			</tr>
			<tr>
				<td>메시지</td>
				<td colspan="3">부재시 경비실에 던져주세요</td>
			</tr>
		</table>
		
		<div class="col-md-12" style="padding: 0"> 
			<h3>결제 정보</h3> 
			<hr></hr>
		</div>
		<table class="table table-hover table-bordered">
			<tr>
				<td>결제금액</td>
				<td>30000원</td>
			</tr>
			<tr>
				<td>결제방식</td>
				<td>
					<select class="form-control">
						<option>무통장</option>
						<option>카드결제</option>
					</select> 
				</td>
			</tr>
			<tr>
				<td>결제도우미</td>
				<td>국민은행 : 황호윤 210701-04-266770</td>
			</tr>
		</table>
		<div align="center">
			<button class="btn btn-default">결제</button>
			<button class="btn btn-default">취소</button>
		</div>
		</div>
		
<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 -->
<input type="text" name="" class="postcodify_postcode5" value="" />
<button id="postcodify_search_button">검색</button><br />
<input type="text" name="" class="postcodify_jibeon_address" value="" /><br />
<input type="text" name="" class="postcodify_details" value="" /><br />


<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script type= ""> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	
