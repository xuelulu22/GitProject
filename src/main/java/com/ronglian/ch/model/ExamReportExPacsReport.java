package com.ronglian.ch.model;

import java.util.Date;

/**
 * 检查检验联合INFO
 */
public class ExamReportExPacsReport {
	
	private String id;
	private String inpatient_no;
	private String outpatient_no;
	private String patient_id;
	private Integer visit_id;
	private String name;
	private String exam_class;
	private Date report_datetime;
	private String record;
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getExam_class() {
		return exam_class;
	}
	public void setExam_class(String exam_class) {
		this.exam_class = exam_class;
	}
	public Date getReport_datetime() {
		return report_datetime;
	}
	public void setReport_datetime(Date report_datetime) {
		this.report_datetime = report_datetime;
	}
	public String getRecord() {
		return record;
	}
	public void setRecord(String record) {
		this.record = record;
	}
	
	
	
}
