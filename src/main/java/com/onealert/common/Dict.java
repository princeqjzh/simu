package com.onealert.common;


public class Dict {
	public static final String deleted_1="1"; 
	public static final String undeleted_0="0"; 
	public static final String STATUS_ACTIVE = "ACTIVE";//使用中
	public static final String STATUS_INACTIVE = "INACTIVE";//未使用未激活（license可用未激活）
	
	public static final String EXPIRED_TIME_TYPE_MONTH = "month";//按月开通
	public static final String EXPIRED_TIME_TYPE_DAY = "day";//按天开通
	
	/**
	 * uc_License表 uc_user表 字段 LICENSE_TYPE 
	 */
	public static final String LICENSE_TYPE_BASE = "base";//标准版
	public static final String LICENSE_TYPE_NORM = "norm";//标准版
	public static final String LICENSE_TYPE_PRO = "pro";//pro版
}