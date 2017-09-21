package com.ronglian.ch.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ronglian.ch.model.PatMasterIndex;
import com.ronglian.ch.model.PatientTimer;
import com.ronglian.ch.service.PatMasterIndexService;
import com.ronglian.ch.service.PatMasterTimerService;
import com.ronglian.core.controller.BaseController;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;

@Controller
@RequestMapping(value = "/PatMasterTimer")
public class PatMasterTimerController extends BaseController {
	@Resource
	private PatMasterTimerService patMasterTimerService;
	
	@Resource
	private PatMasterIndexService patMasterIndexService;

	/**
	 * 获取时间轴
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/toPatientTimer")
	public ModelAndView toPatientTimer(@RequestParam String PatientId) {
		ModelAndView mv = new ModelAndView();
		List<PatientTimer> patientTimers = null;
		PatMasterIndex patMasterIndex = null;
		try {
			patientTimers = patMasterTimerService
					.getPatMasterTimerByPatientID(PatientId);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("patient_id", PatientId);
			patMasterIndex = patMasterIndexService.getPatMasterIndexInfo(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("ch/patmastertimer/time");
		mv.addObject("patientTimers", patientTimers);
		mv.addObject("patMasterIndex", patMasterIndex);
		mv.addObject("PatientId", PatientId);
		return mv;
	}
	
	/**
	 * 获取门诊病历时间轴
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/toOutPatientTimer")
	public ModelAndView toOutPatientTimer(@RequestParam String outPatientId, @RequestParam String PatientId) {
		ModelAndView mv = new ModelAndView();
		List<PatientTimer> patientTimers = null;
		PatMasterIndex patMasterIndex = null;
		try {
			patientTimers = patMasterTimerService.getPatMasterTimerByOutPatientID(outPatientId);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("patient_id", PatientId);
			patMasterIndex = patMasterIndexService.getPatMasterIndexInfo(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("ch/patmastertimer/time");
		mv.addObject("patientTimers", patientTimers);
		mv.addObject("patMasterIndex", patMasterIndex);
		mv.addObject("PatientId", PatientId);
		return mv;
	}
	
	/**
	 * 获取住院病例时间轴
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/toInPatientTimer")
	public ModelAndView toInPatientTimer(@RequestParam String inPatientId, @RequestParam String PatientId) {
		ModelAndView mv = new ModelAndView();
		List<PatientTimer> patientTimers = null;
		PatMasterIndex patMasterIndex = null;
		try {
			patientTimers = patMasterTimerService.getPatMasterTimerByInPatientID(inPatientId);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("patient_id", PatientId);
			patMasterIndex = patMasterIndexService.getPatMasterIndexInfo(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("ch/patmastertimer/time");
		mv.addObject("patientTimers", patientTimers);
		mv.addObject("patMasterIndex", patMasterIndex);
		mv.addObject("PatientId", PatientId);
		return mv;
	}

	
	
	/**
	 * 查询时间轴点开详情信息
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/getTimeView")
	public ModelAndView getTimeView(
			@RequestParam String id,
			@RequestParam String patient_id,
			@RequestParam String flag,
			@RequestParam String outpatient_no,
			@RequestParam String inpatient_no
			) {
		
		ModelAndView mv = new ModelAndView();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("t_patient_id", patient_id);
		params.put("flag", flag);
		params.put("id", id);
		params.put("t_outpatient_no", outpatient_no);
		params.put("t_inpatient_no", inpatient_no);
		Map<String, Object> m  = null;
		try {
		      m = patMasterTimerService.getTimeView(params);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(m.get("type").equals("1")){//患者检查 
			mv.setViewName("ch/clinicmaster/view/examreportex_view");
		}else if(m.get("type").equals("2")){//患者检验
			Page page =new Page();
			PageData pd = new PageData();
			pd = this.getPageData();
			page.setPd(pd);
			page.getPd().put("test_no", id);
			try {
				List<PageData> labResultList = patMasterIndexService.listPageLabResult(page);
				mv.addObject("labResultList", labResultList);
				mv.addObject("pd", pd);
			} catch (Exception e) {
				e.printStackTrace();
			}
			mv.setViewName("ch/clinicmaster/lab_result_list");
		}else if(m.get("type").equals("3")){//患者病例   - 门诊病例
			mv.setViewName("ch/clinicmaster/view/outpmrclinicmaster_view");
		}else if(m.get("type").equals("4")){//患者病例   - 住院病例
			mv.setViewName("ch/clinicmaster/view/patvisit_view");
		}else if(m.get("type").equals("5")){//影像检查
			mv.setViewName("ch/clinicmaster/view/pacsreport_view");
		}
		
		mv.addObject("m", m);
		return mv;
	}
	
	
	
	@RequestMapping(value="/toEditPatient")
	public ModelAndView toEditPatient(@RequestParam String patient_id) throws Exception {
		ModelAndView mv = this.getModelAndView();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("patient_id", patient_id);
		PatMasterIndex patMasterIndex = patMasterIndexService.getPatMasterIndexInfo(params);
		mv.addObject("patMasterIndex", patMasterIndex);
		mv.setViewName("ch/clinicmaster/view/patient_view");
		return mv;
	}
	
	
}
