package com.ronglian.security.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ronglian.core.dao.BaseDAO;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.model.Dictionary;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.service.SysResourceService;

@Service
public class SysResourceServiceImpl implements SysResourceService {
	
	@Resource
	private BaseDAO dao;

	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String, Object>> getResourcesByUser(
			Map<String, Object> params) throws Exception {
		return (List<Map<String, Object>>) dao.findForList("SysResourceMapper.getResourcesByUser", params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SysResource> getAllSysResources() throws Exception {
		return (List<SysResource>) dao.findForList("SysResourceMapper.getAllSysResources", null);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SysResource> getMenuResourceByUser(Map<String, Object> params) throws Exception {
		List<SysResource> sysResources = (List<SysResource>) dao.findForList("SysResourceMapper.getMenuResourceByUser", params);
		
		if(sysResources != null && sysResources.size() > 0) {
			Map<String, Object> params1 = new HashMap<String, Object>();
			for(SysResource sysResource : sysResources) {
				params1.put("resourceParentid", sysResource.getResourceId());
				params1.put("userId", params.get("userId").toString());
				List<SysResource> subSysResources = (List<SysResource>) dao.findForList("SysResourceMapper.getSubResourceByParentByUserRole", params1);
				sysResource.setSubResources(subSysResources);
			}
		}
		return sysResources;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SysResource> getSubResourceByParent(Map<String, Object> params) throws Exception {
		return (List<SysResource>) dao.findForList("SysResourceMapper.getSubResourceByParent", params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SysResource> getMenuModulResource() throws Exception {
		return (List<SysResource>) dao.findForList("SysResourceMapper.getMenuModulResource", null);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SysResource> getFuncModulResource() throws Exception {
		return (List<SysResource>) dao.findForList("SysResourceMapper.getFuncModulResource", null);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SysResource> getSubMenuByParent(String menuId) throws Exception {
		return (List<SysResource>) dao.findForList("SysResourceMapper.getSubMenuByParent", menuId);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SysResource> getSubFuncByParent(String funcId) throws Exception {
		return (List<SysResource>) dao.findForList("SysResourceMapper.getSubFuncByParent", funcId);
	}

	@Override
	public void addSysResource(SysResource sysResource) throws Exception {
		dao.save("SysResourceMapper.insert", sysResource);
	}

	@Override
	public void delSysResource(String resourceId) throws Exception {
		dao.save("SysResourceMapper.delSysResource", resourceId);
		
	}

	@Override
	public SysResource getSysResourceById(String resourceId) throws Exception {
		return (SysResource) dao.findForObject("SysResourceMapper.selectByPrimaryKey", resourceId);
	}

	@Override
	public void editSysResourceById(SysResource sysResource) throws Exception {
		dao.save("SysResourceMapper.updateByPrimaryKeySelective", sysResource);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageDictionary(Page page)throws Exception {
		return (List<PageData>) dao.findForList("DictionaryMapper.listPageDictionary", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Dictionary> doSelectDictionaryIsExist(Map<String, Object> params) throws Exception {
		return (List<Dictionary>) dao.findForList("DictionaryMapper.doSelectDictionaryIsExist", params);
	}

	@Override
	public void addDictionary(Dictionary dictionary) throws Exception {
		dao.save("DictionaryMapper.insert", dictionary);
	}

	@Override
	public Dictionary getDictionaryInfo(Map<String, Object> params)throws Exception {
		return (Dictionary) dao.findForObject("DictionaryMapper.doSelectDictionaryIsExist", params);
	}

}
