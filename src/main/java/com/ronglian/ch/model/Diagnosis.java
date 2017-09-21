package com.ronglian.ch.model;

import java.util.Date;

/**
 * 诊断
 */
public class Diagnosis {
	
	private String id; 
	private String inpatient_no;  
	private String outpatient_no;  
	private String patient_id;  
	private Integer visit_id; 
	private String diagnosis_type;  
	private Integer diagnosis_no;  
	private String diagnosis_desc_ch;  
	private Date diagnosis_date;  
	private String code_version; 
	private Integer treat_days; 
	private String treat_result; 
	private String createby;  
	private Date createdate; 
	private String updateby; 
	private Date updatedate; 
	private Integer flag;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getDiagnosis_type() {
		return diagnosis_type;
	}
	public void setDiagnosis_type(String diagnosis_type) {
		this.diagnosis_type = diagnosis_type;
	}
	public Integer getDiagnosis_no() {
		return diagnosis_no;
	}
	public void setDiagnosis_no(Integer diagnosis_no) {
		this.diagnosis_no = diagnosis_no;
	}
	public String getDiagnosis_desc_ch() {
		return diagnosis_desc_ch;
	}
	public void setDiagnosis_desc_ch(String diagnosis_desc_ch) {
		this.diagnosis_desc_ch = diagnosis_desc_ch;
	}
	public Date getDiagnosis_date() {
		return diagnosis_date;
	}
	public void setDiagnosis_date(Date diagnosis_date) {
		this.diagnosis_date = diagnosis_date;
	}
	public String getCode_version() {
		return code_version;
	}
	public void setCode_version(String code_version) {
		this.code_version = code_version;
	}
	public Integer getTreat_days() {
		return treat_days;
	}
	public void setTreat_days(Integer treat_days) {
		this.treat_days = treat_days;
	}
	public String getTreat_result() {
		return treat_result;
	}
	public void setTreat_result(String treat_result) {
		this.treat_result = treat_result;
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