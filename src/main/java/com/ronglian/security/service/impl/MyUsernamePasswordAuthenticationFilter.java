package com.ronglian.security.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.ronglian.core.util.MD5Util;
import com.ronglian.security.dao.SysUsersMapper;
import com.ronglian.security.model.SysUsers;
import com.ronglian.security.service.SysUserService;

/**
 * 用户名密码验证拦截器
 */
public class MyUsernamePasswordAuthenticationFilter extends UsernamePasswordAuthenticationFilter{
	public static final String USERNAME = "login_name";
	public static final String PASSWORD = "password";
	
	@Resource
	private SysUserService sysUserService;
	
	/** 用户名密码验证方法 */
	@Override
	public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {
		System.out.println("正在登录。。。");
		if (!request.getMethod().equals("POST")) {
			throw new AuthenticationServiceException("验证方法不支持该提交方式: " + request.getMethod());
		}
		
		String userAccount = obtainUsername(request).trim();
		String userPassword = MD5Util.md5(obtainPassword(request));
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userAccount", userAccount);
		params.put("userPassword", userPassword);
		
		SysUsers sysUsers = null;
		try {
			sysUsers = sysUserService.login(params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(sysUsers == null) {
			throw new AuthenticationServiceException("用户名或密码不正确！"); 
		}
		UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(userAccount, userPassword);
		System.out.println("登录成功");
		
		// 允许子类设置详细属性
        setDetails(request, authRequest);
        
        // 运行UserDetailsService的loadUserByUsername 再次封装Authentication
		return this.getAuthenticationManager().authenticate(authRequest);
	}
	
	@Override
	protected String obtainUsername(HttpServletRequest request) {
		Object obj = request.getParameter(USERNAME);
		return null == obj ? "" : obj.toString();
	}

	@Override
	protected String obtainPassword(HttpServletRequest request) {
		Object obj = request.getParameter(PASSWORD);
		return null == obj ? "" : obj.toString();
	}
}
