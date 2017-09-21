package com.ronglian.core.util;

import org.apache.log4j.Logger;

import com.ronglian.storage.vo.ClinicalDocument;
import com.ronglian.storage.vo.Header;
import com.ronglian.storage.vo.Patient;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 * 处理XMl 工具类采用XStream
 * 
 * @author ouyangxin 2013-3-26
 */
public class XmlUtils {

	// 日志对象
	private static final Logger log = Logger.getLogger(XmlUtils.class);

	private static XStream xstream;

	private static XStream json = new XStream(
			new JsonHierarchicalStreamDriver());

	static StringBuffer sb;

	/**
	 * 将对象转化为xml格式的字符串
	 * 
	 * @param obj
	 * @return
	 */
	public static String toXml(Object obj) {

		// 注解
		xstream = new XStream(new DomDriver("utf-8"));
		xstream.processAnnotations(obj.getClass());

		// 转化为xml格式的String
		String xmlStr;
		try {

			xmlStr = xstream.toXML(obj);

			xmlStr = addBody(xmlStr); // 加XML声明
		} catch (Exception e) {
			xmlStr = "";
			log.error("转换对象XML格式字符串失败! 调用接口：" + obj.getClass().getName() + "失败"
					+ e.getMessage());
		}
		return xmlStr;
	}
	

	/**
	 * 字符串加 XML声明
	 * 
	 * @param str
	 * @return
	 */
	private static String addBody(String str) {
		sb = new StringBuffer(2000);
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
		sb.append(str);
		sb.trimToSize();
		return sb.toString().trim();
	}

	/**
	 * 字符串转化为对应的对象
	 * 
	 * @param xmlStr
	 * @param body
	 * @return
	 * @throws Exception
	 */
	public static ClinicalDocument xmlString2Bean(String xmlStr, ClinicalDocument doc)
			throws Exception {

		if ("".equals(xmlStr)) {
			return null;
		}

		xstream = new XStream(new DomDriver("utf-8"));
		// 注解方式
		xstream.processAnnotations(doc.getClass());

		// 转化为对象
		doc = (ClinicalDocument) xstream.fromXML(xmlStr);

		return doc;
	}


	public static void main(String[] args) {
		
	}
}
