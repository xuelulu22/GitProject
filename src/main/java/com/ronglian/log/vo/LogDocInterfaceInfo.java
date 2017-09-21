package com.ronglian.log.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 *
 * @author 
 */
@Alias("LogDocInterfaceInfo")
public class LogDocInterfaceInfo{
    /**
     * 
     */
    private String id;
    /**
     * 文档版本
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
     * 文档类型名称
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
     * 上传时间
     */
    private Date docUploadDate;
    /**
     * 上传成功次数
     */
    private Integer docUploadSuccess;
    /**
     * 上传失败次数
     */
    private Integer docUploadFail;

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
     * 文档版本
     */
    public String getDocVersion(){
        return this.docVersion;
    }

    /**
     * 文档版本
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
     * 文档类型名称
     */
    public String getDocTypeName(){
        return this.docTypeName;
    }

    /**
     * 文档类型名称
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
    /**
     * 上传成功次数
     */
    public Integer getDocUploadSuccess(){
        return this.docUploadSuccess;
    }

    /**
     * 上传成功次数
     */
    public void setDocUploadSuccess(Integer docUploadSuccess){
        this.docUploadSuccess = docUploadSuccess;
    }    
    /**
     * 上传失败次数
     */
    public Integer getDocUploadFail(){
        return this.docUploadFail;
    }

    /**
     * 上传失败次数
     */
    public void setDocUploadFail(Integer docUploadFail){
        this.docUploadFail = docUploadFail;
    }    
}