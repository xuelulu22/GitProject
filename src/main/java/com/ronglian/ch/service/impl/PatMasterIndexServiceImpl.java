package com.ronglian.ch.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ronglian.ch.model.ClinicMaster;
import com.ronglian.ch.model.OutpMr;
import com.ronglian.ch.model.OutpMrClinicMaster;
import com.ronglian.ch.model.PatMasterIndex;
import com.ronglian.ch.model.PatVisit;
import com.ronglian.ch.model.ReportDiseaseNum;
import com.ronglian.ch.model.ReportDiseaseNumT;
import com.ronglian.ch.model.ReportMedicalRecord;
import com.ronglian.ch.model.ReportOperationNum;
import com.ronglian.ch.model.ReportScientificResearch;
import com.ronglian.ch.model.ReportTreatment;
import com.ronglian.ch.service.PatMasterIndexService;
import com.ronglian.core.dao.BaseDAO;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
@Service
public class PatMasterIndexServiceImpl implements PatMasterIndexService {
	@Resource
	private BaseDAO dao;

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPagePatMasterIndex(Page page) throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPagePatMasterIndex", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ReportDiseaseNum> reportDiseaseNum(Map<String, Object> params)throws Exception {
		return (List<ReportDiseaseNum>) dao.findForList("ReportDiseaseNumMapper.doSelectReportDiseaseNum", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ReportMedicalRecord> ReportMedicalRecord(Map<String, Object> params) throws Exception {
		return (List<ReportMedicalRecord>) dao.findForList("ReportDiseaseNumMapper.doSelectReportMedicalRecord", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageRportMedicalRecord(Page page)throws Exception {
		return (List<PageData>) dao.findForList("ReportDiseaseNumMapper.listPageRportMedicalRecord", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ReportOperationNum> ReportOperationNum(Map<String, Object> params) throws Exception {
		return (List<ReportOperationNum>) dao.findForList("ReportDiseaseNumMapper.doSelectReportOperationNum", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageReportOperationNum(Page page)throws Exception {
		return (List<PageData>) dao.findForList("ReportDiseaseNumMapper.listPageReportOperationNum", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageReportDiseaseNumT(Page page) throws Exception {
		return (List<PageData>) dao.findForList("ReportDiseaseNumMapper.listPageReportDiseaseNumT", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ReportDiseaseNumT> listPageReportDiseaseNumT(Map<String, Object> params)throws Exception {
		return (List<ReportDiseaseNumT>) dao.findForList("ReportDiseaseNumMapper.doSelectReportDiseaseNumT", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ReportTreatment> ReportTreatment(Map<String, Object> params) throws Exception {
		return (List<ReportTreatment>) dao.findForList("ReportDiseaseNumMapper.doSelectReportTreatment", params);
	}
	@Override
	@SuppressWarnings("unchecked")
	public List<ReportTreatment> doSelectSum(Map<String, Object> params) throws Exception {
		return (List<ReportTreatment>) dao.findForList("ReportDiseaseNumMapper.doSelectSum", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listpageReportTreatment(Page page) throws Exception {
		return (List<PageData>) dao.findForList("ReportDiseaseNumMapper.listPageReportTreatment", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ReportScientificResearch> ReportScientificResearch(Map<String, Object> params) throws Exception {
		return (List<ReportScientificResearch>) dao.findForList("ReportDiseaseNumMapper.doselectA1", params);
	}
	@Override
	@SuppressWarnings("unchecked")
	public List<ReportScientificResearch> ReportScientificResearch2(Map<String, Object> params) throws Exception {
		return (List<ReportScientificResearch>) dao.findForList("ReportDiseaseNumMapper.doselectA2", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listpageReportScientificResearch(Page page)throws Exception {
		return (List<PageData>) dao.findForList("ReportDiseaseNumMapper.listPageReportScientificResearch", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listpageReportDiseaseNum(Page page) throws Exception {
		return (List<PageData>) dao.findForList("ReportDiseaseNumMapper.listPageReportDiseaseNum", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageClinicMaster(Page page) throws Exception {
		return (List<PageData>) dao.findForList("ClinicMasterMapper.listPageClinicMaster", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public ClinicMaster getClinicMasterInfo(Map<String, Object> params)throws Exception {
		return (ClinicMaster) dao.findForObject("ClinicMasterMapper.getClinicMasterInfo", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public PatMasterIndex getPatMasterIndexInfo(Map<String, Object> params)throws Exception {
		return (PatMasterIndex) dao.findForObject("PatMasterIndexMapper.getPatMasterIndexInfo", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public OutpMr getOutpMrInfo(Map<String, Object> params) throws Exception {
		return (OutpMr) dao.findForObject("PatMasterIndexMapper.getOutpMrInfo", params);
	}


	@Override
	@SuppressWarnings("unchecked")
	public List<OutpMrClinicMaster> getOracleDataTableTest() throws Exception {
		Map<String, Object> params = new HashMap<String, Object>();
		return (List<OutpMrClinicMaster>) dao.findForList("OutpMrMapper.getOracleData",params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageExamReportExPacsReport(Page page)throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageExamReportExPacsReport1",page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageLabTestMaster(Page page) throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageLabTestMaster1",page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageLabResult(Page page) throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageLabResult",page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public PatVisit getpatVisitInfo(Map<String, Object> params)throws Exception {
		return (PatVisit) dao.findForObject("PatMasterIndexMapper.getPatVisitInfo", params);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPagePatVisitExamReportExPacsReport(Page page)throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageExamReportExPacsReport2",page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPagePatVisitLabTestMaster(Page page)throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageLabTestMaster2",page);
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageOutpMrClinicMaster(Page page) throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageOutpMrClinicMaster", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageHzMzExamReportExPacsReport(Page page)throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageHzMzExamReportExPacsReport", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageHzZyExamReportExPacsReport(Page page)throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageHzZyExamReportExPacsReport", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageHzMzLabTestMaster(Page page) throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageHzMzLabTestMaster", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageHzZyLabTestMaster(Page page) throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageHzZyLabTestMaster", page);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PageData> listPageHzZyPatVisit(Page page) throws Exception {
		return (List<PageData>) dao.findForList("PatMasterIndexMapper.listPageHzZyPatVisit", page);
	}
}
