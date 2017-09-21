package com.ronglian.log.vo;

import org.apache.ibatis.type.Alias;

/**
 *
 * @author 
 */
@Alias("LogDocErrorDetail")
public class LogDocErrorDetail{
    /**
     * 主键id
     */
    private String id;
    /**
     * 错误类型id
     */
    private String errorId;
    /**
     * 错误类型
     */
    private String errorType;
    /**
     * 错误子类型
     */
    private String errorSubtype;
    /**
     * 描述
     */
    private String errorDesc;
    /**
     * 异常
     */
    private String errorException;

    /**
     * 主键id
     */
    public String getId(){
        return this.id;
    }

    /**
     * 主键id
     */
    public void setId(String id){
        this.id = id;
    }    
    /**
     * 错误类型id
     */
    public String getErrorId(){
        return this.errorId;
    }

    /**
     * 错误类型id
     */
    public void setErrorId(String errorId){
        this.errorId = errorId;
    }    
    /**
     * 错误类型
     */
    public String getErrorType(){
        return this.errorType;
    }

    /**
     * 错误类型
     */
    public void setErrorType(String errorType){
        this.errorType = errorType;
    }    
    /**
     * 错误子类型
     */
    public String getErrorSubtype(){
        return this.errorSubtype;
    }

    /**
     * 错误子类型
     */
    public void setErrorSubtype(String errorSubtype){
        this.errorSubtype = errorSubtype;
    }    
    /**
     * 描述
     */
    public String getErrorDesc(){
        return this.errorDesc;
    }

    /**
     * 描述
     */
    public void setErrorDesc(String errorDesc){
        this.errorDesc = errorDesc;
    }    
    /**
     * 异常
     */
    public String getErrorException(){
        return this.errorException;
    }

    /**
     * 异常
     */
    public void setErrorException(String errorException){
        this.errorException = errorException;
    }    
}