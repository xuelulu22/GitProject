package com.ronglian.ch.model;

import java.util.Date;
  /**
   * 检验结果INFO
   ***/
public class LabResult {
	
	private String test_no; 
	private String item_no; 
	private String report_item_code;
	private String report_item_name; 
	private String result; 
	private String units; 
	private String abnormal_indicator;
	private String createby;
	private Date createdate; 
	private String updateby;
	private Date updatedate; 
	private Integer flag;
	
	public String getTest_no() {
		return test_no;
	}
	public void setTest_no(String test_no) {
		this.test_no = test_no;
	}
	public String getItem_no() {
		return item_no;
	}
	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}
	public String getReport_item_code() {
		return report_item_code;
	}
	public void setReport_item_code(String report_item_code) {
		this.report_item_code = report_item_code;
	}
	public String getReport_item_name() {
		return report_item_name;
	}
	public void setReport_item_name(String report_item_name) {
		this.report_item_name = report_item_name;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getUnits() {
		return units;
	}
	public void setUnits(String units) {
		this.units = units;
	}
	public String getAbnormal_indicator() {
		return abnormal_indicator;
	}
	public void setAbnormal_indicator(String abnormal_indicator) {
		this.abnormal_indicator = abnormal_indicator;
	}
	public String getCreateby() {
		return createby;
	}
	public void setCreateby(String createby) {
		this.createby = createby;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public String getUpdateby() {
		return updateby;
	}
	public void setUpdateby(String updateby) {
		this.updateby = updateby;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public Integer getFlag() {
		return flag;
	}
	public void setFlag(Integer flag) {
		this.flag = flag;
	}
	
	
	
}
