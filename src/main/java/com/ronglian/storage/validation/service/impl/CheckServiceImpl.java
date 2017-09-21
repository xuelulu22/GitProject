package com.ronglian.storage.validation.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ronglian.storage.validation.service.CheckService;
import com.ronglian.storage.validation.service.XsdValidationService;
import com.ronglian.storage.validation.vo.ValidationResult;

/**
 * 项目名称：basePlatform   
 * 类名称：CheckServiceImpl   
 * 类描述：   校验业务层，主入口
 * 创建人：linbin   
 * 创建时间：2016年7月31日 下午3:30:22      
 * @version
 */
@Service
public class CheckServiceImpl implements CheckService {
	
	@Resource
	private XsdValidationService xsdValidationService;
	
	/**
	 * 方法描述： 校验入口
	 * 创建人：linbin   
	 * 创建时间：2016年8月1日 下午9:49:23   
	 * @param xmlData
	 * @return   
	 * @version
	 */
	@Override
	public ValidationResult init(String xmlData) {
		ValidationResult result = null;
		result = xsdValidationService.checkHeard(xmlData);
		if(result.isSucess()){
			result = xsdValidationService.xsdValidaion(xmlData,result.getHeaderMap());
		}
		return  result;
	}
}
