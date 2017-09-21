package com.ronglian.storage.validation.service.impl;

import java.io.StringReader;
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.dom4j.Document;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.dom4j.io.SAXValidator;
import org.dom4j.util.XMLErrorHandler;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.ronglian.core.util.UuidUtil;
import com.ronglian.log.vo.LogDocErrorDetail;
import com.ronglian.storage.error.ErrorType;
import com.ronglian.storage.validation.service.XsdValidationService;
import com.ronglian.storage.validation.vo.ValidationResult;

@Service
public class XsdValidationServiceImpl implements XsdValidationService {
	
	@Value("${doc_name_xpath}")
	private String docNamePath;
	
	@Value("${doc_code_xpath}")
	private String docCodePath;
	
	@Value("${doc_type_name_xpath}")
	private String docTypeNamePath;
	
	@Value("${doc_type_code_xpath}")
	private String docTypeCodePath;
	
	@Value("${doc_version_xpath}")
	private String docVersionPath;
	
	@Value("${doc_org_code_xpath}")
	private String docOrgCodePath;
	
	@Value("${doc_upload_type_xpath}")
	private String uploadTypePath;
	
	@Value("${doc_upload_system_xpath}")
	private String uploadSystemPath;
	
	/**
	 * 方法描述： 获取头部信息
	 * 创建人：linbin   
	 * 创建时间：2016年8月1日 下午4:24:57   
	 * @param xmlData
	 * @return   
	 * @version
	 */
	@Override
	public ValidationResult checkHeard(String xmlData) {
		ValidationResult result = new ValidationResult();
		Map<String, String> map = new HashMap<String, String>();
		Document dataDocument = null;
		try {
			SAXReader saxReader = new SAXReader(); 
			/** 加载传输过来需要校验的数据流 **/
			dataDocument = saxReader.read(new StringReader(xmlData));
			map = getHeaderInfo(dataDocument);
			result.setHeaderMap(map);
			/***判断头部是否为空***/
			String error = "[文档头部信息错误：";
			boolean bool = false;
			if(map.get("docTypeCode")==null||map.get("docTypeCode").equals("")){
				error += "文档类型编码不能为空;";
				bool = true;
			}
			if(map.get("docCode")==null||map.get("docCode").equals("")){
				error += "文档编码不能为空;";
				bool = true;
			}
			if(map.get("docVersion")==null||map.get("docVersion").equals("")){
				error += "文档版本不能为空;";
				bool = true;
			}
			if(map.get("docOrgCode")==null||map.get("docOrgCode").equals("")){
				error += "医疗机构编码不能为空;";
				bool = true;
			}
			if(map.get("uploadType")==null||map.get("uploadType").equals("")){
				error += "上传类型不能为空;";
				bool = true;
			}
			if(map.get("uploadSystem")==null||map.get("uploadSystem").equals("")){
				error += "业务系统编码不能为空;";
				bool = true;
			}
			if(bool){
				error+="] ";
				
				result.getErrorMsg().setDocXml(xmlData);
				getErrorInfo(result,map);

				LogDocErrorDetail errorMsgDetial = new LogDocErrorDetail();
				errorMsgDetial.setErrorId(result.getErrorMsg().getId());
				errorMsgDetial.setErrorException(error);
				errorMsgDetial.setErrorSubtype(ErrorType.STRUCTURE.getType());
				errorMsgDetial.setErrorDesc(error);
				result.getErrorMsgDetial().add(errorMsgDetial);
			}
		} catch (Exception e) {
			result.setSucess(false);
			
			result.getErrorMsg().setDocXml(xmlData);
			result.getErrorMsg().setId(UuidUtil.get32UUID());

			String errorMsg = " [文档结构错误] ";
			LogDocErrorDetail errorMsgDetial = new LogDocErrorDetail();
			errorMsgDetial.setErrorId(result.getErrorMsg().getId());
			errorMsgDetial.setErrorException(e.getMessage());
			errorMsgDetial.setErrorSubtype(ErrorType.STRUCTURE.getType());
			errorMsgDetial.setErrorDesc(errorMsg);
			result.getErrorMsgDetial().add(errorMsgDetial);
		} 
		return result;
	}

