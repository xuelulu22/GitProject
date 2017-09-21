package com.ronglian.ch.service;

import java.util.List;
import java.util.Map;

import com.ronglian.ch.model.ClinicMaster;
import com.ronglian.ch.model.OutpMr;
import com.ronglian.ch.model.OutpMrClinicMaster;
import com.ronglian.ch.model.PatMasterIndex;
import com.ronglian.ch.model.PatVisit;
import com.ronglian.ch.model.ReportDiseaseNum;
import com.ronglian.ch.model.ReportDiseaseNumT;
import com.ronglian.ch.model.ReportMedicalRecord;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;

public interface PatMasterIndexService {

	List<PageData> listPagePatMasterIndex(Page page)throws Exception;

	List<ReportDiseaseNum> reportDiseaseNum(Map<String, Object> params)throws Exception;

	List<ReportMedicalRecord> ReportMedicalRecord(Map<String, Object> params)throws Exception;

	List<PageData> listPageRportMedicalRecord(Page page)throws Exception;

	List<com.ronglian.ch.model.ReportOperationNum> ReportOperationNum(Map<String, Object> params)throws Exception;

	List<PageData> listPageReportOperationNum(Page page)throws Exception;

	List<PageData> listPageReportDiseaseNumT(Page page)throws Exception ;

	List<ReportDiseaseNumT> listPageReportDiseaseNumT(Map<String, Object> params)throws Exception ;

	List<com.ronglian.ch.model.ReportTreatment> ReportTreatment(Map<String, Object> params)throws Exception;

	List<com.ronglian.ch.model.ReportTreatment> doSelectSum(Map<String, Object> params)throws Exception;

	List<PageData> listpageReportTreatment(Page page)throws Exception;

	List<com.ronglian.ch.model.ReportScientificResearch> ReportScientificResearch(Map<String, Object> params)throws Exception;
	
	List<com.ronglian.ch.model.ReportScientificResearch> ReportScientificResearch2(Map<String, Object> params)throws Exception;

	List<PageData> listpageReportScientificResearch(Page page)throws Exception;

	List<PageData> listpageReportDiseaseNum(Page page)throws Exception;

	List<PageData> listPageClinicMaster(Page page)throws Exception;

	ClinicMaster getClinicMasterInfo(Map<String, Object> params)throws Exception;

	PatMasterIndex getPatMasterIndexInfo(Map<String, Object> params)throws Exception;

	OutpMr getOutpMrInfo(Map<String, Object> params)throws Exception;

	List<PageData> listPageOutpMrClinicMaster(Page page)throws Exception;
	
	//查询oracle 数据源表数据
	List<OutpMrClinicMaster> getOracleDataTableTest()throws Exception;
	/**
	 * 门诊病例检查检验联合查询
	 */
	List<PageData> listPageExamReportExPacsReport(Page page)throws Exception;
	/**
	 * 门诊病例主记录查询
	 */
	List<PageData> listPageLabTestMaster(Page page)throws Exception;
	/**
	 * 查询门诊病例检验记录
	 */
	List<PageData> listPageLabResult(Page page)throws Exception;
	/**
	 * 查询住院信息INFO
	 */
	PatVisit getpatVisitInfo(Map<String, Object> params)throws Exception;
	/**
	 * 住院病例检查检验联合查询
	 */
	List<PageData> listPagePatVisitExamReportExPacsReport(Page page)throws Exception;
	/**
	 * 住院病例检验查询
	 */
	List<PageData> listPagePatVisitLabTestMaster(Page page)throws Exception;
	/**
	 * 患者门诊检查
	 */
	List<PageData> listPageHzMzExamReportExPacsReport(Page page)throws Exception;
	/**
	 * 患者住院检查
	 */
	List<PageData> listPageHzZyExamReportExPacsReport(Page page)throws Exception;
	/**
	 * 患者门诊检验
	 */
	List<PageData> listPageHzMzLabTestMaster(Page page)throws Exception;
	/**
	 * 患者住院检验
	 */
	List<PageData> listPageHzZyLabTestMaster(Page page)throws Exception;
	/**
	 * 患者-住院病例
	 */
	List<PageData> listPageHzZyPatVisit(Page page)throws Exception;

}
