package com.ronglian.ch.model;

import java.util.Date;

/**
 * 患者病例信息
 */
public class OutpMr {
	
	private String id; 
	private String outpatient_no; 
	private String patient_id; 
	private Date visit_date; 
	private Integer visit_no;
	private String illness_desc; 
	private String anamnesis; 
	private String diag_desc; 
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
	public String getIllness_desc() {
		return illness_desc;
	}
	public void setIllness_desc(String illness_desc) {
		this.illness_desc = illness_desc;
	}
	public String getAnamnesis() {
		return anamnesis;
	}
	public void setAnamnesis(String anamnesis) {
		this.anamnesis = anamnesis;
	}
	public String getDiag_desc() {
		return diag_desc;
	}
	public void setDiag_desc(String diag_desc) {
		this.diag_desc = diag_desc;
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
