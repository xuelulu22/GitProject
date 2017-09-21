package com.ronglian.security.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ronglian.core.dao.BaseDAO;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.model.SysOrganization;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.service.SysOrganizationService;

@Service
public class SysOrganizationServiceImpl implements SysOrganizationService {
	
	@Resource
	private BaseDAO dao;

	@SuppressWarnings("unchecked")
	@Override
	public List<PageData> listPageSysOrganization(Page page) throws Exception {
		return (List<PageData>) dao.findForList("SysOrganizationMapper.listPageSysOrganization", page);
	}

	@Override
	public void addSysOrganization(SysOrganization sysOrganization){
		try {
			dao.save("SysOrganizationMapper.insert", sysOrganization);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public SysOrganization getSysOrganizationById(String modulId) {
		try {
			return (SysOrganization) dao.findForObject("SysOrganizationMapper.selectByPrimaryKey", modulId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void doEditOrganization(SysOrganization sysOrganization) {
		try {
			dao.update("SysOrganizationMapper.updateByPrimaryKeySelective", sysOrganization);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delOrganization(String modulId) {
		try {
			dao.delete("SysOrganizationMapper.deleteByPrimaryKey",modulId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
