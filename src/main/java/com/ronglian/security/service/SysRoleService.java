package com.ronglian.security.service;

import java.util.List;
import java.util.Map;

import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.model.SysRoles;

public interface SysRoleService {
	
	public List<PageData> listPageSysRole(Page page) throws Exception;
	
	public void addSysRole(SysRoles sysRoles) throws Exception;
	
	public SysRoles getSysRoleById(String roleId) throws Exception;
	
	public void editSysRoleById(SysRoles sysRoles) throws Exception;
	
	public void delSysRoleById(String roleId) throws Exception;
	
	public List<Map<String, Object>> getMenuResourcesByRole(String roleId) throws Exception;
	
	public List<SysResource> constructCheckedTreeByRole(String roleId, String type) throws Exception;
	
	public void auth_save(String roleId, String menuIds, String type) throws Exception;

	public List<SysRoles> getRolesList(String userId)throws Exception;

	public boolean doSaveUserRole(Map<String, Object> param)throws Exception;

}
