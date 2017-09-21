package com.ronglian.security.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.ronglian.core.dao.BaseDAO;
import com.ronglian.core.util.Const;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.dao.SysRolesMapper;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.model.SysRoleResource;
import com.ronglian.security.model.SysRoles;
import com.ronglian.security.model.SysRolesExample;
import com.ronglian.security.model.SysUserRoles;
import com.ronglian.security.service.SysResourceService;
import com.ronglian.security.service.SysRoleService;

@Service
public class SysRoleServiceImpl implements SysRoleService {
	
	@Resource
	private BaseDAO dao;
	
	@Resource
	private SysResourceService sysResourceService;

	@SuppressWarnings("unchecked")
	@Override
	public List<PageData> listPageSysRole(Page page) throws Exception {
		return (List<PageData>) dao.findForList("SysRolesMapper.listPageSysRole", page);
	}

	@Override
	public void addSysRole(SysRoles sysRoles) throws Exception {
		dao.save("SysRolesMapper.insert", sysRoles);
	}

	@Override
	public SysRoles getSysRoleById(String roleId) throws Exception {
		return (SysRoles) dao.findForObject("SysRolesMapper.selectByPrimaryKey", roleId);
	}

	@Override
	public void editSysRoleById(SysRoles sysRoles) throws Exception {
		dao.save("SysRolesMapper.updateByPrimaryKeySelective", sysRoles);
	}

	@Override
	public void delSysRoleById(String roleId) throws Exception {
		dao.save("SysRolesMapper.deleteByPrimaryKey", roleId);
	}

	@Override
	public List<SysResource> constructCheckedTreeByRole(String roleId, String type)
			throws Exception {
		
		List<SysResource> modulResource = null;
		if(Const.TYPE_MENU.equals(type)) {
			modulResource = sysResourceService.getMenuModulResource();
		} else {
			modulResource = sysResourceService.getFuncModulResource();
		}
		if(modulResource != null && modulResource.size() > 0) {
			Map<String, Object> params1 = new HashMap<String, Object>();
			for(SysResource sysResource : modulResource) {
				params1.put("resourceParentid", sysResource.getResourceId());
				List<SysResource> subSysResources = sysResourceService.getSubResourceByParent(params1);
				if(subSysResources != null && subSysResources.size() > 0) {
					sysResource.setSubResources(subSysResources);
					
					//判断Role是否有此资源
					List<Map<String, Object>> menuByRole = this.getMenuResourcesByRole(roleId);
					for(SysResource menu: subSysResources) {	
						if(menuByRole != null && menuByRole.size() > 0) {
							for(Map<String, Object> map: menuByRole) {
								if(menu.getResourceId().equals(map.get("RESOURCE_ID").toString())) {
									menu.setHasMenu(true);
									sysResource.setHasMenu(true);
								}
							}
						}
					}
				} 
			}
		}
		
		return modulResource;
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Map<String, Object>> getMenuResourcesByRole(String roleId)
			throws Exception {
		return (List<Map<String, Object>>) dao.findForList("SysRolesMapper.getMenuResourcesByRole", roleId);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED,readOnly=false)
	public void auth_save(String roleId, String menuIds, String type) throws Exception {
		if(StringUtils.isNotEmpty(menuIds)) {
			if(Const.TYPE_MENU.equals(type)) {
				dao.save("SysRoleResourceMapper.deleteMenuRoleResourceByRole", roleId);
			} else {
				dao.save("SysRoleResourceMapper.deleteFuncRoleResourceByRole", roleId);
			}
			for(String menuId: menuIds.split(",")) {
				SysRoleResource sysRoleResource = new SysRoleResource();
				sysRoleResource.setRoleId(roleId);
				sysRoleResource.setResourceId(menuId);
				sysRoleResource.setFlag(Byte.parseByte("1"));
				dao.save("SysRoleResourceMapper.insert", sysRoleResource);
			}
		}
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<SysRoles> getRolesList(String userId) throws Exception {
		List<SysRoles> list =(List<SysRoles>)dao.findForList("SysRolesMapper.getAllRoles","");
		Map<String, Object> params =null;
		if(list!=null && list.size()>0){
			for(SysRoles info :list){
				params = new HashMap<String, Object>();
				params.put("userId",userId);
				params.put("roleId",info.getRoleId());
				List<SysUserRoles> userRoleList =(List<SysUserRoles>) dao.findForList("SysUserRolesMapper.doSelectUserRoleList",params);
				if(userRoleList!=null && userRoleList.size()>0 ){
					info.setHasRole("1");
				}
				params =null;
			}
		}
		return list;
	}

	@Override
	public boolean doSaveUserRole(Map<String, Object> param) throws Exception {
		boolean f=false;
		try {
			//先删除之前赋予的角色
			Map<String, Object> param1 =new HashMap<String, Object>();
			param1.put("userId", (String) param.get("userId"));
			dao.delete("SysUserRolesMapper.deleteByUserId", param1);
			
			String roleId_str=(String) param.get("roleId");
			String userId = (String) param.get("userId");
			String[] roleIds=roleId_str.split(",");
			if(roleIds !=null && roleIds.length>0){
				for(String str :roleIds){
					if(str!=null && !str.equals("")){
						param =new HashMap<String, Object>();
						param.put("roleId", str);
						param.put("userId", userId);
						param.put("flag",1);
						dao.save("SysUserRolesMapper.doSaveUserRoles", param);
						param =null;
					}
				}
			}
			f= true;
		}catch (Exception e) {
			f= false;
			e.printStackTrace();
			return f;
		}
		return f;
	}

}
