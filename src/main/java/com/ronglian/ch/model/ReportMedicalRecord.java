package com.ronglian.ch.model;

public class ReportMedicalRecord {
	private String id;
	private String year; 
	private String month; 
	private String disease_name; 
	private Integer medical_num; 
	private String doctor_name;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDisease_name() {
		return disease_name;
	}
	public void setDisease_name(String disease_name) {
		this.disease_name = disease_name;
	}
	public Integer getMedical_num() {
		return medical_num;
	}
	public void setMedical_num(Integer medical_num) {
		this.medical_num = medical_num;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	
	
}
