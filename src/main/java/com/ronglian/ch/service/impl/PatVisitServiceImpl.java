package com.ronglian.ch.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ronglian.ch.model.PatVisit;
import com.ronglian.ch.service.PatVisitService;
import com.ronglian.core.dao.BaseDAO;

@Service
public class PatVisitServiceImpl implements PatVisitService {
	@Resource
	private BaseDAO dao;
	
	@Override
	public PatVisit getPatVisitById(String inpatientNo) throws Exception {
		return (PatVisit) dao.findForObject("PatVisitMapper.selectByPrimaryKey", inpatientNo);
	}


}
