package com.ronglian.ch.model;

import java.util.Date;

/**
 * 患者门诊基本信息
 */
public class ClinicMaster {
	
	
	private String id;
	private String outpatient_no;
	private Date visit_date;
	private Integer visit_no; 
	private String patient_id; 
	private String name;
	private String clinic_label; 
	private String doctor;
	private String dept_admission; 
	private String visit_dept;
	private String createby; 
	private Date createdate;
	private String updateby;
	private Date updatedate; 
	private Integer flag;
	private String record;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOutpatient_no() {
		return outpatient_no;
	}
	public void setOutpatient_no(String outpatient_no) {
		this.outpatient_no = outpatient_no;
	}
	public Date getVisit_date() {
		return visit_date;
	}
	public void setVisit_date(Date visit_date) {
		this.visit_date = visit_date;
	}
	public Integer getVisit_no() {
		return visit_no;
	}
	public void setVisit_no(Integer visit_no) {
		this.visit_no = visit_no;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getClinic_label() {
		return clinic_label;
	}
	public void setClinic_label(String clinic_label) {
		this.clinic_label = clinic_label;
	}
	public String getDoctor() {
		return doctor;
	}
	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getDept_admission() {
		return dept_admission;
	}
	public void setDept_admission(String dept_admission) {
		this.dept_admission = dept_admission;
	}
	public String getVisit_dept() {
		return visit_dept;
	}
	public void setVisit_dept(String visit_dept) {
		this.visit_dept = visit_dept;
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
	public String getRecord() {
		return record;
	}
	public void setRecord(String record) {
		this.record = record;
	}

	
	
	
}
