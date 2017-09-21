package com.ronglian.ch.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ronglian.ch.model.PatientTimer;
import com.ronglian.ch.service.PatMasterTimerService;
import com.ronglian.core.controller.BaseController;

@Controller
@RequestMapping(value = "/PatVisit")
public class PatVisitController extends BaseController {
	@Resource
	private PatMasterTimerService patMasterTimerService;

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
		try {
			patientTimers = patMasterTimerService
					.getPatMasterTimerByPatientID(PatientId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("ch/patmastertimer/time");
		mv.addObject("patientTimers", patientTimers);
		return mv;
	}

}
