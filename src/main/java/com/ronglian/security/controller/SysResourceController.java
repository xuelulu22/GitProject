package com.ronglian.security.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.ronglian.core.controller.BaseController;
import com.ronglian.core.util.Const;
import com.ronglian.core.util.InitPass;
import com.ronglian.core.util.MD5Util;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.core.util.ResponseUtils;
import com.ronglian.security.model.Dictionary;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.model.SysUsers;
import com.ronglian.security.service.SysResourceService;
import com.ronglian.security.service.impl.MyInvocationSecurityMetadataSource;

@Controller
@RequestMapping(value = "/sysResource")
public class SysResourceController extends BaseController {
	
	@Resource
	private SysResourceService sysResourceService;
	/**
	 * 显示菜单模块列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listMenuModul")
	public ModelAndView listMenuModul() throws Exception {
		ModelAndView mv = this.getModelAndView();
		List<SysResource> menuModulList = sysResourceService.getMenuModulResource();
		mv.addObject("menuModulList", menuModulList);
		mv.setViewName("security/sysResource/sysMenu_list");
		return mv;
	}
	
	/**
	 * 显示功能点模块列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listFuncModul")
	public ModelAndView listFuncModul() throws Exception {
		ModelAndView mv = this.getModelAndView();
		List<SysResource> funcModulList = sysResourceService.getFuncModulResource();
		mv.addObject("funcModulList", funcModulList);
		mv.setViewName("security/sysResource/sysFunc_list");
		return mv;
	}
	
	/**
	 * 获取当前模块的所有子菜单
	 * @param menuId
	 * @param response
	 */
	@RequestMapping(value="/doNotNeedSecurity_getSubMenu")
	@ResponseBody
	public List<SysResource> doNotNeedSecurity_getSubMenu(@RequestParam String menuId)throws Exception{
		List<SysResource> subMenuParent = sysResourceService.getSubMenuByParent(menuId);
		return subMenuParent;
	}
	
	/**
	 * 获取当前模块的所有功能点
	 * @param menuId
	 * @param response
	 */
	@RequestMapping(value="/doNotNeedSecurity_getSubFunc")
	@ResponseBody
	public List<SysResource> doNotNeedSecurity_getSubFunc(@RequestParam String funcId)throws Exception{
		List<SysResource> subMenuParent = sysResourceService.getSubFuncByParent(funcId);
		return subMenuParent;
	}
	
