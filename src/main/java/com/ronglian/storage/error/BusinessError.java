package com.ronglian.storage.error;



/**
 * 业务类型
 * 项目名称：basePlatform   
 * 类名称：BusinessError   
 * 类描述：   
 * 创建人：linbin   
 * 创建时间：2016年7月31日 下午10:21:42      
 * @version
 */
public enum BusinessError {
	
    EMIAL("30001","邮件格式错误"),
    
    PNONE("30002","电话号码错误"),
    
    IDCARD("30003","身份证错误"),
    
    CELLPHONE("30004","手机号码错误");
    
 
	private String errorCode;
	
	private String errorMsg;
	
	private BusinessError(String errorCode,String errorMsg){
		this.errorCode = errorCode;
		this.errorMsg = errorMsg;
	}


	public String getErrorCode() {
		return errorCode;
	}


	public String getErrorMsg() {
		return errorMsg;
	}


	
}
