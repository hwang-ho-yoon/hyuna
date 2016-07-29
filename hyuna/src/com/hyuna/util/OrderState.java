package com.hyuna.util;

public interface OrderState {
	//public static final String STANDBY_DEPOSIT = "입금대기";
	//public static final String COMPLETE_DEPOSIT = "입금완료";
	//public static final String SHIPPED = "배송중";
	//public static final String CANCEL = "취소";
	//public static final String RECALL = "반품";
	public static final String STANDBY_DEPOSIT = "standby_deposit";
	public static final String COMPLETE_DEPOSIT = "complete_deposit";
	public static final String SHIPPED = "shipping";
	public static final String COMPLETE_SHIPPED = "complete_shipped";
	public static final String CANCEL = "cancel";
	public static final String RECALL = "recall";
}
