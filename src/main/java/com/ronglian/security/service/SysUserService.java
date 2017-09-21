package com.ronglian.security.service;

import java.util.List;
import java.util.Map;

import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.model.SysUsers;

public interface SysUserService {
	
	public SysUsers login(Map<String, Object> params) throws Exception;
	
	public SysUsers getLoginUserBySpringSecurity() throws Exception;
	
	public List<PageData> listPageSysUser(Page page) throws Exception;

	public void addSysUser(SysUsers sysUsers)throws Exception;

	public SysUsers getSysUserById(String modulId)throws Exception;

	public void doEditUser(SysUsers sysUsers)throws Exception;

	public void delUser(String modulId)throws Exception;

	public void resetPass(String modulId)throws Exception;

	public List doGetUserExist(Map<String, Object> params)throws Exception;

}
