package com.ronglian.storage.validation.vo;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;

import com.ronglian.log.vo.LogDocErrorDetail;
import com.ronglian.log.vo.LogDocErrorInfo;


/**
 * 项目名称：changhai   
 * 类名称：ValidationResult   
 * 类描述： 校验结果  
 * 创建人：linbin   
 * 创建时间：2016年8月1日 下午3:47:33      
 * @version
 */
public class ValidationResult {
	
	/** 返回的数据文档  document **/
	private Document dataDocument;
	
	/** 是否成功 **/
	private boolean sucess = true;
	
	/** 错误主信息 **/
	private LogDocErrorInfo errorMsg = new LogDocErrorInfo();
	
	/** 错误明细信息 **/
	private List<LogDocErrorDetail> errorMsgDetial = new ArrayList<LogDocErrorDetail>();
	
	/** 头部信息map **/
	private Map<String,String> headerMap;
	

	public boolean isSucess() {
		return sucess;
	}

	public void setSucess(boolean sucess) {
		this.sucess = sucess;
	}

	public LogDocErrorInfo getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(LogDocErrorInfo errorMsg) {
		this.errorMsg = errorMsg;
	}

	public List<LogDocErrorDetail> getErrorMsgDetial() {
		return errorMsgDetial;
	}

	public void setErrorMsgDetial(List<LogDocErrorDetail> errorMsgDetial) {
		this.errorMsgDetial = errorMsgDetial;
	}

	public Document getDataDocument() {
		return dataDocument;
	}

	public void setDataDocument(Document dataDocument) {
		this.dataDocument = dataDocument;
	}

	public Map<String, String> getHeaderMap() {
		return headerMap;
	}

	public void setHeaderMap(Map<String, String> headerMap) {
		this.headerMap = headerMap;
	}
	
}
