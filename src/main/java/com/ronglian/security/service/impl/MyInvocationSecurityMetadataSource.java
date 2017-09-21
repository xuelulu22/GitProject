package com.ronglian.security.service.impl;

import java.util.ArrayList;  
import java.util.Collection;  
import java.util.Hashtable;
import java.util.List;  

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Service;

import com.ronglian.security.dao.SysResourceMapper;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.service.SysResourceService;
import com.ronglian.security.service.SysUserService;
  
/** 
 * 加载资源与权限的对应关系
 * 最核心的地方，提供某个资源对应的权限定义，即getAttributes方法返回的结果。 此类在初始化时，应该取到所有资源及其对应角色的定义。
 *  
 */
public class MyInvocationSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {
	
	@Resource
	private SysResourceService sysResourceService;

	public SysResourceService getSysResourceService() {
		return sysResourceService;
	}

	public void setSysResourceService(SysResourceService sysResourceService) {
		this.sysResourceService = sysResourceService;
	}

	private static Hashtable<String, String> resourceMap = null;
	
	public MyInvocationSecurityMetadataSource() {
		loadResourceDefine();
	}
	
	public MyInvocationSecurityMetadataSource(
			SysResourceService sysResourceService) {
		this.sysResourceService = sysResourceService;
		loadResourceDefine();
	}

	/** 权限资源Map构造方法
	 * 	key:  url
	 *  value: url
	 *  直接以url做为权限标识
	 */
	public void loadResourceDefine() {
		resourceMap = new Hashtable<String, String>();
	    // 获取业务层对象  
		List<SysResource> allSysResources = null;
		try {
			allSysResources = sysResourceService.getAllSysResources();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(allSysResources != null && allSysResources.size() > 0) {
			for(SysResource sysResource: allSysResources) {
				String url = sysResource.getResourceUrl();
				if(null!=url && !resourceMap.containsKey(url)){
					resourceMap.put(url, url);
				}
			}
		}
	}

	@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {
		return null;
	}

	/** 获取访问路径所需权限集合 */
	@Override
	public Collection<ConfigAttribute> getAttributes(Object object)
			throws IllegalArgumentException {
		// object 是一个URL，被用户请求的url。
		String url = ((FilterInvocation) object).getRequestUrl();
		int firstSpritMarkIndex = url.indexOf("/");
		if(firstSpritMarkIndex==0){
			url = url.substring(1);
		}
		int firstQuestionMarkIndex = url.indexOf("?");
		if (firstQuestionMarkIndex != -1) {
			url = url.substring(0, firstQuestionMarkIndex);
		}
		if(!resourceMap.contains(url)){
			return null;
		}
		url = resourceMap.get(url);
		ConfigAttribute ca = new SecurityConfig(url);
		Collection<ConfigAttribute> configAttributeList = new ArrayList<ConfigAttribute>();
		configAttributeList.add(ca);
		return configAttributeList;
	}

	@Override
	public boolean supports(Class<?> arg0) {
		return true;
	}
	
	public static Hashtable<String, String> getResourceMap() {
		return resourceMap;
	}

	public static void setResourceMap(
			Hashtable<String, String> resourceMap) {
		MyInvocationSecurityMetadataSource.resourceMap = resourceMap;
	}
}  
