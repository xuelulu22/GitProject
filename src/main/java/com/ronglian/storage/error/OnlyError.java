package com.ronglian.storage.error;



/**
 * 唯一性错误
 * 项目名称：basePlatform   
 * 类名称：OnlyError   
 * 类描述：   
 * 创建人：linbin   
 * 创建时间：2016年7月31日 下午10:21:30      
 * @version
 */
public enum OnlyError {
	
    DATA_HAS_EXIT("50001","数据已经存在");
    

    
	private String errorCode;
	
	private String errorMsg;
	
	private OnlyError(String errorCode,String errorMsg){
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
