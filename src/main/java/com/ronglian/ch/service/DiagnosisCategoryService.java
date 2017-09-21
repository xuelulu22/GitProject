package com.ronglian.ch.service;

import java.util.List;
import java.util.Map;

import com.ronglian.ch.model.DiagnosticCategory;

public interface DiagnosisCategoryService {
	
	List<DiagnosticCategory> listDiagnosisCategory(Map<String, Object> params) throws Exception;

}
