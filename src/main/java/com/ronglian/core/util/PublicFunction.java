package com.ronglian.core.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class PublicFunction {

	/**
	 * 处理字符串 ，null转换成空
	 * @param str
	 * @return
	 */
	public static String doNull(String str) {
		if ((str == null) || (str.trim().length() == 0)) {
			return "";
		}
		return str.trim();
	}
	
	/**
	 * object ，null转换成空
	 * @param str
	 * @return
	 */
	public static String doNull1(Object object) {
		if (object == null) {
			return "";
		}
		return object.toString();
	}
	
	
	/**
	 * 处理字符串 ，null转换成空
	 * @param str
	 * @return
	 */
	public static Object doNull(Object object) {
		if (object == null) {
			return "";
		}
		return object;
	}
	
	/**
	 * 日期字符串 ，null转换成空
	 * @param str
	 * @return
	 */
	public static String doNull(Date date) {
		if (date == null) {
			return "";
		} else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			return sdf.format(date);
		}
	}
	
	/**
	 * 比较两个字符串是否相等
	 * @param str1
	 * @param str2
	 * @return
	 */
	public static boolean equals(String str1, String str2) {
		if(str1 == null) {
			str1 = "";
		}
		if(str2 == null) {
			str2 = "";
		}
		if(str1.equals(str2)) {
			return true;
		}
		return false;
	}

}
