package com.ronglian.ch.model;

import java.util.ArrayList;
import java.util.List;

public class PatientTimer {
	
	private String year;

	private List<PatMasterTimer> patMasterTimers = new ArrayList<PatMasterTimer>();
	
	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}
	
	public List<PatMasterTimer> getPatMasterTimers() {
		return patMasterTimers;
	}

	public void setPatMasterTimers(List<PatMasterTimer> patMasterTimers) {
		this.patMasterTimers = patMasterTimers;
	}
	
}
