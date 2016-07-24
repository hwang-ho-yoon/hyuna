<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>

	<div id="wrapper">
		<div class="col-md-12" style="padding: 0"> 
			<h3>주문 조회</h3> 
			<hr></hr>
		</div>
		<table class="table table-hover table-bordered">
			<tr>
				<th style="width: 30%">조회기간</th>
				<td>
					시작일 
					<div class="col-md-4">
						<input type="text" class="form-control">
					</div>
					종료일
					<div class="col-md-4">
						<input type="text" class="form-control">
					</div>
					  <div class="col-lg-6">
				    <div class="input-group">
				      <input type="text" class="form-control" placeholder="Search for...">
				      <span class="input-group-btn">
				        <button class="btn btn-default" type="button">검색</button>
				      </span>
				    </div><!-- /input-group -->
				  </div><!-- /.col-lg-6 -->
				</td>
			</tr>
		</table>
		<table class="table table-hover table-bordered">
			<tr>
				<th>주문번호</th>
				<th>주문 상품 정보</th>
				<th>상품 금액(수량)</th>
				<th>주문상태</th>
				<th>반품/취소</th>
			</tr>
			<tr>
				<td>20160518212618</td>
				<td>비비드망고 땡땡이 아크릴 패치</td>
				<td>15,000원 (2개)</td>
				<td>구매완료</td>
				<td><button class="btn btn-default btn-sm" style="margin: 0">반품</button></td>
			</tr>
			<tr>
				<td>20160501821234</td>
				<td>갤럭시 노트 3 케이스</td>
				<td>19,000원 (1개)</td>
				<td>구매대기</td>
				<td><button class="btn btn-default btn-sm" style="margin: 0">취소</button></td>
			</tr>
		</table>
	</div>
	
	<!-- 
	
	<script src="/js/jquery-1.8.3.min.js"></script>

<link href="/jquery-ui.css" rel="stylesheet" />
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
 $(function(){
  $.datepicker.regional['ko'] = {
  closeText: '닫기',
  prevText: '이전달',
  nextText: '다음달',
  currentText: '오늘',
  monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
  '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
  monthNamesShort: ['1월','2월','3월','4월','5월','6월',
  '7월','8월','9월','10월','11월','12월'],
  dayNames: ['일','월','화','수','목','금','토'],
  dayNamesShort: ['일','월','화','수','목','금','토'],
  dayNamesMin: ['일','월','화','수','목','금','토'],
  weekHeader: 'Wk',
  dateFormat: 'yy-mm-dd',
  firstDay: 0,
  isRTL: false,
  showMonthAfterYear: true,
  yearSuffix: ''};
  $.datepicker.setDefaults($.datepicker.regional['ko']);

 

  $('#selecter').datepicker({ 
   showOn: 'button',
   buttonImage: '/cal.png', //이미지 url
   buttonImageOnly: true,
   buttonText: "달력",
   changeMonth: true,
   changeYear: true,
   showButtonPanel: true
  });
 });
</script>

 

<input type="text" id="selecter" name="selecter" />
	
	 -->

	 <!-- 
	   	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script>
	  $(function() {
	    $( "#datepicker" ).datepicker();
	  });
	</script>
	  -->