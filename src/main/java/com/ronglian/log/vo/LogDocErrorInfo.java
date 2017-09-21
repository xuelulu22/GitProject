package com.ronglian.log.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 *
 * @author 
 */
@Alias("LogDocErrorInfo")
public class LogDocErrorInfo{
    /**
     * 
     */
    private String id;
    /**
     * 版本
     */
    private String docVersion;
    /**
     * 文档名称
     */
    private String docName;
    /**
     * 文档编码
     */
    private String docCode;
    /**
     * 文档类型编码
     */
    private String docTypeCode;
    /**
     * 文档类型编码
     */
    private String docTypeName;
    /**
     * 机构编码
     */
    private String docOrgCode;
    /**
     * 文档上传类型
     */
    private String docUploadType;
    /**
     * 文档上传业务系统
     */
    private String docUploadSystem;
    /**
     * 文档
     */
    private String docXml;
    /**
     * 是否解决
     */
    private String isSolve;
    /**
     * 上传时间
     */
    private Date docUploadDate;

    /**
     * 
     */
    public String getId(){
        return this.id;
    }

    /**
     * 
     */
    public void setId(String id){
        this.id = id;
    }    
    /**
     * 版本
     */
    public String getDocVersion(){
        return this.docVersion;
    }

    /**
     * 版本
     */
    public void setDocVersion(String docVersion){
        this.docVersion = docVersion;
    }    
    /**
     * 文档名称
     */
    public String getDocName(){
        return this.docName;
    }

    /**
     * 文档名称
     */
    public void setDocName(String docName){
        this.docName = docName;
    }    
    /**
     * 文档编码
     */
    public String getDocCode(){
        return this.docCode;
    }

    /**
     * 文档编码
     */
    public void setDocCode(String docCode){
        this.docCode = docCode;
    }    
    /**
     * 文档类型编码
     */
    public String getDocTypeCode(){
        return this.docTypeCode;
    }

    /**
     * 文档类型编码
     */
    public void setDocTypeCode(String docTypeCode){
        this.docTypeCode = docTypeCode;
    }    
    /**
     * 文档类型编码
     */
    public String getDocTypeName(){
        return this.docTypeName;
    }

    /**
     * 文档类型编码
     */
    public void setDocTypeName(String docTypeName){
        this.docTypeName = docTypeName;
    }    
    /**
     * 机构编码
     */
    public String getDocOrgCode(){
        return this.docOrgCode;
    }

    /**
     * 机构编码
     */
    public void setDocOrgCode(String docOrgCode){
        this.docOrgCode = docOrgCode;
    }    
    /**
     * 文档上传类型
     */
    public String getDocUploadType(){
        return this.docUploadType;
    }

    /**
     * 文档上传类型
     */
    public void setDocUploadType(String docUploadType){
        this.docUploadType = docUploadType;
    }    
    /**
     * 文档上传业务系统
     */
    public String getDocUploadSystem(){
        return this.docUploadSystem;
    }

    /**
     * 文档上传业务系统
     */
    public void setDocUploadSystem(String docUploadSystem){
        this.docUploadSystem = docUploadSystem;
    }    
    /**
     * 文档
     */
    public String getDocXml(){
        return this.docXml;
    }

    /**
     * 文档
     */
    public void setDocXml(String docXml){
        this.docXml = docXml;
    }    
    /**
     * 是否解决
     */
    public String getIsSolve(){
        return this.isSolve;
    }

    /**
     * 是否解决
     */
    public void setIsSolve(String isSolve){
        this.isSolve = isSolve;
    }    
    /**
     * 上传时间
     */
    public Date getDocUploadDate(){
        return this.docUploadDate;
    }

    /**
     * 上传时间
     */
    public void setDocUploadDate(Date docUploadDate){
        this.docUploadDate = docUploadDate;
    }    
}