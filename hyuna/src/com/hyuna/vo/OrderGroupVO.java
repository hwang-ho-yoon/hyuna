package com.hyuna.vo;

import java.util.List;

public class OrderGroupVO {
   private int ogr_no;         
   private String ogr_date;
   private String ogr_reciName;
   private String ogr_reciTel;
   private int ogr_reciZipCode;      
   private String ogr_reciAddr1; 
   private String ogr_reciAddr2;
   private String ogr_payPlan;
   private String ogr_accHold;
   private String ogr_message;
   private int ogr_accHoldNo;
   private int ogr_approvalNo;
   private int ogr_cardNo;
   private int ogr_invoice;
   private String ogr_state;
   private int mem_no;
	
   private List<OrderProductVO> OrderProductVO;

	public List<OrderProductVO> getOrderProductVO() {
		return OrderProductVO;
	}

	public void setOrderProductVO(List<OrderProductVO> orderProductVO) {
		OrderProductVO = orderProductVO;
	}
	
	public int getOgr_no() {
		return ogr_no;
	}
	public void setOgr_no(int ogr_no) {
		this.ogr_no = ogr_no;
	}
	public String getOgr_date() {
		return ogr_date;
	}
	public void setOgr_date(String ogr_date) {
		this.ogr_date = ogr_date;
	}
	public String getOgr_reciName() {
		return ogr_reciName;
	}
	public void setOgr_reciName(String ogr_reciName) {
		this.ogr_reciName = ogr_reciName;
	}
	public String getOgr_reciTel() {
		return ogr_reciTel;
	}
	public void setOgr_reciTel(String ogr_reciTel) {
		this.ogr_reciTel = ogr_reciTel;
	}
	public int getOgr_reciZipCode() {
		return ogr_reciZipCode;
	}
	public void setOgr_reciZipCode(int ogr_reciZipCode) {
		this.ogr_reciZipCode = ogr_reciZipCode;
	}
	public String getOgr_reciAddr1() {
		return ogr_reciAddr1;
	}
	public void setOgr_reciAddr1(String ogr_reciAddr1) {
		this.ogr_reciAddr1 = ogr_reciAddr1;
	}
	public String getOgr_reciAddr2() {
		return ogr_reciAddr2;
	}
	public void setOgr_reciAddr2(String ogr_reciAddr2) {
		this.ogr_reciAddr2 = ogr_reciAddr2;
	}
	public String getOgr_payPlan() {
		return ogr_payPlan;
	}
	public void setOgr_payPlan(String ogr_payPlan) {
		this.ogr_payPlan = ogr_payPlan;
	}
	public String getOgr_accHold() {
		return ogr_accHold;
	}
	public void setOgr_accHold(String ogr_accHold) {
		this.ogr_accHold = ogr_accHold;
	}
	public int getOgr_accHoldNo() {
		return ogr_accHoldNo;
	}
	public String getOgr_message() {
		return ogr_message;
	}
	public void setOgr_message(String ogr_message) {
		this.ogr_message = ogr_message;
	}
	public void setOgr_accHoldNo(int ogr_accHoldNo) {
		this.ogr_accHoldNo = ogr_accHoldNo;
	}
	public int getOgr_approvalNo() {
		return ogr_approvalNo;
	}
	public void setOgr_approvalNo(int ogr_approvalNo) {
		this.ogr_approvalNo = ogr_approvalNo;
	}
	public String getOgr_state() {
		return ogr_state;
	}
	public int getOgr_cardNo() {
		return ogr_cardNo;
	}
	public void setOgr_cardNo(int ogr_cardNo) {
		this.ogr_cardNo = ogr_cardNo;
	}
	public int getOgr_invoice() {
		return ogr_invoice;
	}
	public void setOgr_invoice(int ogr_invoice) {
		this.ogr_invoice = ogr_invoice;
	}
	public void setOgr_state(String ogr_state) {
		this.ogr_state = ogr_state;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
}
