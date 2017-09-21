package com.ronglian.storage.vo;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

public class BaseResponse {
	
	//ErrMsg：如果错误，则此处是错误信息，否则为空
	@XStreamAsAttribute
	@XStreamAlias("ErrMsg")
	private String errMsg;

}
