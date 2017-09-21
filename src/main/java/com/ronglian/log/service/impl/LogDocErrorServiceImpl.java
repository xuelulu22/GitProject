package com.ronglian.log.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.ronglian.core.dao.BaseDAO;
import com.ronglian.log.service.LogDocErrorService;
import com.ronglian.log.vo.LogDocErrorDetail;
import com.ronglian.log.vo.LogDocErrorInfo;

@Service
public class LogDocErrorServiceImpl implements LogDocErrorService {

	private static Log log = LogFactory.getLog(LogDocErrorServiceImpl.class);
	
	@Resource
	private BaseDAO dao;
	
	@Override
	public void saveLogError(LogDocErrorInfo logDocErrorInfo){
		try {
			dao.save("LogDocErrorInfoMapper.insert", logDocErrorInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void saveLogErrorDetail(LogDocErrorDetail logDocErrorDetail){
		try {
			dao.save("LogDocErrorDetailMapper.insert", logDocErrorDetail);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void saveLogErrorDetails(List<LogDocErrorDetail> logDocErrorDetails){
		try {
			for(LogDocErrorDetail obj : logDocErrorDetails){
				dao.save("LogDocErrorDetailMapper.insert", obj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
