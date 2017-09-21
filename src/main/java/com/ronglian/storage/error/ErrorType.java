package com.ronglian.storage.error;

/**
 * 项目名称：basePlatform   
 * 类名称：ErrorType   
 * 类描述：   校验错误类型
 * 创建人：linbin   
 * 创建时间：2016年7月31日 下午10:17:45      
 * @version
 */
public enum ErrorType {
	

	 /** XML结构错误 **/
	 STRUCTURE("C_003"),
	 
	 /** Xsd **/
     XSD("C_006"),
     
     /** 值域  **/
     VALUE_FIELD("C_005"),
     
     /** 业务 **/
     BUSINESS("C_001"),
     
     /** 数据格式 **/
     DATA_FORMAT("C_002"),
     
     /** 唯一性校验**/
     ONLY("C_004"),
     
     /** 系统错误  **/
     SYSTEM("C_999");
     
     /** 错误类型 **/
     private String type;
     
     private ErrorType(String type){
    	this.type = type;
     }
     
     public String getType(){
    	 return type;
     }
     

     
}
