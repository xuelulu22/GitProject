package com.ronglian.log.service;

import java.util.List;

import com.ronglian.log.vo.LogDocErrorDetail;
import com.ronglian.log.vo.LogDocErrorInfo;

public interface LogDocErrorService {

	void saveLogError(LogDocErrorInfo logDocErrorInfo);

	void saveLogErrorDetail(LogDocErrorDetail logDocErrorDetail);

	void saveLogErrorDetails(List<LogDocErrorDetail> logDocErrorDetails);

}
