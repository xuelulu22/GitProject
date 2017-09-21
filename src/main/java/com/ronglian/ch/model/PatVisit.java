package com.ronglian.ch.model;

import java.math.BigDecimal;
import java.util.Date;

public class PatVisit {
	
	private String inpatient_no; 
	private String patient_id; 
	private Integer visit_id; 
	private String dept_admission_to; 
	private Date admission_date_time;
	private String dept_discharge_from; 
	private Date discharge_date_time; 
	private String marital_status; 
	private BigDecimal body_weight; 
	private BigDecimal body_height; 
	private String createby; 
	private Date createdate;
	private String updateby; 
	private Date updatedate; 
	private Integer flag;
	public String getInpatient_no() {
		return inpatient_no;
	}
	public void setInpatient_no(String inpatient_no) {
		this.inpatient_no = inpatient_no;
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
	public String getDept_admission_to() {
		return dept_admission_to;
	}
	public void setDept_admission_to(String dept_admission_to) {
		this.dept_admission_to = dept_admission_to;
	}
	public Date getAdmission_date_time() {
		return admission_date_time;
	}
	public void setAdmission_date_time(Date admission_date_time) {
		this.admission_date_time = admission_date_time;
	}
	public String getDept_discharge_from() {
		return dept_discharge_from;
	}
	public void setDept_discharge_from(String dept_discharge_from) {
		this.dept_discharge_from = dept_discharge_from;
	}
	public Date getDischarge_date_time() {
		return discharge_date_time;
	}
	public void setDischarge_date_time(Date discharge_date_time) {
		this.discharge_date_time = discharge_date_time;
	}
	public String getMarital_status() {
		return marital_status;
	}
	public void setMarital_status(String marital_status) {
		this.marital_status = marital_status;
	}
	public BigDecimal getBody_weight() {
		return body_weight;
	}
	public void setBody_weight(BigDecimal body_weight) {
		this.body_weight = body_weight;
	}
	public BigDecimal getBody_height() {
		return body_height;
	}
	public void setBody_height(BigDecimal body_height) {
		this.body_height = body_height;
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