package com.hyuna.vo;

public class ProductVO {
	private String prd_no;
	private String prd_name;
	private String prd_manufacturer;
	private String prd_origine;
	private int prd_prcprice;
	private int prd_orgprice;
	private int prd_saleprice;
	private String prd_open;
	private String option_color;
	private String option_brand;
	/*prdimage - file1
				file2
				file3
				
	prd_opt - prd_brand			
				prd_color
				prd_stock
				prd_opt_open*/
	public String getPrd_no() {
		return prd_no;
	}
	public void setPrd_no(String prd_no) {
		this.prd_no = prd_no;
	}
	public String getPrd_name() {
		return prd_name;
	}
	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}
	public String getPrd_manufacturer() {
		return prd_manufacturer;
	}
	public void setPrd_manufacturer(String prd_manufacturer) {
		this.prd_manufacturer = prd_manufacturer;
	}
	public String getPrd_origine() {
		return prd_origine;
	}
	public void setPrd_origine(String prd_origine) {
		this.prd_origine = prd_origine;
	}
	public int getPrd_prcprice() {
		return prd_prcprice;
	}
	public void setPrd_prcprice(int prd_prcprice) {
		this.prd_prcprice = prd_prcprice;
	}
	public int getPrd_orgprice() {
		return prd_orgprice;
	}
	public void setPrd_orgprice(int prd_orgprice) {
		this.prd_orgprice = prd_orgprice;
	}
	public int getPrd_saleprice() {
		return prd_saleprice;
	}
	public void setPrd_saleprice(int prd_saleprice) {
		this.prd_saleprice = prd_saleprice;
	}
	public String getPrd_open() {
		return prd_open;
	}
	public void setPrd_open(String prd_open) {
		this.prd_open = prd_open;
	}
	public String getOption_color() {
		return option_color;
	}
	public void setOption_color(String option_color) {
		this.option_color = option_color;
	}
	public String getOption_brand() {
		return option_brand;
	}
	public void setOption_brand(String option_brand) {
		this.option_brand = option_brand;
	}	
}
