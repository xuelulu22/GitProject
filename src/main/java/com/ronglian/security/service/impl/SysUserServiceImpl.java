package com.ronglian.security.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.ronglian.core.dao.BaseDAO;
import com.ronglian.core.util.InitPass;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.model.SysOrganization;
import com.ronglian.security.model.SysUsers;
import com.ronglian.security.service.SysUserService;

@Service
public class SysUserServiceImpl implements SysUserService {
	
	@Resource
	private BaseDAO dao;
	
	@Override
	public SysUsers login(Map<String, Object> params) throws Exception {
		return (SysUsers) dao.findForObject("SysUsersMapper.login", params);
	}

	@Override
	public SysUsers getLoginUserBySpringSecurity() throws Exception {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User) auth
				.getPrincipal();
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userAccount", user.getUsername());
		SysUsers sysUsers = (SysUsers) dao.findForObject("SysUsersMapper.login", params);
		return sysUsers;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PageData> listPageSysUser(Page page) throws Exception {
		return (List<PageData>) dao.findForList("SysUsersMapper.listPageSysUser", page);
	}
	
	@Override
	public void addSysUser(SysUsers sysUsers) throws Exception {
		dao.save("SysUsersMapper.insert", sysUsers);
	}

	@Override
	public SysUsers getSysUserById(String modulId) throws Exception {
		return (SysUsers) dao.findForObject("SysUsersMapper.selectByPrimaryKey", modulId);
	}

	@Override
	public void doEditUser(SysUsers sysUsers) throws Exception {
		dao.update("SysUsersMapper.updateByPrimaryKeySelective", sysUsers);
	}

	@Override
	public void delUser(String modulId) throws Exception {
		dao.delete("SysUsersMapper.deleteByPrimaryKey",modulId);
	}

	@Override
	public void resetPass(String modulId) throws Exception {
		SysUsers s = new SysUsers();
		s.setUserId(modulId);
		s.setUserPassword(InitPass.initpassword);
		dao.update("SysUsersMapper.updateByPrimaryKeySelective", s);
	}

	@Override
	public List doGetUserExist(Map<String, Object> params) throws Exception {
		return (List) dao.findForList("SysUsersMapper.doSelectByMap",params);
	}

}
