package com.ronglian.security.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.ronglian.security.model.SysUsers;
import com.ronglian.security.service.SysResourceService;
import com.ronglian.security.service.SysUserService;
  
public class MyUserDetailService implements UserDetailsService {
	

	@Resource
	private SysUserService sysUserService;
	
	@Resource
	private SysResourceService sysResourceService;

	/**
	 * 根据登录名构造UserDetails对象
	 * 
	 * @param java.lang.String
	 */
	public UserDetails loadUserByUsername(String loginName)
			throws UsernameNotFoundException, DataAccessException {
		Collection<GrantedAuthority> auths = new ArrayList<GrantedAuthority>();
		String password = null;
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userAccount", loginName);
		
		SysUsers sysUsers = null;
		try {
			sysUsers = sysUserService.login(params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(sysUsers != null){
			password = sysUsers.getUserPassword();

			//获取用户的权限URL集合
			params = new HashMap<String, Object>();
			params.put("userId", sysUsers.getUserId());
			List<Map<String, Object>> resources = null;
			try {
				resources = sysResourceService.getResourcesByUser(params);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(resources != null && resources.size() > 0) {
				for (Map<String, Object> resource: resources) {
					if(resource.get("RESOURCE_URL") != null) {
						String RESOURCE_URL = resource.get("RESOURCE_URL").toString();
						if(StringUtils.isNotEmpty(RESOURCE_URL)) {
							auths.add(new GrantedAuthorityImpl(RESOURCE_URL));
						}
					}
				}
			}
			
		}
		User user = new User(loginName, password, true, true, true, true, auths);
		return user;
	}
}  
