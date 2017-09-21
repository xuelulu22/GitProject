package com.ronglian.ch.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrQuery.ORDER;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
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
import com.ronglian.core.controller.BaseController;
import com.ronglian.core.util.MultipleDataSource;
import com.ronglian.core.util.Page;
import com.ronglian.core.util.PageData;
import com.ronglian.core.util.ResponseUtils;

@Controller
@RequestMapping(value = "/patMasterIndex")
public class PatMasterIndexController extends BaseController{
	@Resource
	private PatMasterIndexService patMasterIndexService;
	
	/**
	 * 进入tab标签
	 * @return
	 */
	@RequestMapping(value="/tab")
	public String tab() {
		return "ch/patmaster_main/tab";
	}
	
	//TODO
	
	private static final ObjectMapper objectMaper=new ObjectMapper(); 
	@Autowired
	private HttpSolrClient httpsolrClient;
	public static final Integer ROWS = 6;
	public static final Integer page = 1;
	/** 
	 * 搜索测试
	 */
	@RequestMapping(value = "/searchListPage")
	public ModelAndView searchListPage(@RequestParam("q") String keyWords,
			@RequestParam(value = "page", defaultValue = "1") Integer page) throws SolrServerException, IOException {
		ModelAndView mv = new ModelAndView("hello");
		try {
			//解决乱码
			keyWords = new String(keyWords.getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
		}
		
		SolrQuery solrQuery = new SolrQuery(keyWords);
		
		solrQuery.setStart((Math.max(page, 1) - 1) * ROWS);
		solrQuery.setRows(ROWS);// 分页
		solrQuery.addField("text");
		
	//	solrQuery.addSort("text", ORDER.asc);
		QueryResponse response = httpsolrClient.query(solrQuery);
		SolrDocumentList list = response.getResults();

		List a=new ArrayList();
		for (SolrDocument solrDocument : list) {
			//System.out.println(solrDocument.getFieldValue("text"));
			a.add(solrDocument.getFieldValue("text"));
		}
		mv.addObject("AV", a);
		//System.out.println(a.size());
		return mv;

	}
	//TODO
	
	
	
	
	/**
	 * 患者基本信息     
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPagePatMasterIndex")
	public ModelAndView listPagePatMasterIndex(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> patMasterIndexList = patMasterIndexService.listPagePatMasterIndex(page);
		mv.addObject("patMasterIndexList", patMasterIndexList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/patmasterindex_list");
		return mv;
	}
	
	/**
	 * 患者门诊                                                                                   -----------------------------------有效
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageClinicMaster")
	public ModelAndView listPageClinicMaster(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> ClinicMasterList = patMasterIndexService.listPageClinicMaster(page);
		mv.addObject("ClinicMasterList", ClinicMasterList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/clinicmaster_list");
		return mv;
	}
	
	/**
	 * 门诊基本信息详情
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/ViewClinicMaster")
	public ModelAndView ViewClinicMaster(@RequestParam String patient_id) throws Exception {
		ModelAndView mv = this.getModelAndView();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("patient_id", patient_id);
		ClinicMaster clinicMaster = patMasterIndexService.getClinicMasterInfo(params);
		mv.addObject("clinicMaster", clinicMaster);
		mv.setViewName("ch/clinicmaster/clinicmaster_view");
		return mv;
	}
	
	/**
	 * 患者-门诊-住院-病例信息
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "patMasterIndexView")
	public ModelAndView patMasterIndexView(
			@RequestParam String patient_id,
			@RequestParam String id,
			@RequestParam String menu,
			Page page,
			HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView();
			Map<String, Object> params=new HashMap<String, Object>();
			params.put("patient_id", patient_id);
			PatMasterIndex patMasterIndex = patMasterIndexService.getPatMasterIndexInfo(params);
			
			if(menu.equals("1")){
				//门诊病例
				params=new HashMap<String, Object>();
				params.put("outpatient_no", id);
				OutpMr outpMr = patMasterIndexService.getOutpMrInfo(params);
				mv.addObject("outpMr", outpMr);
				mv.setViewName("ch/clinicmaster/patMasterIndex_view");
			}else if(menu.equals("2")){
				//住院病例
				params=new HashMap<String, Object>();
				params.put("inpatient_no", id);
				PatVisit patVisit = patMasterIndexService.getpatVisitInfo(params);
				mv.addObject("patVisit", patVisit);
				mv.setViewName("ch/clinicmaster/HzZy_patvisit_patMasterIndex_view");
			}else if(menu.equals("3")){
				//患者-门诊病例
				PageData pd = new PageData();
				pd = this.getPageData();
				page.setPd(pd);
				List<PageData> outpMrClinicMasterList = patMasterIndexService.listPageOutpMrClinicMaster(page);
				mv.addObject("outpMrClinicMasterList", outpMrClinicMasterList);
				mv.setViewName("ch/clinicmaster/outpMrClinicMaster_list");
			}else if(menu.equals("4")){
				//患者-住院病例
				PageData pd = new PageData();
				pd = this.getPageData();
				page.setPd(pd);
				List<PageData> patVisitList = patMasterIndexService.listPageHzZyPatVisit(page);
				mv.addObject("patVisitList", patVisitList);
				mv.setViewName("ch/clinicmaster/HzZyPatVisit_list");
			}
			
			mv.addObject("patMasterIndex", patMasterIndex);
			return mv;
    }  
	
	
	
	/**
	 * 病例 基本信息详情                  -----------------------------------有效
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "getOutpMrData")
	public ModelAndView getOutpMrData(
			@RequestParam String outpatient_no,
			HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView();
			Map<String, Object> params=new HashMap<String, Object>();
			params.put("outpatient_no", outpatient_no);
			OutpMr outpMr = patMasterIndexService.getOutpMrInfo(params);
			mv.addObject("outpMr", outpMr);
			mv.setViewName("ch/clinicmaster/outpmr_view");
			return mv;
    }  
	
	
	
	/**
	 * 门诊检查检验联合查询 
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageExamReportExPacsReport")
	public ModelAndView listPageExamReportExPacsReport(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> examReportExPacsReportList = patMasterIndexService.listPageExamReportExPacsReport(page);
		mv.addObject("examReportExPacsReportList", examReportExPacsReportList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/examreportex_pacsreport_list");
		return mv;
	}
	
	/**
	 * 患者- 患者门诊检查
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageHzMzExamReportExPacsReport")
	public ModelAndView listPageHzExamReportExPacsReport(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> examReportExPacsReportList = patMasterIndexService.listPageHzMzExamReportExPacsReport(page);
		mv.addObject("examReportExPacsReportList", examReportExPacsReportList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/hz_examreportex_pacsreport_list");
		return mv;
	}
	
	/**
	 * 患者- 患者住院检查
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageHzZyExamReportExPacsReport")
	public ModelAndView listPageHzZyExamReportExPacsReport(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> examReportExPacsReportList = patMasterIndexService.listPageHzZyExamReportExPacsReport(page);
		mv.addObject("examReportExPacsReportList", examReportExPacsReportList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/hzZy_examreportex_pacsreport_list");
		return mv;
	}
	
	
	/**
	 * 住院检查检验联合查询 
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPagePatVisitExamReportExPacsReport")
	public ModelAndView listPagePatVisitExamReportExPacsReport(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> examReportExPacsReportList = patMasterIndexService.listPagePatVisitExamReportExPacsReport(page);
		mv.addObject("examReportExPacsReportList", examReportExPacsReportList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/patvisit_examreportex_pacsreport_list");
		return mv;
	}
	
	/**
	 * 门诊病例检验主记录
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageLabTestMaster")
	public ModelAndView listPageLabTestMaster(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> labTestMasterList = patMasterIndexService.listPageLabTestMaster(page);
		mv.addObject("labTestMasterList", labTestMasterList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/labtest_master_list");
		return mv;
	}
	
	/**
	 * 住院病例-检验主记录
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPagePatVisitLabTestMaster")
	public ModelAndView listPagePatVisitLabTestMaster(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> labTestMasterList = patMasterIndexService.listPagePatVisitLabTestMaster(page);
		mv.addObject("labTestMasterList", labTestMasterList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/patvisit_labtest_master_list");
		return mv;
	}
	
	/**
	 * 患者-门诊检验
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageHzMzLabTestMaster")
	public ModelAndView listPageHzMzLabTestMaster(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> labTestMasterList = patMasterIndexService.listPageHzMzLabTestMaster(page);
		mv.addObject("labTestMasterList", labTestMasterList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/HzMz_labtest_master_list");
		return mv;
	}
	
	
	/**
	 * 患者-住院检验
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/listPageHzZyLabTestMaster")
	public ModelAndView listPageHzZyLabTestMaster(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> labTestMasterList = patMasterIndexService.listPageHzZyLabTestMaster(page);
		mv.addObject("labTestMasterList", labTestMasterList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/HzZy_labtest_master_list");
		return mv;
	}
	
	
	/**
	 * 查询门诊病例检验结果信息
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/doSelectLabResult")
	public ModelAndView doSelectLabResult(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		page.setPd(pd);
		List<PageData> labResultList = patMasterIndexService.listPageLabResult(page);
		mv.addObject("labResultList", labResultList);
		mv.addObject("pd", pd);
		mv.setViewName("ch/clinicmaster/lab_result_list");
		return mv;
	}
	
	
	/**
	 * 住院基本信息
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "patVisitView")
	public ModelAndView patVisitView(
			@RequestParam String patient_id,
			@RequestParam String inpatient_no,
			HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView();
			Map<String, Object> params=new HashMap<String, Object>();
			params.put("patient_id", patient_id);
			PatMasterIndex patMasterIndex = patMasterIndexService.getPatMasterIndexInfo(params);
			mv.addObject("patMasterIndex", patMasterIndex);
			
			params=new HashMap<String, Object>();
			params.put("inpatient_no", inpatient_no);
			PatVisit patVisit = patMasterIndexService.getpatVisitInfo(params);
			mv.addObject("patVisit", patVisit);
			
			mv.setViewName("ch/clinicmaster/patvisit_view");
			return mv;
    }
	
	//报表1
	@RequestMapping(value="/reportDiseaseNumPage")
	public String reportDiseaseNumPage() throws Exception {
		return "ch/patmasterindex/diseaseNumReport";
	}
	
	@RequestMapping(value="/reportDiseaseNum")
	public String reportDiseaseNum(
			@RequestParam String year,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("gy", "gy");
	    List<ReportDiseaseNum> reportDiseaseNumList = patMasterIndexService.reportDiseaseNum(params);
	    
		JSONObject jsonObject = new JSONObject();
		List<String> list = new ArrayList<String>();
		if(reportDiseaseNumList !=null && reportDiseaseNumList.size()>0 ){
			for(ReportDiseaseNum info : reportDiseaseNumList){
				list.add(info.getDisease_name());
			}
		}
		jsonObject.element("title", list);
		Map<String, Object> MonthData = new HashMap<String, Object>();
		Integer str[];
		Map<String, Object> t = new HashMap<String, Object>();
		for(String info : list){
			str=new Integer[12];
			params = new HashMap<String, Object>();
			params.put("disease_name", info);
			params.put("year", year);
			reportDiseaseNumList = patMasterIndexService.reportDiseaseNum(params);
			if(reportDiseaseNumList!=null && reportDiseaseNumList.size()>0){
				for(ReportDiseaseNum info2:reportDiseaseNumList){
					t.put(info2.getMonth(), info2.getCase_num());
				}
				if(t !=null){
					for(int i=1;i<=12;i++){
						if(i<10){
							System.out.println(t.get("0"+i+""));
							if(t.get("0"+i+"")==null || t.get("0"+i+"").equals("")){
								str[i-1]=0;
							}
							else{
								str[i-1]=(Integer) t.get("0"+i+"");
							}
						}else{
							if(t.get(i)==null || t.get(i).equals("")){
								str[i-1]=0;
							}
							else{
								str[i-1]=(Integer) t.get(i);
							}
						}
					}
				}
			}
			MonthData.put(info,str);
		}
		jsonObject.element("data_a", MonthData);
		
		list = new ArrayList<String>();
		for(int i=1;i<=12;i++){
			if(i<10){
				list.add("0"+i+"");
			}else{
				list.add(i+"");
			}
		}
		 jsonObject.element("month", list);
		 
		 System.out.println(jsonObject);
		 ResponseUtils.renderJson(response, jsonObject.toString());
		return null;
	}
	
	//报表2
	@RequestMapping(value="/reportMedicalRecord")
	public String reportMedicalRecord() throws Exception {
		return "ch/patmasterindex/reportMedicalRecord";
	}
	
	//报表2
		@RequestMapping(value="/reportMedicalRecord2")
		public String reportMedicalRecord2(@RequestParam String year,
				HttpServletRequest request, HttpServletResponse response) throws Exception {
			List<ReportMedicalRecord> list =new ArrayList<ReportMedicalRecord>();
			Map<String, Object> params = new HashMap<String, Object>();
			JSONObject jsonObject = new JSONObject();
			int totals=0;
			params.put("gy", "gy");
		    List<ReportMedicalRecord> ReportMedicalRecordList = patMasterIndexService.ReportMedicalRecord(params);
			if(ReportMedicalRecordList!=null && ReportMedicalRecordList.size()>0){
				for(ReportMedicalRecord info :ReportMedicalRecordList){
					params = new HashMap<String, Object>(); 
					params.put("doctor_name", info.getDoctor_name());
					params.put("year", year);
					ReportMedicalRecordList = patMasterIndexService.ReportMedicalRecord(params);
					if(ReportMedicalRecordList !=null && ReportMedicalRecordList.size()>0){
						for(ReportMedicalRecord info2 : ReportMedicalRecordList){
							totals += info.getMedical_num();
						}
						ReportMedicalRecord t =new ReportMedicalRecord();
						t.setDoctor_name(info.getDoctor_name());
						t.setMedical_num(totals);
						list.add(t);
						totals=0;
					}
				}
				jsonObject.element("total", list);
			}
			System.out.println(jsonObject.toString());
			 ResponseUtils.renderJson(response, jsonObject.toString());
			return null;
		}
		
		
		
		@RequestMapping(value="/listpage")
		public ModelAndView listpage(Page page) throws Exception {
			ModelAndView mv = this.getModelAndView();
			PageData pd = new PageData();
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData> t_list = patMasterIndexService.listPageRportMedicalRecord(page);
			mv.addObject("t_list", t_list);
			mv.addObject("pd", pd);
			mv.setViewName("ch/patmasterindex/reportMedicalRecord_list");
			return mv;
		}
		
		
		//报表3
		@RequestMapping(value="/ReportOperationNum")
		public String ReportOperationNum() throws Exception {
			return "ch/patmasterindex/ReportOperationNum";
		}
		
		@RequestMapping(value="/ReportOperationNum2")
		public String ReportOperationNum2(@RequestParam String year,
				HttpServletRequest request, HttpServletResponse response) throws Exception {
			Map<String, Object> params = new HashMap<String, Object>();
			JSONObject jsonObject = new JSONObject();
			params.put("year", year);
		    List<ReportOperationNum> ReportOperationNumList = patMasterIndexService.ReportOperationNum(params);
		    jsonObject.element("info", ReportOperationNumList);
		    System.out.println(jsonObject.toString());
			 ResponseUtils.renderJson(response, jsonObject.toString());
			return null;
		}
		
		
		@RequestMapping(value="/listpage2")
		public ModelAndView listpage2(Page page) throws Exception {
			ModelAndView mv = this.getModelAndView();
			PageData pd = new PageData();
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData> t_list = patMasterIndexService.listPageReportOperationNum(page);
			mv.addObject("t_list", t_list);
			mv.addObject("pd", pd);
			mv.setViewName("ch/patmasterindex/ReportOperationNum_list");
			return mv;
		}
		
		@RequestMapping(value="/ReportDiseaseNumT")
		public ModelAndView ReportDiseaseNumT(Page page) throws Exception {
			ModelAndView mv = this.getModelAndView();
			PageData pd = new PageData();
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData> t_list = patMasterIndexService.listPageReportDiseaseNumT(page);
			mv.addObject("t_list", t_list);
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("gy", "gy");
			List<ReportDiseaseNumT>t_listt = patMasterIndexService.listPageReportDiseaseNumT(params);
			mv.addObject("t_listt", t_listt);
			mv.addObject("pd", pd);
			mv.setViewName("ch/patmasterindex/ReportDiseaseNumT_list");
			return mv;
		}
		
		@RequestMapping(value="/searchDiseaseName")
		public String searchDiseaseName(@RequestParam String disease_name,
				HttpServletRequest request, HttpServletResponse response) throws Exception {
			Map<String, Object> params = new HashMap<String, Object>();
			JSONObject jsonObject = new JSONObject();
			disease_name=URLDecoder.decode(request.getParameter("disease_name"), "utf-8");
			disease_name=new String (disease_name.getBytes("iso8859-1"),"utf-8");
			params.put("disease_name", disease_name);
		    List<ReportDiseaseNumT> ReportOperationNumList = patMasterIndexService.listPageReportDiseaseNumT(params);
		    Double totals=0.0;
		    Double totals2 =0.0;
		    if(ReportOperationNumList!=null && ReportOperationNumList.size()>0){
		    	for(ReportDiseaseNumT info : ReportOperationNumList){
		    		totals+= info.getCase_num();
		    		totals2+= info.getCure_num();
		    	}
		    	Double d =( totals2/totals)*100;
		    	String s=d+"";
		    	String intNumber = s.substring(0,s.indexOf("."));
		    	int num = Integer.valueOf(intNumber);
		    	jsonObject.element("num",num);
		    }
		    System.out.println(jsonObject.toString());
			 ResponseUtils.renderJson(response, jsonObject.toString());
			return null;
		}
		
		
		@RequestMapping(value="/ReportTreatment")
		public String ReportTreatment() throws Exception {
			return "ch/patmasterindex/ReportTreatment";
		}
		
		@RequestMapping(value="/ReportTreatment2")
		public String ReportTreatment2(@RequestParam String year,
				HttpServletRequest request, HttpServletResponse response) throws Exception {
			Map<String, Object> params = new HashMap<String, Object>();
			JSONObject jsonObject = new JSONObject();
			params.put("year", year);
			params.put("gy", "gy");
		    List<ReportTreatment> ReportTreatmentList = patMasterIndexService.ReportTreatment(params);
		    jsonObject.element("info", ReportTreatmentList);
		    params = new HashMap<String, Object>();
			params.put("year", year);
			 List<ReportTreatment> ReportTreatmentList2 = patMasterIndexService.doSelectSum(params);
		    jsonObject.element("info2", ReportTreatmentList2);
			 ResponseUtils.renderJson(response, jsonObject.toString());
			return null;
		}
		
		@RequestMapping(value="/listpage6")
		public ModelAndView listpage6(Page page) throws Exception {
			ModelAndView mv = this.getModelAndView();
			PageData pd = new PageData();
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData> t_list = patMasterIndexService.listpageReportTreatment(page);
			mv.addObject("t_list", t_list);
			mv.addObject("pd", pd);
			mv.setViewName("ch/patmasterindex/ReportTreatment_list");
			return mv;
		}
		
		@RequestMapping(value="/ReportScientificResearch")
		public String ReportScientificResearch() throws Exception {
			return "ch/patmasterindex/ReportScientificResearch";
		}
		
		
		@RequestMapping(value="/ReportScientificResearch2")
		public String ReportScientificResearch2(@RequestParam String year,
				HttpServletRequest request, HttpServletResponse response) throws Exception {
			Map<String, Object> params = new HashMap<String, Object>();
			JSONObject jsonObject = new JSONObject();
			params.put("year", year);
		    List<ReportScientificResearch> ReportScientificResearchList = patMasterIndexService.ReportScientificResearch(params);
		    jsonObject.element("info", ReportScientificResearchList);
		    
		    params = new HashMap<String, Object>();
		    params.put("year", year);
		    List<ReportScientificResearch> ReportScientificResearchList2 = patMasterIndexService.ReportScientificResearch2(params);
		    jsonObject.element("info2", ReportScientificResearchList2);
		    System.out.println(jsonObject.toString());
			 ResponseUtils.renderJson(response, jsonObject.toString());
			return null;
		}
		
		@RequestMapping(value="/listpage7")
		public ModelAndView listpage7(Page page) throws Exception {
			ModelAndView mv = this.getModelAndView();
			PageData pd = new PageData();
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData> t_list = patMasterIndexService.listpageReportScientificResearch(page);
			mv.addObject("t_list", t_list);
			mv.addObject("pd", pd);
			mv.setViewName("ch/patmasterindex/ReportScientificResearch_list");
			return mv;
		}
		
		@RequestMapping(value="/listpage8")
		public ModelAndView listpage8(Page page) throws Exception {
			ModelAndView mv = this.getModelAndView();
			PageData pd = new PageData();
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData> t_list = patMasterIndexService.listpageReportDiseaseNum(page);
			mv.addObject("t_list", t_list);
			mv.addObject("pd", pd);
			mv.setViewName("ch/patmasterindex/reportDiseaseNum_list");
			return mv;
		}
		
		
		@RequestMapping(value="/testMoreDataSource")
		public String testMoreDataSource(Page page) throws Exception {
			try {
				 System.out.println("开始查询oracle数据库");
			     MultipleDataSource.setDataSourceKey("dataSource2");
			     List<OutpMrClinicMaster> list= patMasterIndexService.getOracleDataTableTest();
			     System.out.println("查询结果遍历");
			     for(OutpMrClinicMaster info : list ){
			    	 System.out.println(info.getName());
			     }
			     
			     System.out.println("开始查询mysql数据库");
			     MultipleDataSource.setDataSourceKey("dataSource");
			     Map<String, Object> params = new HashMap<String, Object>();
				 params.put("patient_id", "1");
				 ClinicMaster clinicMaster = patMasterIndexService.getClinicMasterInfo(params);
				 System.out.println("查询结果遍历");
				 System.out.println(clinicMaster.getName());
				 
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		
		
}
