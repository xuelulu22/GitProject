package com.ronglian.ch.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ronglian.ch.model.DiagnosticCategory;
import com.ronglian.ch.service.DiagnosisCategoryService;
import com.ronglian.core.dao.BaseDAO;

@Service
public class DiagnosisCategoryServiceImpl implements DiagnosisCategoryService {
	@Resource
	private BaseDAO dao;

	@Override
	public List<DiagnosticCategory> listDiagnosisCategory(
			Map<String, Object> params) throws Exception {
		return (List<DiagnosticCategory>) dao.findForList("DiagnosticCategoryMapper.listDiagnosisCategory", params);
	}


}
