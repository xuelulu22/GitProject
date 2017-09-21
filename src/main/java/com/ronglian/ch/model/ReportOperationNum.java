package com.ronglian.ch.model;

public class ReportOperationNum {
	private String id;
	private String year; 
	private String month; 
	private String operation_name;
	private Integer operation_all_num;
	private Integer death_num;
	private Integer operation_again_num;
	private Double hospitalization_num;
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
	public String getOperation_name() {
		return operation_name;
	}
	public void setOperation_name(String operation_name) {
		this.operation_name = operation_name;
	}
	public Integer getOperation_all_num() {
		return operation_all_num;
	}
	public void setOperation_all_num(Integer operation_all_num) {
		this.operation_all_num = operation_all_num;
	}
	public Integer getDeath_num() {
		return death_num;
	}
	public void setDeath_num(Integer death_num) {
		this.death_num = death_num;
	}
	public Integer getOperation_again_num() {
		return operation_again_num;
	}
	public void setOperation_again_num(Integer operation_again_num) {
		this.operation_again_num = operation_again_num;
	}
	public Double getHospitalization_num() {
		return hospitalization_num;
	}
	public void setHospitalization_num(Double hospitalization_num) {
		this.hospitalization_num = hospitalization_num;
	}
	
	
}
