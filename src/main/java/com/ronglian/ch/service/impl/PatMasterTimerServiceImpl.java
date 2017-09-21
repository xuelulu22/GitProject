package com.ronglian.ch.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ronglian.ch.model.ExamReportEx;
import com.ronglian.ch.model.LabTestMaster;
import com.ronglian.ch.model.OutpMrClinicMaster;
import com.ronglian.ch.model.PacsReport;
import com.ronglian.ch.model.PatMasterIndex;
import com.ronglian.ch.model.PatMasterTimer;
import com.ronglian.ch.model.PatVisit;
import com.ronglian.ch.model.PatientTimer;
import com.ronglian.ch.service.PatMasterTimerService;
import com.ronglian.core.dao.BaseDAO;

@Service
public class PatMasterTimerServiceImpl implements PatMasterTimerService {
	@Resource
	private BaseDAO dao;

	@SuppressWarnings("unchecked")
	@Override
	public List<PatientTimer> getPatMasterTimerByPatientID(String PatientId)
			throws Exception {

		List<PatientTimer> patientTimers = null;
		Map<String, String> queryMap = new HashMap<String, String>();
		queryMap.put("PatientId", PatientId);
		queryMap.put("order", "desc");
		List<Map<String, Object>> yearsList = (List<Map<String, Object>>) dao.findForList("PatMasterTimerMapper.getTimerYears",
				queryMap);
		if (yearsList != null && yearsList.size() > 0) {
			patientTimers = new ArrayList<PatientTimer>();
			for (Map<String, Object> map : yearsList) {
				String year = map.get("YEAR").toString();
				PatientTimer patientTimer = new PatientTimer();
				patientTimer.setYear(year);

				queryMap = new HashMap<String, String>();
				queryMap.put("year", year);
				queryMap.put("PatientId", PatientId);
				queryMap.put("order", "asc");
				List<PatMasterTimer> patMasterTimers = (List<PatMasterTimer>) dao.findForList("PatMasterTimerMapper.getTimers",
								queryMap);
				if (patMasterTimers != null && patMasterTimers.size() > 0) {
					patientTimer.setPatMasterTimers(patMasterTimers);
				}
				patientTimers.add(patientTimer);
			}
		}

		return patientTimers;
	}

	@Override
	public List<PatientTimer> getPatMasterTimerByOutPatientID(
			String outPatientId) throws Exception {
		List<PatientTimer> patientTimers = null;
		Map<String, String> queryMap = new HashMap<String, String>();
		queryMap.put("outPatientId", outPatientId);
		queryMap.put("order", "desc");
		List<Map<String, Object>> yearsList = (List<Map<String, Object>>) dao.findForList("PatMasterTimerMapper.getTimerYears",
				queryMap);
		if (yearsList != null && yearsList.size() > 0) {
			patientTimers = new ArrayList<PatientTimer>();
			for (Map<String, Object> map : yearsList) {
				String year = map.get("YEAR").toString();
				PatientTimer patientTimer = new PatientTimer();
				patientTimer.setYear(year);

				queryMap = new HashMap<String, String>();
				queryMap.put("year", year);
				queryMap.put("outPatientId", outPatientId);
				queryMap.put("order", "asc");
				List<PatMasterTimer> patMasterTimers = (List<PatMasterTimer>) dao.findForList("PatMasterTimerMapper.getTimers",
								queryMap);
				if (patMasterTimers != null && patMasterTimers.size() > 0) {
					patientTimer.setPatMasterTimers(patMasterTimers);
				}
				patientTimers.add(patientTimer);
			}
		}

		return patientTimers;
	}

	@Override
	public List<PatientTimer> getPatMasterTimerByInPatientID(String inPatientId)
			throws Exception {
		List<PatientTimer> patientTimers = null;
		Map<String, String> queryMap = new HashMap<String, String>();
		queryMap.put("inPatientId", inPatientId);
		queryMap.put("order", "desc");
		List<Map<String, Object>> yearsList = (List<Map<String, Object>>) dao.findForList("PatMasterTimerMapper.getTimerYears",
				queryMap);
		if (yearsList != null && yearsList.size() > 0) {
			patientTimers = new ArrayList<PatientTimer>();
			for (Map<String, Object> map : yearsList) {
				String year = map.get("YEAR").toString();
				PatientTimer patientTimer = new PatientTimer();
				patientTimer.setYear(year);

				queryMap = new HashMap<String, String>();
				queryMap.put("year", year);
				queryMap.put("inPatientId", inPatientId);
				queryMap.put("order", "asc");
				List<PatMasterTimer> patMasterTimers = (List<PatMasterTimer>) dao.findForList("PatMasterTimerMapper.getTimers",
								queryMap);
				if (patMasterTimers != null && patMasterTimers.size() > 0) {
					patientTimer.setPatMasterTimers(patMasterTimers);
				}
				patientTimers.add(patientTimer);
			}
		}

		return patientTimers;
	}

	@Override
	public Map<String, Object> getTimeView(Map<String, Object> params)throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			if(params.get("flag").equals("EXAM_REPORT_EX")){
				//患者检查 
				ExamReportEx examReportEx = (ExamReportEx) dao.findForObject("ExamReportExMapper.doSelectExamReportExInfo", params);
				result.put("type", "1");
				result.put("examReportEx", examReportEx);
			}else if(params.get("flag").equals("LAB_TEST_MASTER")){
				//患者检验
				//LabTestMaster labTestMaster = (LabTestMaster) dao.findForObject("LabTestMasterMapper.doSelectLabTestMasterInfo", params);
				result.put("type", "2");
				//result.put("labTestMaster", labTestMaster);
			}else if(params.get("flag").equals("OUTP_MR")){
				//患者病例
				if(params.get("t_outpatient_no")!=null && !params.get("t_outpatient_no").equals("")){
					//门诊病例
					OutpMrClinicMaster outpMrClinicMaster = (OutpMrClinicMaster) dao.findForObject("OutpMrMapper.getOutpMrClinicMasterInfo", params);
					result.put("type", "3");
					result.put("outpMrClinicMaster", outpMrClinicMaster);
				}else if(params.get("t_inpatient_no")!=null && !params.get("t_inpatient_no").equals("")){
					//住院病例
					PatVisit patVisit = (PatVisit) dao.findForObject("PatMasterIndexMapper.getPatVisitInfo", params);
					result.put("type", "4");
					result.put("patVisit", patVisit);
				}
			}else if(params.get("flag").equals("PACS_REPORT")){
				//影像检查
				PacsReport pacsReport = (PacsReport) dao.findForObject("PacsReportMapper.doSelectPacsReportInfo", params);
				result.put("type", "5");
				result.put("pacsReport", pacsReport);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		result.put("inpatient_no", params.get("t_inpatient_no"));
		result.put("outpatient_no", params.get("t_outpatient_no"));
		return result;
	}

	

}