	@Override
	public ValidationResult xsdValidaion(String xmlData,Map<String,String> map) {
		/** 文档编号 **/
		String docCode = map.get("docCode");
		/** 文档名称 **/
		String docName = map.get("docName");
		/** 文档类型编号 **/
		String docTypeCode = map.get("docTypeCode");
		/** 文档类型名称 **/
		String docTypeName = map.get("docTypeName");
		/** 文档版本 */
		String docVersion = map.get("docVersion");
		/** 机构编码 **/
		String docOrgCode = map.get("docOrgCode");
		/** 上传类型 **/
		String uploadType = map.get("uploadType");
		/** 上传系统类型 **/
		String uploadSystem = map.get("uploadSystem");
		
		ValidationResult result = new ValidationResult();
		try { 
			String tFilePath = XsdValidationServiceImpl.class.getProtectionDomain()
					.getCodeSource().getLocation().getPath();
			tFilePath = tFilePath.substring(1,tFilePath.lastIndexOf("classes/")+8);
			String path = "com/own/storage/validation/xsd/";
			String xsdFileName =tFilePath+ path +docTypeCode+"_"+docCode+"_"+docVersion+".xsd";
			
			
            //创建默认的XML错误处理器 
            XMLErrorHandler errorHandler = new XMLErrorHandler(); 
            //获取基于 SAX 的解析器的实例 
            SAXParserFactory factory = SAXParserFactory.newInstance(); 
            //解析器在解析时验证 XML 内容。 
            factory.setValidating(true); 
            //指定由此代码生成的解析器将提供对 XML 名称空间的支持。 
            factory.setNamespaceAware(true); 
            //使用当前配置的工厂参数创建 SAXParser 的一个新实例。 
            SAXParser parser = factory.newSAXParser(); 
            //创建一个读取工具 
            SAXReader xmlReader = new SAXReader(); 
            //获取要校验xml文档实例 
            Document xmlDocument = (Document) xmlReader.read(new StringReader(xmlData)); 
            //设置 XMLReader 的基础实现中的特定属性。核心功能和属性列表可以在 [url]http://sax.sourceforge.net/?selected=get-set[/url] 中找到。 
            parser.setProperty( 
                    "http://java.sun.com/xml/jaxp/properties/schemaLanguage", 
                    "http://www.w3.org/2001/XMLSchema"); 
            parser.setProperty( 
                    "http://java.sun.com/xml/jaxp/properties/schemaSource", 
                    "file:" + xsdFileName); 
            //创建一个SAXValidator校验工具，并设置校验工具的属性 
            SAXValidator validator = new SAXValidator(parser.getXMLReader()); 
            //设置校验工具的错误处理器，当发生错误时，可以从处理器对象中得到错误信息。 
            validator.setErrorHandler(errorHandler); 
            //校验 
            validator.validate(xmlDocument); 

//            XMLWriter writer = new XMLWriter(OutputFormat.createPrettyPrint()); 
            //如果错误信息不为空，说明校验失败，打印错误信息 
            if (errorHandler.getErrors().hasContent()) { 
//                System.out.println("XML文件通过XSD文件校验失败！"); 
//                writer.write(errorHandler.getErrors()); 
                String errorMsg ="XML文件通过XSD文件校验失败！。\n原因："+ errorHandler.getErrors();            
    			
    			result.getErrorMsg().setDocXml(xmlData);
    			getErrorInfo(result,map);

    			LogDocErrorDetail errorMsgDetial = new LogDocErrorDetail();
    			errorMsgDetial.setErrorId(result.getErrorMsg().getId());
    			errorMsgDetial.setErrorException(errorHandler.getErrors().toString());
    			errorMsgDetial.setErrorSubtype(ErrorType.XSD.getType());
    			errorMsgDetial.setErrorDesc(errorMsg);
    			result.getErrorMsgDetial().add(errorMsgDetial);
            } else { 
                System.out.println("Good! XML文件通过XSD文件校验成功！"); 
            } 
        } catch (Exception ex) { 
        	String errorMsg ="XML文件检验失败。\n原因："+ ex.getMessage();            
            
			result.getErrorMsg().setDocXml(xmlData);
			getErrorInfo(result,map);

			LogDocErrorDetail errorMsgDetial = new LogDocErrorDetail();
			errorMsgDetial.setErrorId(result.getErrorMsg().getId());
			errorMsgDetial.setErrorException(ex.getMessage());
			errorMsgDetial.setErrorSubtype(ErrorType.XSD.getType());
			errorMsgDetial.setErrorDesc(errorMsg);
			result.getErrorMsgDetial().add(errorMsgDetial);
        } 
		return result;
	}
	
