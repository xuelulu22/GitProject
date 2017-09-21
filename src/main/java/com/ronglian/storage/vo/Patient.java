package com.ronglian.storage.vo;

import com.thoughtworks.xstream.annotations.XStreamAlias;

public class Patient{
	
	@XStreamAlias("PatientName")
	private String patientName;
	
	@XStreamAlias("PatientSex")
	private String patientSex;

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getPatientSex() {
		return patientSex;
	}

	public void setPatientSex(String patientSex) {
		this.patientSex = patientSex;
	}

}
