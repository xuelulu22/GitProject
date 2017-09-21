package com.ronglian.security.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ronglian.ch.model.PatMasterIndex;
import com.ronglian.ch.service.PatMasterIndexService;
import com.ronglian.core.util.Const;
import com.ronglian.security.model.SysResource;
import com.ronglian.security.model.SysUsers;
import com.ronglian.security.service.SysResourceService;
import com.ronglian.security.service.SysUserService;

@Controller
@RequestMapping(value = "/")
public class DesktopController {
	@Resource
	private SysUserService sysUserService;
	
	@Resource
	private SysResourceService sysResourceService;
	
	@Resource
	private PatMasterIndexService patMasterIndexService;
	
	/**
	 * 获取菜单资源
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "index.do")
	public ModelAndView toIndex(HttpServletRequest request) throws Exception {
		SysUsers sysUsers = sysUserService.getLoginUserBySpringSecurity();
		if (sysUsers != null && sysUsers.getUserId() != null) {
			ModelAndView mv = new ModelAndView();
			request.getSession().setAttribute(Const.SESSION_USER_KEY, sysUsers);
			request.getSession().setAttribute(Const.SESSION_USERID_KEY, sysUsers.getUserId());
			
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("userId", sysUsers.getUserId());
			List<SysResource> menuResources = sysResourceService.getMenuResourceByUser(params);
			if(null == request.getSession().getAttribute(Const.SESSION_allmenuList)){
				request.getSession().setAttribute(Const.SESSION_allmenuList, menuResources);			//菜单权限放入session中
			} else {
				menuResources = (List<SysResource>)request.getSession().getAttribute(Const.SESSION_allmenuList);
			}
			mv.setViewName("admin/index");
			mv.addObject("user", sysUsers);
			mv.addObject("menuList", menuResources);
			return mv;
		} else {
			return new ModelAndView("login");
		}
    }  
	
	
	/**
	 * 重新打开窗口显示病人信息
	 * @return
	 */
	@RequestMapping(value = "patmaster_main")
	public ModelAndView patmaster_main(
			@RequestParam String patient_id,
			@RequestParam String type,
			@RequestParam String id,
			HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView();
			List<SysResource> menuResources = new ArrayList<SysResource>();
			SysResource sysResource =new SysResource();
			if(type.equals("mz")){
				//门诊病例
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/patMasterIndexView.do?menu=1&patient_id="+patient_id+"&id="+id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("门诊病例");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/listPageExamReportExPacsReport.do?outpatient_no="+id+"&patient_id="+patient_id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("门诊检查");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/listPageLabTestMaster.do?outpatient_no="+id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("门诊检验");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/listPageDiagnosis.do?type=1&outpatient_no="+id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("门诊诊断");
				menuResources.add(sysResource);
				
				mv.addObject("outPatientId", id);
				
			} else if (type.equals("zy")) {
				//住院病例
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/patMasterIndexView.do?menu=2&patient_id="+patient_id+"&id="+id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("住院病例");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/listPagePatVisitExamReportExPacsReport.do?inpatient_no="+id+"&patient_id="+patient_id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("住院检查");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/listPagePatVisitLabTestMaster.do?inpatient_no="+id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("住院检验");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/listPageDiagnosis.do?type=2&inpatient_no="+id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("住院诊断");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/hualiaoxinxi.do");
				sysResource.setResourceId("1");
				sysResource.setResourceName("化疗信息");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/baxiangzhiliao.do");
				sysResource.setResourceId("1");
				sysResource.setResourceName("靶向治疗");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/shoushuxinxi.do");
				sysResource.setResourceId("1");
				sysResource.setResourceName("手术信息");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/fangliaoxinxi.do");
				sysResource.setResourceId("1");
				sysResource.setResourceName("放疗信息");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/buliangshijian.do");
				sysResource.setResourceId("1");
				sysResource.setResourceName("不良信息");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/liaoxiaopinggu.do");
				sysResource.setResourceId("1");
				sysResource.setResourceName("疗效评估");
				menuResources.add(sysResource);
				
				mv.addObject("inPatientId", id);
			}
			else {
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/patMasterIndexView.do?menu=3&patient_id="+patient_id+"&id="+id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("门诊病例");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/listPageHzMzExamReportExPacsReport.do?patient_id="+patient_id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("门诊检查");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/listPageHzMzLabTestMaster.do?patient_id="+patient_id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("门诊检验");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/listPageDiagnosis.do?type=3&patient_id="+patient_id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("门诊诊断");
				menuResources.add(sysResource);
				
				//住院病例
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/patMasterIndexView.do?menu=4&patient_id="+patient_id+"&id="+id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("住院病例");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/listPageHzZyExamReportExPacsReport.do?patient_id="+patient_id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("住院检查");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("patMasterIndex/listPageHzZyLabTestMaster.do?patient_id="+patient_id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("住院检验");
				menuResources.add(sysResource);
				
				sysResource =new SysResource();
				sysResource.setResourceUrl("Diagnosis/listPageDiagnosis.do?type=4&patient_id="+patient_id);
				sysResource.setResourceId("1");
				sysResource.setResourceName("住院诊断");
				menuResources.add(sysResource);
			}
			
			mv.addObject("menuList", menuResources);
			mv.addObject("patient_id", patient_id);
			mv.addObject("type", type);
			mv.setViewName("ch/patmaster_main/index");
			return mv;
    }  
	/**
	 * 进入病人信息tab标签
	 * @return
	 */
	@RequestMapping(value="/tab2")
	public String tab2() {
		return "ch/patmaster_main/tab";
	}
	
	
	/**
	 * 进入tab标签
	 * @return
	 */
	@RequestMapping(value="/tab")
	public String tab() {
		return "admin/tab";
	}
	
	/**
	 * 进入首页后的默认页面
	 * @return
	 */
	@RequestMapping(value="/login_default")
	public String defaultPage(){
		return "admin/default";
	}
	
	/**
	 * 进入首页后的默认页面
	 * @return
	 */
	@RequestMapping(value="/aaa")
	public String aaa(){
		return "admin/aaa";
	}
	
	/**
	 * 进入首页后的默认页面
	 * @return
	 */
	@RequestMapping(value="/sfsfsfs")
	public String sfsfsfs(){
		return "admin/sfsfsfs";
	}
}
