package com.ronglian.security.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ronglian.core.controller.BaseController;
import com.ronglian.core.util.Const;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.core.util.ResponseUtils;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.model.SysRoles;
import com.ronglian.security.service.SysRoleService;

@Controller
@RequestMapping(value = "/sysRole")
public class SysRoleController extends BaseController {
	
	@Resource
	private SysRoleService sysRoleService;
	/**
	 * 显示角色列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listPageSysRole")
	public ModelAndView listPageSysRole(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> roleList = sysRoleService.listPageSysRole(page); 
		mv.addObject("roleList", roleList);
		mv.addObject("pd", pd);
		mv.setViewName("security/sysRole/sysRole_list");
		return mv;
	}
	
	/**
	 * 新增角色
	 * @return
	 */
	@RequestMapping(value="/toAddSysRole")
	public ModelAndView toAddSysRole() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("security/sysRole/sysRole_add");
		return mv;
	}
	
	/**
	 * 新增菜单模块
	 * @return
	 */
	@RequestMapping(value="/dnns_addSysRole")
	public ModelAndView dnns_addRole(SysRoles sysRoles) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysRoleService.addSysRole(sysRoles);
//			mv.addObject(Const.MSG, Const.SUCCESS);
			mv.addObject(Const.MSG, "成功");
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 修改角色
	 * @return
	 */
	@RequestMapping(value="/toEditRole")
	public ModelAndView toEditRole(@RequestParam String roleId) {
		ModelAndView mv = this.getModelAndView();
		try {
			SysRoles sysRoles = sysRoleService.getSysRoleById(roleId);
			mv.setViewName("security/sysRole/sysRole_edit");
			mv.addObject("sysRoles", sysRoles);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	/**
	 * 修改角色
	 * @return
	 */
	@RequestMapping(value="/dnns_editRole")
	public ModelAndView dnns_editRole(SysRoles sysRoles) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysRoleService.editSysRoleById(sysRoles);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 删除角色
	 * @return
	 */
	@RequestMapping(value="/delSysRole")
	public void delSysRole(@RequestParam String roleId, PrintWriter out) {
		try{
			sysRoleService.delSysRoleById(roleId);
			out.write(Const.SUCCESS);
			out.flush();
			out.close();
		} catch(Exception e){
			out.write(Const.FAILED);
			logger.error(e.toString(), e);
		}
	}
	
	/**
	 * 菜单角色授权
	 * @return
	 */
	@RequestMapping(value="/toMenuAuth")
	public String toMenuAuth(@RequestParam String roleId, Model model) {
		String json = null;
		try {
			List<SysResource> menuList = sysRoleService.constructCheckedTreeByRole(roleId, Const.TYPE_MENU);
			json = JSONArray.toJSONString(menuList);
			json = json.replaceAll("resourceId", "id").replaceAll("resourceName", "name").replaceAll("subResources", "nodes").replaceAll("hasMenu", "checked");
			model.addAttribute("zTreeNodes", json);
			model.addAttribute("roleId", roleId);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		
		return "security/sysRole/menu_auth";
	}
	
	/**
	 * 保存角色菜单权限
	 */
	@RequestMapping(value="/menuAuth_save")
	public String menuAuth_save(@RequestParam String roleId, @RequestParam String menuIds, HttpServletResponse response) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try{
			sysRoleService.auth_save(roleId, menuIds, Const.TYPE_MENU);
			map.put(Const.MSG, Const.SUCCESS);
			
		} catch(Exception e){
			logger.error(e.toString(), e);
			map.put(Const.MSG, Const.FAILED);
		}
		ResponseUtils.renderJson(response, JSONObject.toJSONString(map));
		return null;
	}
	
	/**
	 * 功能角色授权
	 * @return
	 */
	@RequestMapping(value="/toFuncAuth")
	public String toFuncAuth(@RequestParam String roleId, Model model) {
		String json = null;
		try {
			List<SysResource> menuList = sysRoleService.constructCheckedTreeByRole(roleId, Const.TYPE_FUNC);
			json = JSONArray.toJSONString(menuList);
			json = json.replaceAll("resourceId", "id").replaceAll("resourceName", "name").replaceAll("subResources", "nodes").replaceAll("hasMenu", "checked");
			model.addAttribute("zTreeNodes", json);
			model.addAttribute("roleId", roleId);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		
		return "security/sysRole/func_auth";
	}
	
	/**
	 * 保存角色功能权限
	 */
	@RequestMapping(value="/funcAuth_save")
	public String funcAuth_save(@RequestParam String roleId, @RequestParam String menuIds, HttpServletResponse response) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		try{
			sysRoleService.auth_save(roleId, menuIds, Const.TYPE_FUNC);
			map.put(Const.MSG, Const.SUCCESS);
			
		} catch(Exception e){
			logger.error(e.toString(), e);
			map.put(Const.MSG, Const.FAILED);
		}
		ResponseUtils.renderJson(response, JSONObject.toJSONString(map));
		return null;
	}
}
