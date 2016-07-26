<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true" %>
<script type="text/javascript">
	$(function() {
		$("#postcodify_search_button").postcodifyPopUp();
		$("#pay_btn").click(function() {
			if (!chkOrder($("#ogr_reciName"), "성명을")) {
				return;
			} else if(!chkOrder($("#ogr_reciTel"), "연락처를")) {
				return;
			} else if(!chkOrder($("#ogr_reciZipCode"), "우편번호를")) {
				return;
			} else if(!chkOrder($("#ogr_reciAddr1"), "기본주소를")) {
				return;
			} else if(!chkOrder($("#ogr_reciAddr2"), "상세주소를")) {
				return;
			} else if(!chkOrder($("#ogr_message"), "배송메시지를")) {
				return;
			} else {
				if($("#paySelect").val() == "mutongjang") {
					if (!chkOrder($("#ogr_accHold"), "입금자명을")) {
						return;
					} else if (!chkOrder($("#ogr_accHoldNo"), "입금자 계좌번호를")) {
						return;
					}
				} else if($("#paySelect").val() == "card") {
					if (!chkOrder($("#ogr_cardNo"), "카드번호를")) {
						return;
					}
				} else {
					
				    $("#ord_frm").each( function (index) {
				        $(this).find("input[name=prd_d_no]").attr("name", "targets[" + index + "].targetId");
				        $(this).find("input[name=ord_amount]").attr("name", "targets[" + index + "].targetName");
				    });
				}
			}
		});
		$(".beasong").click(function() {
			if ($(this).val() == "sameMember") {
				
			} else if ($(this).val() == "newBeasong") {
				$("#ogr_reciName").val("");
				$("#ogr_reciTel").val("");
				$("#ogr_reciZipCode").val("");
				$("#ogr_reciAddr1").val("");
				$("#ogr_reciAddr2").val("");
				$("#ogr_message").val("");
			}
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
					data += "<td><input type='text' class='form-control input-sm' id='ogr_accHold' name='ogr_accHold'></td>"
					data += "</tr>"
					data += "<tr>"
					data +=	"<td>입금자 계좌번호 : </td>"
					data += "<td><input type='text' class='form-control input-sm' id='ogr_accHoldNo' name='ogr_accHoldNo'></td>"
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
					data += "<td><input type='text' class='form-control input-sm' id='ogr_cardNo' name='ogr_cardNo'></td>"
					data += "</tr>"
					data += "</table>";
				$("#payManager").html(data);
			}
		});
	});
	function chkOrder(v_item, v_name){
		if(v_item.val().replace(/\s/g,"")==""){
			$(".modal-title").html("입력오류");
			$(".modal-body").html(v_name+" 입력해 주세요");
			$('#myModal').modal('show');
			v_item.val("");
			v_item.focus();	
			return false;
		} else{
			return true;
		}
	}
</script>
	<div id="wrapper">
		<form id="ord_frm">
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
				<td><input type="hidden" name="prd_d_no" value="1" />이미지1</td>
				<td>비비므망고 땡땡이 아크릴 패치</td>
				<td>15,000원</td>
				<td><input type="hidden" name="ord_amount" value="4" />2</td>
				<td>30000원</td>
			</tr>
			<tr>
				<td><input type="hidden" name="prd_d_no" value="2" />이미지1</td>
				<td>갤럭시 s6</td>
				<td>26,000원</td>
				<td><input type="hidden" name="ord_amount" value="3" />2</td>
				<td>70000원</td>
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
				<input type="radio" id="radio4" name="radio2" value="sameMember" checked="checked" class="beasong">
				<label for="radio4"> 주문자와 동일</label>
			</div>
			<div class="radio3 radio-check radio-inline" style="padding: 0" align="right"> 
				<input type="radio" id="radio5" name="radio2" value="newBeasong" class="beasong">
				<label for="radio5"> 새로운 배송지</label>
			</div>
		</div>
		<div class="col-md-12" style="padding: 0">
			<hr></hr>
		</div>
		<table class="table table-hover table-bordered">
			<tr>
				<td style="padding-top: 12px">성명</td>
				<td><input type="text" class="form-control input-sm" id="ogr_reciName" name="ogr_reciName"></td>
				<td style="padding-top: 12px">연락처</td>
				<td><input type="text" class="form-control input-sm" id="ogr_reciTel" name="ogr_reciTel"></td>
			</tr>
			<tr>
				<td style="padding-top: 12px">우편번호</td>
				<td><div class="form-inline"> <input type="text" class="form-control input-sm postcodify_postcode5" readonly="readonly" style="background: white;" id="ogr_reciZipCode" name="ogr_reciZipCode"><button id="postcodify_search_button" class="btn btn-default btn-sm" style="margin: 0">검색</button></div></td>
				<td style="padding-top: 12px">기본주소</td>
				<td><input type="text" class="form-control input-sm postcodify_jibeon_address" readonly="readonly" style="background: white;" id="ogr_reciAddr1" name="ogr_reciAddr1"></td>
			</tr>
			<tr>
				<td style="padding-top: 12px">상세주소</td>
				<td colspan="3"><input type="text" class="form-control input-sm postcodify_details" id="ogr_reciAddr2" name="ogr_reciAddr2"></td>
			</tr>
			<tr>
				<td style="padding-top: 12px">메시지</td>
				<td colspan="3"><input type="text" class="form-control input-sm" id="ogr_message" name="ogr_message"></td>
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
								<td><input type='text' class='form-control input-sm' id="ogr_accHold" name="ogr_accHold"></td>
							</tr>
							<tr>
								<td>입금자 계좌번호 : </td>
								<td><input type='text' class='form-control input-sm' id="ogr_accHoldNo" name="ogr_accHoldNo"></td>
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
		
		
		<div id="myModal" class="modal fade" data-backdrop="static">
	    	<div class="modal-dialog modal-sm">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                <h4 class="modal-title"></h4>
		            </div>
		            <div class="modal-body">
		            	
		         	</div>
		           <div class="modal-footer">
		                <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">확인</button>
            	   </div>
	         	</div>
         	</div>
         </div>
         </form>
	</div>
