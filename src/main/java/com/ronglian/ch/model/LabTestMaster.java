package com.ronglian.ch.model;

import java.util.Date;
/**
 * 患者检验INFO
 **/
public class LabTestMaster {
	
	private String test_no; 
	private String inpatient_no;  
	private String outpatient_no; 
	private String patient_id;  
	private Integer visit_id;  
	private Date spcm_sample_date_time;  
	private String specimen; 
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
	public String getInpatient_no() {
		return inpatient_no;
	}
	public void setInpatient_no(String inpatient_no) {
		this.inpatient_no = inpatient_no;
	}
	public String getOutpatient_no() {
		return outpatient_no;
	}
	public void setOutpatient_no(String outpatient_no) {
		this.outpatient_no = outpatient_no;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public Integer getVisit_id() {
		return visit_id;
	}
	public void setVisit_id(Integer visit_id) {
		this.visit_id = visit_id;
	}
	public Date getSpcm_sample_date_time() {
		return spcm_sample_date_time;
	}
	public void setSpcm_sample_date_time(Date spcm_sample_date_time) {
		this.spcm_sample_date_time = spcm_sample_date_time;
	}
	public String getSpecimen() {
		return specimen;
	}
	public void setSpecimen(String specimen) {
		this.specimen = specimen;
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
