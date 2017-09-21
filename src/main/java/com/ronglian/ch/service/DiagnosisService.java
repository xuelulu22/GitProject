package com.ronglian.ch.service;

import java.util.List;
import java.util.Map;

import com.ronglian.ch.model.Diagnosis;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;


public interface DiagnosisService {
	
	public List<PageData> listPageDiagnosis(Page page) throws Exception;
	
	public Diagnosis getDiagnosisById(Map<String, Object> map) throws Exception;

}
