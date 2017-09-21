package com.ronglian.security.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ronglian.core.controller.BaseController;
import com.ronglian.core.util.Const;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.security.model.SysOrganization;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.service.SysOrganizationService;

@Controller
@RequestMapping(value = "/sysOrganization")
public class SysOrganizationController extends BaseController {
	
	@Resource
	private SysOrganizationService sysOrganizationService;
	/**
	 * 显示机构列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listPageSysOrganization")
	public ModelAndView listPageSysOrganization(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> organizationList = sysOrganizationService.listPageSysOrganization(page);
		mv.addObject("organizationList", organizationList);
		mv.addObject("pd", pd);
		mv.setViewName("security/sysOrganization/sysOrganization_list");
		return mv;
	}
	
	
	/**
	 * 到新增机构页面
	 * @return
	 */
	@RequestMapping(value="/toAddOrganizationPage")
	public ModelAndView toAddOrganizationPage() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("security/sysOrganization/sysOrganization_add");
		return mv;
	}
	
	/**
	 * 保存机构
	 * @return
	 */
	@RequestMapping(value="/doAddOrganization")
	public ModelAndView doAddOrganization(SysOrganization sysOrganization) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysOrganization.setFlag( (byte) 1);
			sysOrganizationService.addSysOrganization(sysOrganization);
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
	@RequestMapping(value="/toEidtOrganizationPage")
	public ModelAndView toEidtOrganizationPage(@RequestParam String modulId) {
		ModelAndView mv = this.getModelAndView();
		try {
			SysOrganization sysOrganization = sysOrganizationService.getSysOrganizationById(modulId);
			mv.setViewName("security/sysOrganization/sysOrganization_edit");
			mv.addObject("sysOrganization", sysOrganization);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	/**
	 * 修改菜单模块
	 * @return
	 */
	@RequestMapping(value="/doEditOrganization")
	public ModelAndView doEditOrganization(SysOrganization sysOrganization) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysOrganizationService.doEditOrganization(sysOrganization);
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
	@RequestMapping(value="/delOrganization")
	public void delMenuModul(@RequestParam String modulId, PrintWriter out) {
		try{
			sysOrganizationService.delOrganization(modulId);
			out.write(Const.SUCCESS);
			out.flush();
			out.close();
		} catch(Exception e){
			out.write(Const.FAILED);
			logger.error(e.toString(), e);
		}
	}
	
}
