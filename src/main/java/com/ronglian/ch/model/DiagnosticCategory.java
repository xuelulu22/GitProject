package com.ronglian.ch.model;

import java.util.Date;

/**
 *诊断分类
 */
public class DiagnosticCategory {
	
	private String id; 
	private String diagnostic_id; 
	private String patient_id; 
	private Integer visit_id; 
	private String diagnosis_type;
	private Integer diagnosis_no; 
	private String diagnosis_code_ch; 
	private String diagnosis_code_add_ch;
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
	public String getDiagnostic_id() {
		return diagnostic_id;
	}
	public void setDiagnostic_id(String diagnostic_id) {
		this.diagnostic_id = diagnostic_id;
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
	public String getDiagnosis_code_ch() {
		return diagnosis_code_ch;
	}
	public void setDiagnosis_code_ch(String diagnosis_code_ch) {
		this.diagnosis_code_ch = diagnosis_code_ch;
	}
	public String getDiagnosis_code_add_ch() {
		return diagnosis_code_add_ch;
	}
	public void setDiagnosis_code_add_ch(String diagnosis_code_add_ch) {
		this.diagnosis_code_add_ch = diagnosis_code_add_ch;
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