	private Map<String, String> getHeaderInfo(Document xmlDataDocument) {
		Map<String, String> headerMap = new HashMap<String, String>();
		/** 文档编号 **/
		String docCode = null;
		/** 文档名称 **/
		String docName = null;
		/** 文档类型编号 **/
		String docTypeCode = null;
		/** 文档类型名称 **/
		String docTypeName = null;
		/** 文档版本 */
		String docVersion = null;
		/** 机构编码 **/
		String docOrgCode = null;
		/** 上传类型 **/
		String uploadType = null;
		/** 上传系统类型 **/
		String uploadSystem = null;
		/** 获取文档头信息 **/
		Node docCodeNode = xmlDataDocument.selectSingleNode(docCodePath);
		if(docCodeNode!=null){
			docCode = docCodeNode.getStringValue().trim();
        }
		Node docNameNode = xmlDataDocument.selectSingleNode(docNamePath);
		if(docNameNode!=null){
			docName = docNameNode.getStringValue().trim();
        }
		Node docTypeCodeNode = xmlDataDocument.selectSingleNode(docTypeCodePath);
		if(docTypeCodeNode!=null){
			docTypeCode = docTypeCodeNode.getStringValue().trim();
        }
		Node docTypeNameNode = xmlDataDocument.selectSingleNode(docTypeNamePath);
		if(docTypeNameNode!=null){
			docTypeName = docTypeNameNode.getStringValue().trim();
        }
		Node docVersionNode = xmlDataDocument.selectSingleNode(docVersionPath);
		if(docVersionNode!=null){
			docVersion = docVersionNode.getStringValue().trim();
        }
		
		Node docOrgCodeNode = xmlDataDocument.selectSingleNode(docOrgCodePath);
		if(docOrgCodeNode!=null){
			docOrgCode = docOrgCodeNode.getStringValue().trim();
        }
		Node uploadTypeNode = xmlDataDocument.selectSingleNode(uploadTypePath);
		if(uploadTypeNode!=null){
			uploadType = uploadTypeNode.getStringValue().trim();
        }
		Node uploadSystemNode = xmlDataDocument.selectSingleNode(uploadSystemPath);
		if(uploadSystemNode!=null){
			uploadSystem = uploadSystemNode.getStringValue().trim();
        }
		headerMap.put("docCode", docCode);
		headerMap.put("docName", docName);
		headerMap.put("docTypeCode", docTypeCode);
		headerMap.put("docTypeName", docTypeName);
		headerMap.put("docVersion", docVersion);
		
		headerMap.put("docOrgCode", docOrgCode);
		headerMap.put("uploadType", uploadType);
		headerMap.put("uploadSystem", uploadSystem);

		return headerMap;

	}
	
	private void getErrorInfo(ValidationResult result,Map<String,String> map){
		result.setSucess(false);
		result.getErrorMsg().setId(UuidUtil.get32UUID());
		result.getErrorMsg().setDocCode(map.get("docCode"));
		result.getErrorMsg().setDocName(map.get("docName"));
		result.getErrorMsg().setDocTypeCode(map.get("docTypeCode"));
		result.getErrorMsg().setDocTypeName(map.get("docTypeName"));
		result.getErrorMsg().setDocVersion(map.get("docVersion"));
		result.getErrorMsg().setDocOrgCode(map.get("docOrgCode"));
		result.getErrorMsg().setDocUploadType(map.get("uploadType"));
		result.getErrorMsg().setDocUploadSystem(map.get("uploadSystem"));
	}

}
