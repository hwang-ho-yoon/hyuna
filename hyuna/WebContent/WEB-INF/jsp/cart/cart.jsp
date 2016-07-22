<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Cart</title>
</head>
<script type="text/javascript" src="/include/js/jquery-1.12.2.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#all").click(function() {
			for(var i=0; i<document.frm1.length; i++) {
				document.frm1.elements[i].checked=true;
			}
		});
	});

	/* function check_onclick() {
		for(var i=0; i<document.frm1.length; i++) {
			document.frm1.elements[i].checked=true;
		}
	} */
</script>
<body>
	<div class="single-product-area">
       <!-- <div class="zigzag-bottom"></div> -->
       <!-- <div class="container"> -->
           <div class="row">
              <!--  <div class="col-md-4">

               </div> -->
               
               <div id="wrapper">
                   <div class="product-content-right">
                       <div class="woocommerce">
                           <form method="post" action="#">
                               <table cellspacing="0" class="shop_table cart">
                                   <thead>
                                       <tr>
                                           <th class="product-remove"><input type="checkbox" id="all" name="all"></th>
                                           <th class="product-thumbnail">&nbsp;</th>
                                           <th class="product-name">상품명</th>
                                           <th class="product-name">옵션명</th>
                                           <th class="product-price">판매가</th>
                                           <th class="product-quantity">수량</th>
                                           <th class="product-deliveryCharge">배송비</th>
                                           <th class="product-subtotal">합계</th>
                                       </tr>
                                   </thead>
                                   <tbody>
                                       <tr class="cart_item">
                                           <td class="product-remove">
                                               <!-- <a title="Remove this item" class="remove" href="#">×</a>  -->
                                               <input type="checkbox">
                                           </td>

                                           <td class="product-thumbnail">
                                               <a href="single-product.html"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="/hyuna/include/image/product-thumb-2.jpg"></a>
                                           </td>

                                           <td class="product-name">
                                               <a href="single-product.html">Ship Your Idea</a> 
                                           </td>
                                           
                                           <td class="product-name">
                                               <a href="#">아이폰6 / 아이언맨</a> 
                                           </td>

                                           <td class="product-price">
                                               <span class="amount">￦15,000</span> 
                                           </td>

                                           <td class="product-quantity">
                                               <div class="quantity buttons_added">
                                                   <!-- <input type="button" class="minus" value="-"> -->
                                               		<div class="col-xs-2">
													    <input type="number" size="4" class="form-control" min="0" value="1">
													</div>
                                               		<button type="button" class="btn btn-default">수정</button>                                                    
                                                   <!-- <input type="button" class="plus" value="+"> -->
                                               </div>
                                           </td>

                                           <td class="product-deliveryCharge">
                                               <span class="amount">￦2,500</span> 
                                           </td>
                                           
                                           <td class="product-subtotal">
                                           	<span class="subtotal">￦17,500</span>
                                           </td>
                                       </tr>
                                       
                                       <tr>
                                           <td class="actions" colspan="8">
                                               <!-- <div class="coupon">
                                                   <label for="coupon_code">Coupon:</label>
                                                   <input type="text" placeholder="Coupon code" value="" id="coupon_code" class="input-text" name="coupon_code">
                                                   <input type="submit" value="Apply Coupon" name="apply_coupon" class="button">
                                               </div> -->
                                               <div class="btn_group1">
                                            	<input type="button" value="선택삭제" name="checkDelete" id="checkDelete" class="checkout-button button alt wc-forward">
                                                <input type="button" value="장바구니 비우기" name="allDelete" id="allDelete" class="checkout-button button alt wc-forward">
                                                <input type="button" value="선택주문" name="checkOrder" id="checkOrder" class="checkout-button button alt wc-forward">
                                            </div>
										<!-- </td>
										<td> -->
										<div class="btn_group2">
                                               <input type="button" value="쇼핑계속하기" name="shopping" id="shopping" class="checkout-button button alt wc-forward">
                                               <input type="button" value="전체주문" name="allOrder" id="allOrder" class="checkout-button button alt wc-forward">
                                           </div>
                                           </td>
                                       </tr>                                     
                                   </tbody>
                               </table>
                           </form>

                           <div class="cart-collaterals">


                           <!-- <div class="cross-sells">
                               <h2>You may be interested in...</h2>
                               <ul class="products">
                                   <li class="product">
                                       <a href="single-product.html">
                                           <img width="325" height="325" alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="include/image/product-2.jpg">
                                           <h3>Ship Your Idea</h3>
                                           <span class="price"><span class="amount">£20.00</span></span>
                                       </a>

                                       <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="single-product.html">Select options</a>
                                   </li>

                                   <li class="product">
                                       <a href="single-product.html">
                                           <img width="325" height="325" alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="include/image/product-4.jpg">
                                           <h3>Ship Your Idea</h3>
                                           <span class="price"><span class="amount">£20.00</span></span>
                                       </a>

                                       <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="single-product.html">Select options</a>
                                   </li>
                               </ul>
                           </div> -->


                           <div class="cart_totals ">
                               <h2>Cart Totals</h2>

                               <table cellspacing="0">
                                   <tbody>
                                       <!-- <tr class="cart-subtotal">
                                           <th>총 주문금액</th>
                                           <td><span class="amount">￦15,000</span></td>
                                       </tr>
                                       
                                       <tr class="cart-deliveryCharge">
                                       	<th>배송비</th>
                                       	<td><span class="deliveryCharge">￦2,500</span></td>
                                       </tr>
                                       
                                       <tr class="order-total">
                                           <th>최종 결제금액</th>
                                           <td><strong><span class="amount">￦17,500</span></strong> </td>
                                       </tr> -->
                                       <tr class="cart-subtotal">
                                           <th>총 주문금액</th>
                                           <td><span class="amount">￦15,000</span></td>
                                      
                                       	<th>배송비</th>
                                       	<td><span class="deliveryCharge">￦2,500</span></td>
                                       
                                           <th>최종 결제금액</th>
                                           <td><strong><span class="amount">￦17,500</span></strong> </td>
                                       </tr>
                                   </tbody>
                               </table>
                           </div>


                           <!-- <form method="post" action="#" class="shipping_calculator">
                               <h2><a class="shipping-calculator-button" data-toggle="collapse" href="#calcalute-shipping-wrap" aria-expanded="false" aria-controls="calcalute-shipping-wrap">Calculate Shipping</a></h2>

                               <section id="calcalute-shipping-wrap" class="shipping-calculator-form collapse">

                               <p class="form-row form-row-wide">
                               
                               </p>

                               <p class="form-row form-row-wide"><input type="text" id="calc_shipping_state" name="calc_shipping_state" placeholder="State / county" value="" class="input-text"> </p>

                               <p class="form-row form-row-wide"><input type="text" id="calc_shipping_postcode" name="calc_shipping_postcode" placeholder="Postcode / Zip" value="" class="input-text"></p>


                               <p><button class="button" value="1" name="calc_shipping" type="submit">Update Totals</button></p>

                               </section>
                           </form> -->


                           </div>
                       </div>                        
                   </div>                    
               </div>
           </div>
       </div>
	</body>