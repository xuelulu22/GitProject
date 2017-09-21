package com.ronglian.ch.model;

import java.util.Date;

/**
 * 门诊信息与病例信息
 */
public class OutpMrClinicMaster {
	
	private String name;
	private String visit_dept;
	private String clinic_label;
	private String doctor;
	private String dept_admission;
	private Date visit_date;
	private Integer visit_no;
	private String illness_desc;
	private String anamnesis;
	private String diag_desc;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVisit_dept() {
		return visit_dept;
	}
	public void setVisit_dept(String visit_dept) {
		this.visit_dept = visit_dept;
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
	
	
	
}
