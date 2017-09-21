package com.ronglian.ch.model;

public class ReportDiseaseNum {
	private String id; 
	private String year; 
	private String month; 
	private String disease_name;
	private Integer case_num;
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
	public Integer getCase_num() {
		return case_num;
	}
	public void setCase_num(Integer case_num) {
		this.case_num = case_num;
	}
	
	
}
