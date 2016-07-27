package com.hyuna.vo;

public class CartVO  {
	private int cart_no = 0;			// 장바구니 번호
	private int cart_quantity = 0;		// 수량
	
	private int prd_d_no;
	private int mem_no;
	
	
	
	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public int getPrd_d_no() {
		return prd_d_no;
	}

	public void setPrd_d_no(int prd_d_no) {
		this.prd_d_no = prd_d_no;
	}

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
