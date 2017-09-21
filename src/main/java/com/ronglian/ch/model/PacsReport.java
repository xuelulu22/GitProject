package com.ronglian.ch.model;

import java.util.Date;

/**
 * 影像检查
 **/
public class PacsReport {
	
		private String id; 
		private String inpatient_no;
		private String outpatient_no; 
		private String patient_id; 
		private Integer visit_id;
		private String name;
		private String exam_class;
		private String report_diagnosis;
		private Date report_datetime;
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
		public String getReport_diagnosis() {
			return report_diagnosis;
		}
		public void setReport_diagnosis(String report_diagnosis) {
			this.report_diagnosis = report_diagnosis;
		}
		public Date getReport_datetime() {
			return report_datetime;
		}
		public void setReport_datetime(Date report_datetime) {
			this.report_datetime = report_datetime;
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