	/**
	 * 新增菜单模块
	 * @return
	 */
	@RequestMapping(value="/toAddMenuModul")
	public ModelAndView toAddMenuModul() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("security/sysResource/sysMenuModul_add");
		return mv;
	}
	
	/**
	 * 新增菜单模块
	 * @return
	 */
	@RequestMapping(value="/dnns_addMenuModul")
	public ModelAndView dnns_addMenuModul(SysResource sysResource) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.addSysResource(sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 删除菜单模块
	 * @return
	 */
	@RequestMapping(value="/delMenuModul")
	public void delMenuModul(@RequestParam String modulId, PrintWriter out) {
		try{
			sysResourceService.delSysResource(modulId);
			out.write(Const.SUCCESS);
			out.flush();
			out.close();
		} catch(Exception e){
			out.write(Const.FAILED);
			logger.error(e.toString(), e);
		}
	}
	
	/**
	 * 删除菜单
	 * @return
	 */
	@RequestMapping(value="/delMenu")
	public void delMenu(@RequestParam String menuId, PrintWriter out) {
		try{
			sysResourceService.delSysResource(menuId);
			out.write(Const.SUCCESS);
			out.flush();
			out.close();
		} catch(Exception e){
			out.write(Const.FAILED);
			logger.error(e.toString(), e);
		}
	}
	
	/**
	 * 修改菜单模块
	 * @return
	 */
	@RequestMapping(value="/toEditMenuModul")
	public ModelAndView toEditMenuModul(@RequestParam String modulId) {
		ModelAndView mv = this.getModelAndView();
		try {
			SysResource sysResource = sysResourceService.getSysResourceById(modulId);
			mv.setViewName("security/sysResource/sysMenuModul_edit");
			mv.addObject("sysResource", sysResource);
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
	@RequestMapping(value="/dnns_editMenuModul")
	public ModelAndView dnns_editMenuModul(SysResource sysResource) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.editSysResourceById(sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 新增菜单
	 * @return
	 */
	@RequestMapping(value="/toAddMenu")
	public ModelAndView toAddMenu(@RequestParam String modulId) throws Exception {
		ModelAndView mv = this.getModelAndView();
		try {
			SysResource modul = sysResourceService.getSysResourceById(modulId);
			mv.setViewName("security/sysResource/sysMenu_add");
			mv.addObject("modul", modul);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	/**
	 * 新增菜单
	 * @return
	 */
	@RequestMapping(value="/dnns_addMenu")
	public ModelAndView dnns_addMenu(SysResource sysResource) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.addSysResource(sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 修改菜单
	 * @return
	 */
	@RequestMapping(value="/toEditMenu")
	public ModelAndView toEditMenu(@RequestParam String menuId) {
		ModelAndView mv = this.getModelAndView();
		try {
			SysResource sysResource = sysResourceService.getSysResourceById(menuId);
			SysResource modul = sysResourceService.getSysResourceById(sysResource.getResourceParentid());
			mv.setViewName("security/sysResource/sysMenu_edit");
			mv.addObject("sysResource", sysResource);
			mv.addObject("modul", modul);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	/**
	 * 修改菜单
	 * @return
	 */
	@RequestMapping(value="/dnns_editMenu")
	public ModelAndView dnns_editMenu(SysResource sysResource) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.editSysResourceById(sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 新增功能点模块
	 * @return
	 */
	@RequestMapping(value="/toAddFuncModul")
	public ModelAndView toAddFuncModul() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("security/sysResource/sysFuncModul_add");
		return mv;
	}
	
	/**
	 * 新增功能点模块
	 * @return
	 */
	@RequestMapping(value="/dnns_addFuncModul")
	public ModelAndView dnns_addFuncModul(SysResource sysResource) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.addSysResource(sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 修改功能点模块
	 * @return
	 */
	@RequestMapping(value="/toEditFuncModul")
	public ModelAndView toEditFuncModul(@RequestParam String modulId) {
		ModelAndView mv = this.getModelAndView();
		try {
			SysResource sysResource = sysResourceService.getSysResourceById(modulId);
			mv.setViewName("security/sysResource/sysFuncModul_edit");
			mv.addObject("sysResource", sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	/**
	 * 修改功能点模块
	 * @return
	 */
	@RequestMapping(value="/dnns_editFuncModul")
	public ModelAndView dnns_editFuncModul(SysResource sysResource) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.editSysResourceById(sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 删除功能点模块
	 * @return
	 */
	@RequestMapping(value="/delFuncModul")
	public void delFuncModul(@RequestParam String modulId, PrintWriter out) {
		try{
			sysResourceService.delSysResource(modulId);
			out.write(Const.SUCCESS);
			out.flush();
			out.close();
		} catch(Exception e){
			out.write(Const.FAILED);
			logger.error(e.toString(), e);
		}
	}
	
	/**
	 * 新增功能点
	 * @return
	 */
	@RequestMapping(value="/toAddFunc")
	public ModelAndView toAddFunc(@RequestParam String modulId) throws Exception {
		ModelAndView mv = this.getModelAndView();
		try {
			SysResource modul = sysResourceService.getSysResourceById(modulId);
			mv.setViewName("security/sysResource/sysFunc_add");
			mv.addObject("modul", modul);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	/**
	 * 新增功能点
	 * @return
	 */
	@RequestMapping(value="/dnns_addFunc")
	public ModelAndView dnns_addFunc(SysResource sysResource) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.addSysResource(sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 修改功能点
	 * @return
	 */
	@RequestMapping(value="/toEditFunc")
	public ModelAndView toEditFunc(@RequestParam String funcId) {
		ModelAndView mv = this.getModelAndView();
		try {
			SysResource sysResource = sysResourceService.getSysResourceById(funcId);
			SysResource modul = sysResourceService.getSysResourceById(sysResource.getResourceParentid());
			mv.setViewName("security/sysResource/sysMenu_edit");
			mv.addObject("sysResource", sysResource);
			mv.addObject("modul", modul);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		return mv;
	}
	
	/**
	 * 修改功能点
	 * @return
	 */
	@RequestMapping(value="/dnns_editFunc")
	public ModelAndView dnns_editFunc(SysResource sysResource) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.editSysResourceById(sysResource);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 删除功能点
	 * @return
	 */
	@RequestMapping(value="/delFunc")
	public void delFunc(@RequestParam String funcId, PrintWriter out) {
		try{
			sysResourceService.delSysResource(funcId);
			out.write(Const.SUCCESS);
			out.flush();
			out.close();
		} catch(Exception e){
			out.write(Const.FAILED);
			logger.error(e.toString(), e);
		}
	}
	
	
	
	/**
	 * 数据字典
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageDictionary")
	public ModelAndView listPageDictionary(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> dictionaryList = sysResourceService.listPageDictionary(page);
		mv.addObject("dictionaryList", dictionaryList);
		mv.addObject("pd", pd);
		mv.setViewName("security/sysResource/dictionary_list");
		return mv;
	}
	
	
	/**
	 * 新增字典页面
	 * @return
	 */
	@RequestMapping(value="/toAddDictionaryPage")
	public ModelAndView toAddDictionaryPage(@RequestParam String id) throws Exception {
		ModelAndView mv = this.getModelAndView();
		try {
			if(id !=null && !id.equals("")){
				Map<String, Object> params=new HashMap<String, Object>();
				params.put("id", id);
				Dictionary dictionary = sysResourceService.getDictionaryInfo(params);
				mv.addObject("dictionary",dictionary);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("security/sysResource/dictionary_add");
		return mv;
	}
	
	
	/**
	 * 保存
	 * @return
	 */
	@RequestMapping(value="/doSaveDictionary")
	public ModelAndView doSaveDictionary(Dictionary dictionary) {
		ModelAndView mv = this.getModelAndView();
		try {
			sysResourceService.addDictionary(dictionary);
			mv.addObject(Const.MSG, Const.SUCCESS);
		} catch (Exception e) {
			mv.addObject(Const.MSG, Const.FAILED);
			e.printStackTrace();
		}
		mv.setViewName(Const.SAVE_RESULT);
		return mv;
	}
	
	/**
	 * 查询数据字典是否已经存在
	 * @return
	 */
	@RequestMapping(value="/doSelectDictionaryIsExist")
	public String doSelectDictionaryIsExist(
			@RequestParam String value,
			@RequestParam String type,
			HttpServletRequest request, HttpServletResponse response
			) throws Exception {
		try{
			Map<String, Object> status = new HashMap<String, Object>();
			Map<String, Object> params=new HashMap<String, Object>();
			params.put("value", value);
			params.put("type", type);
			List<Dictionary> list = sysResourceService.doSelectDictionaryIsExist(params);
			if(list!=null && list.size()>0){
				status.put("state",Const.FAILED );
			}else{
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
	
	
	
	
}
