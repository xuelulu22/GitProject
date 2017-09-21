package com.ronglian.storage.validation.service;

import java.util.Map;

import com.ronglian.storage.validation.vo.ValidationResult;

public interface XsdValidationService {

	ValidationResult checkHeard(String xmlData);

	ValidationResult xsdValidaion(String xmlData,Map<String,String> headerMap);

}
