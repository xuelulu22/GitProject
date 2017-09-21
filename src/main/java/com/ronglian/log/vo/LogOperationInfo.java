package com.ronglian.log.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 *
 * @author 
 */
@Alias("LogOperationInfo")
public class LogOperationInfo{
    /**
     * 主键id
     */
    private String id;
    /**
     * 
     */
    private String ip;
    /**
     * 操作类型
     */
    private String optType;
    /**
     * 操作模块
     */
    private String optModel;
    /**
     * 操作时间
     */
    private Date optTime;
    /**
     * 操作人id
     */
    private String optUserId;
    /**
     * 操作人姓名
     */
    private String optUserName;
    /**
     * 操作描述
     */
    private String optDesc;

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
     * 
     */
    public String getIp(){
        return this.ip;
    }

    /**
     * 
     */
    public void setIp(String ip){
        this.ip = ip;
    }    
    /**
     * 操作类型
     */
    public String getOptType(){
        return this.optType;
    }

    /**
     * 操作类型
     */
    public void setOptType(String optType){
        this.optType = optType;
    }    
    /**
     * 操作模块
     */
    public String getOptModel(){
        return this.optModel;
    }

    /**
     * 操作模块
     */
    public void setOptModel(String optModel){
        this.optModel = optModel;
    }    
    /**
     * 操作时间
     */
    public Date getOptTime(){
        return this.optTime;
    }

    /**
     * 操作时间
     */
    public void setOptTime(Date optTime){
        this.optTime = optTime;
    }    
    /**
     * 操作人id
     */
    public String getOptUserId(){
        return this.optUserId;
    }

    /**
     * 操作人id
     */
    public void setOptUserId(String optUserId){
        this.optUserId = optUserId;
    }    
    /**
     * 操作人姓名
     */
    public String getOptUserName(){
        return this.optUserName;
    }

    /**
     * 操作人姓名
     */
    public void setOptUserName(String optUserName){
        this.optUserName = optUserName;
    }    
    /**
     * 操作描述
     */
    public String getOptDesc(){
        return this.optDesc;
    }

    /**
     * 操作描述
     */
    public void setOptDesc(String optDesc){
        this.optDesc = optDesc;
    }    
}