package com.ronglian.security.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.ronglian.core.controller.BaseController;
import com.ronglian.core.util.Const;
import com.ronglian.core.util.InitPass;
import com.ronglian.core.util.MD5Util;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.core.util.ResponseUtils;
import com.ronglian.security.model.SysRoles;
import com.ronglian.security.model.SysUsers;
import com.ronglian.security.service.SysResourceService;
import com.ronglian.security.service.SysRoleService;
import com.ronglian.security.service.SysUserService;

@Controller
@RequestMapping(value = "/sysUser")
public class SysUserController extends BaseController {
	@Resource
	private SysUserService sysUserService;
	
	@Resource
	private SysResourceService sysResourceService;
	
	@Resource
	private SysRoleService sysRoleService;
	
	/**
	 * 用户列表页面
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageSysUser")
	public ModelAndView listPageSysUser(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> sysUserList = sysUserService.listPageSysUser(page); //列出用户列表
		mv.addObject("sysUserList", sysUserList);
		mv.addObject("pd", pd);
		mv.setViewName("security/sysUser/sysUser_list");
		return mv;
	}
	
	/**
	 * 到新增用户页面
	 * @return
	 */
	@RequestMapping(value="/toAddUserPage")
	public ModelAndView toAddUserPage() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("security/sysUser/sysUser_add");
		return mv;
	}
	
	
	
	/**
	 * 保存用户
	 * @return
	 */
	@RequestMapping(value="/doAddUser")
	public ModelAndView doAddOrganization(SysUsers sysUsers) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysUsers.setFlag( (byte) 1);
			sysUsers.setUserPassword(MD5Util.md5(InitPass.initpassword));
			sysUserService.addSysUser(sysUsers);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 到修改页面
	 * @return
	 */
	@RequestMapping(value="/toEditUserPage")
	public ModelAndView toEditUserPage(@RequestParam String modulId) {
		ModelAndView mv = this.getModelAndView();
		try {
			SysUsers sysUsers = sysUserService.getSysUserById(modulId);
			mv.setViewName("security/sysUser/sysUser_edit");
			mv.addObject("sysUsers", sysUsers);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	/**
	 * 修改用户
	 * @return
	 */
	@RequestMapping(value="/doEditUser")
	public ModelAndView doEditUser(SysUsers sysUsers) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysUserService.doEditUser(sysUsers);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 删除
	 * @return
	 */
	@RequestMapping(value="/delUser")
	public void delUser(@RequestParam String modulId, PrintWriter out) {
		try{
			sysUserService.delUser(modulId);
			out.write(Const.SUCCESS);
			out.flush();
			out.close();
		} catch(Exception e){
			out.write(Const.FAILED);
			logger.error(e.toString(), e);
		}
	}
	
	/**
	 * 重置密码
	 * @return
	 */
	@RequestMapping(value="/resetPass")
	public void resetPass(@RequestParam String modulId, PrintWriter out) {
		try{
			sysUserService.resetPass(modulId);
			out.write(Const.SUCCESS);
			out.flush();
			out.close();
		} catch(Exception e){
			out.write(Const.FAILED);
			logger.error(e.toString(), e);
		}
	}
	
	/**
	 * 查询账号是否存在
	 * @return
	 */
	@RequestMapping(value="/doGetUserExist")
	public String doGetUserExist(
			@RequestParam String userAccount,
			HttpServletRequest request, HttpServletResponse response
			) throws Exception {
		try{
			Map<String, Object> status = new HashMap<String, Object>();
			Map<String, Object> params=new HashMap<String, Object>();
			params.put("userAccount", userAccount);
			params.put("flag", "1");
			List list = sysUserService.doGetUserExist(params);
			if(list!=null && list.size()>0){
				status.put("state",Const.FAILED );
			}
			else{
				status.put("state",Const.SUCCESS );
			}
			ResponseUtils.renderJson(response, JSONObject.toJSONString(status));
		} catch(Exception e){
			Map<String, Object> error = new HashMap<String, Object>();
			error.put("state",Const.FAILED );
			ResponseUtils.renderJson(response, JSONObject.toJSONString(error));
			logger.error(e.toString(), e);
		}
		return null;
	}
	
	/**
	 * 到新增用户页面
	 * @return
	 */
	@RequestMapping(value="/toEditPassPage")
	public ModelAndView toEditPassPage() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("security/sysUser/sysUserPass_edit");
		return mv;
	}
	
	/**
	 * 修改密码
	 * @return
	 */
	@RequestMapping(value="/doEditUserPass")
	public ModelAndView doEditUserPass(@RequestParam String userPassword,
			HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = this.getModelAndView();
		try {
			SysUsers sysUsers2 = sysUserService.getLoginUserBySpringSecurity();
			SysUsers sysUsers =new SysUsers();
			sysUsers.setUserId(sysUsers2.getUserId());
			sysUsers.setUserPassword(MD5Util.md5(userPassword));
			sysUserService.doEditUser(sysUsers);
			mv.addObject(Const.MSG, Const.SUCCESS);
			mv.setViewName(Const.SAVE_RESULT);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping(value="/toAddUserRolePage")
	public String toAddUserRolePage(@RequestParam String userId,Model m) {
		try {
			List<SysRoles> rolesList = sysRoleService.getRolesList(userId);
			m.addAttribute("roleList", rolesList);
			m.addAttribute("userId", userId);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		
		return "security/sysUser/userAddRole";
	}
	
	@RequestMapping(value="/doSaveUserRole")
	public ModelAndView doSaveUserRole(
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam String userId,
			@RequestParam String roleId,
			Model m) {
		ModelAndView mv = this.getModelAndView();
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("userId", userId);
			param.put("roleId", roleId);
			boolean b=sysRoleService.doSaveUserRole(param);
			Map<String, Object> status = new HashMap<String, Object>();
			mv.addObject(Const.MSG, Const.SUCCESS);
			mv.setViewName(Const.SAVE_RESULT);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	
	@RequestMapping(value="/toReportPage")
	public String toReportPage() {
		return "report_page";
	}
	
	@RequestMapping(value="/toReportPage2")
	public String toReportPage2() {
		return "report_page2";
	}
	
	@RequestMapping(value="/time")
	public String tine() {
		return "time";
	}
	

}
