package com.ronglian.ch.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ronglian.ch.model.Diagnosis;
import com.ronglian.ch.model.DiagnosticCategory;
import com.ronglian.ch.service.DiagnosisCategoryService;
import com.ronglian.ch.service.DiagnosisService;
import com.ronglian.ch.service.PatMasterIndexService;
import com.ronglian.ch.service.PatVisitService;
import com.ronglian.core.controller.BaseController;
import com.ronglian.core.util.Page;

@Controller
@RequestMapping(value = "/Diagnosis")
public class DiagnosisController extends BaseController {
	Logger logger = Logger.getLogger(DiagnosisController.class.getName());
	
	@Resource
	private PatMasterIndexService patMasterIndexService;
	
	@Resource
	private DiagnosisService diagnosisService;
	
	@Resource
	private DiagnosisCategoryService diagnosisCategoryService;
	
	@Resource
	private PatVisitService patVisitService;
	
	/**
	 * 诊断列表页面
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageDiagnosis")
	public ModelAndView listPageDiagnosis(Page page,HttpServletRequest request,
			@RequestParam String type
			) throws Exception {
		ModelAndView mv = this.getModelAndView();
		//List<PageData> diagnosisList  = new ArrayList<PageData>();
		//PageData pd = new PageData();
		//pd = this.getPageData();
		//page.setPd(pd);
		//diagnosisList = diagnosisService.listPageDiagnosis(page);
		//mv.addObject("diagnosisList", diagnosisList);
		//mv.addObject("pd", pd);
		
		//mv.setViewName("ch/diagnosis/diagnosis_list");
		mv.setViewName("static/kyb/jsp/zhenduanxinxi");
		return mv;
	}
	
	
	/**
	 * 详细页面
	 * @return
	 */
	@RequestMapping(value="/toEditDiagnosisPage")
	public ModelAndView toEditDiagnosisPage(@RequestParam String id) {
		ModelAndView mv = this.getModelAndView();
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", id);
			Diagnosis diagnosis = diagnosisService.getDiagnosisById(map);
			if(diagnosis != null) {
				mv.addObject("diagnosis", diagnosis);
				map = new HashMap<String, Object>();
				map.put("diagnostic_id", diagnosis.getId());
				List<DiagnosticCategory> listDiagnosisCategory = diagnosisCategoryService.listDiagnosisCategory(map);
					mv.addObject("listDiagnosisCategory", listDiagnosisCategory);
			}
			mv.setViewName("ch/diagnosis/diagnosis_edit");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	
	@RequestMapping(value="/hualiaoxinxi")
	public ModelAndView hualiaoxinxi() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("static/kyb/jsp/hualiaoxinxi");
		return mv;
	}
	@RequestMapping(value="/baxiangzhiliao")
	public ModelAndView baxiangzhiliao() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("static/kyb/jsp/baxiangzhiliao");
		return mv;
	}
	@RequestMapping(value="/shoushuxinxi")
	public ModelAndView shoushuxinxi() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("static/kyb/jsp/shoushuxinxi");
		return mv;
	}
	@RequestMapping(value="/fangliaoxinxi")
	public ModelAndView fangliaoxinxi() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("static/kyb/jsp/fangliaoxinxi");
		return mv;
	}
	@RequestMapping(value="/buliangshijian")
	public ModelAndView buliangshijian() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("static/kyb/jsp/buliangshijian");
		return mv;
	}
	@RequestMapping(value="/liaoxiaopinggu")
	public ModelAndView liaoxiaopinggu() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("static/kyb/jsp/liaoxiaopinggu");
		return mv;
	}
	@RequestMapping(value="/suifangchaxun")
	public ModelAndView suifangchaxun() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("static/kyb/jsp/suifangchaxun");
		return mv;
	}
	@RequestMapping(value="/suifangshezhi")
	public ModelAndView suifangshezhi() throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("static/kyb/jsp/suifangshezhi");
		return mv;
	}
	
}
