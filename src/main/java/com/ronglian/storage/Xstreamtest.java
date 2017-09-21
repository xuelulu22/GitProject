package com.ronglian.storage;

import com.ronglian.core.util.XmlUtils;
import com.ronglian.storage.vo.ClinicalDocument;
import com.ronglian.storage.vo.Header;

public class Xstreamtest {
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	public void objtoxml(){
		ClinicalDocument doc = new ClinicalDocument();
		Header header = new Header();
		header.setDocCode("001");
		header.setDocName("患者信息");
		header.setDocTypeCode("1");
		header.setDocVersion("1.0");
//		StructuredBody body = new StructuredBody();
//		body.setPatientName("张三");
		doc.setHeader(header);
//		doc.setStructuredBody(body);
		System.out.println(XmlUtils.toXml(doc));
	}
	
	public void xmltoobj(){
		String stc ="<?xml version=\"1.0\" encoding=\"UTF-8\"?><ClinicalDocument><header><DocName>患者信息</DocName>"
				+ "<DocTypeCode>1</DocTypeCode><DocCode>001</DocCode><DocVersion>1.0</DocVersion></header><structuredBody>"
				+ "<PatientName>张三</PatientName></structuredBody></ClinicalDocument>";
		ClinicalDocument doc = new ClinicalDocument();
		try {
			doc = XmlUtils.xmlString2Bean(stc, doc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("111");
	}

}
