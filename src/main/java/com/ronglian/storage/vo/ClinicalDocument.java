package com.ronglian.storage.vo;

import com.thoughtworks.xstream.annotations.XStreamAlias;

@XStreamAlias("ClinicalDocument")
public class ClinicalDocument {
	
	@XStreamAlias("header")
	private Header header;
	
	@XStreamAlias("structuredBody")
	private Patient patient;

	public Header getHeader() {
		return header;
	}

	public void setHeader(Header header) {
		this.header = header;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}


}
