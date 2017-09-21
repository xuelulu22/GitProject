package com.ronglian.security.service;

import java.util.List;

import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.model.SysOrganization;

public interface SysOrganizationService {
	public List<PageData> listPageSysOrganization(Page page) throws Exception;

	public void addSysOrganization(SysOrganization sysOrganization);

	public SysOrganization getSysOrganizationById(String modulId);

	public void doEditOrganization(SysOrganization sysOrganization);

	public void delOrganization(String modulId);

}
