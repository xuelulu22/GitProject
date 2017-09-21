package com.ronglian.security.service;

import java.util.List;
import java.util.Map;

import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.model.Dictionary;
import com.ronglian.security.model.SysResource;

public interface SysResourceService {
	
	public List<Map<String, Object>> getResourcesByUser(Map<String, Object> params) throws Exception;
	
	public List<SysResource> getAllSysResources() throws Exception;
	
	public List<SysResource> getMenuResourceByUser(Map<String, Object> params) throws Exception;
	
	public List<SysResource> getSubResourceByParent(Map<String, Object> params) throws Exception;
	
	//获取模块
	public List<SysResource> getMenuModulResource() throws Exception;
	
	public List<SysResource> getFuncModulResource() throws Exception;
	
	//获取子资源
	public List<SysResource> getSubMenuByParent(String menuId) throws Exception;
	
	public List<SysResource> getSubFuncByParent(String funcId) throws Exception;
	
	
	public void addSysResource(SysResource sysResource) throws Exception;
	
	public void editSysResourceById(SysResource sysResource) throws Exception;
	
	//删除当前资源及下级资源
	public void delSysResource(String resourceId) throws Exception;
	
	public SysResource getSysResourceById(String resourceId) throws Exception;
	//数据字典list
	public List<PageData> listPageDictionary(Page page)throws Exception;
	//查询数据字典是否存在
	public List<Dictionary> doSelectDictionaryIsExist(Map<String, Object> params)throws Exception;

	public void addDictionary(Dictionary dictionary)throws Exception;

	public Dictionary getDictionaryInfo(Map<String, Object> params)throws Exception;

}
