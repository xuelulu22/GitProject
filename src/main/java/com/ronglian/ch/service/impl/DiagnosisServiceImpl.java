package com.ronglian.ch.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ronglian.ch.model.Diagnosis;
import com.ronglian.ch.service.DiagnosisService;
import com.ronglian.core.dao.BaseDAO;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;

@Service
public class DiagnosisServiceImpl implements DiagnosisService {
	@Resource
	private BaseDAO dao;

	@Override
	public List<PageData> listPageDiagnosis(Page page) throws Exception {
		if(page.getPd().get("type").equals("3")){
			//患者病例 - 门诊诊断
			return (List<PageData>) dao.findForList("DiagnosisMapper.listPageHzMzDiagnosis", page);
		}else if(page.getPd().get("type").equals("4")){
			//患者病例 - 住院诊断
			return (List<PageData>) dao.findForList("DiagnosisMapper.listPageHzZyDiagnosis", page);
		}else {
			//门诊病例 、住院病历 - 诊断
			return (List<PageData>) dao.findForList("DiagnosisMapper.listPageDiagnosis", page);
		}
	}

	@Override
	public Diagnosis getDiagnosisById(Map<String, Object> map) throws Exception {
		return (Diagnosis) dao.findForObject("DiagnosisMapper.selectByPrimaryKey", map);
	}


}
