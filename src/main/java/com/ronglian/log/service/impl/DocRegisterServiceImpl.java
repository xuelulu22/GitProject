package com.ronglian.log.service.impl;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.ronglian.core.dao.BaseDAO;
import com.ronglian.log.service.DocRegisterService;
import com.ronglian.log.vo.DocRegister;

@Service
public class DocRegisterServiceImpl implements DocRegisterService {
	
	private static Log log = LogFactory.getLog(DocRegisterServiceImpl.class);
	
	@Resource
	private BaseDAO dao;
	
	@Override
	public void saveDocXml(DocRegister docRegister){
		try {
			dao.save("DocRegisterMapper.insert", docRegister);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
