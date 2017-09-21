package com.ronglian.ch.service;

import java.util.List;
import java.util.Map;

import com.ronglian.ch.model.PatientTimer;

public interface PatMasterTimerService {

	public List<PatientTimer> getPatMasterTimerByPatientID(String PatientID) throws Exception;
	
	public List<PatientTimer> getPatMasterTimerByOutPatientID(String outPatientId) throws Exception;
	
	public List<PatientTimer> getPatMasterTimerByInPatientID(String inPatientId) throws Exception;

	public Map<String, Object> getTimeView(Map<String, Object> params)throws Exception;

}
