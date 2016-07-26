package com.hyuna.vo;

public class CartVO extends ProductVO {
	private int cart_no = 0;			// 장바구니 번호
	private int cart_quantity = 0;		// 수량
	
	public int getCart_no() {
		return cart_no;
	}
	
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	
	public int getCart_quantity() {
		return cart_quantity;
	}
	
	public void setCart_quantity(int cart_quantity) {
		this.cart_quantity = cart_quantity;
	}	
}
