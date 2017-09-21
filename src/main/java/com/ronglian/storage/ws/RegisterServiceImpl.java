package com.ronglian.storage.ws;

import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.jws.WebService;
import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;

import org.apache.cxf.transport.http.AbstractHTTPDestination;
import org.springframework.stereotype.Service;

import com.ronglian.core.util.UuidUtil;
import com.ronglian.log.service.DocRegisterService;
import com.ronglian.log.service.LogDocErrorService;
import com.ronglian.log.vo.DocRegister;
import com.ronglian.log.vo.LogDocErrorDetail;
import com.ronglian.storage.validation.service.CheckService;
import com.ronglian.storage.validation.vo.ValidationResult;

@WebService(endpointInterface = "com.ronglian.storage.ws.RegisterService")
@Service("RegisterServiceImpl")
public class RegisterServiceImpl implements RegisterService {

	@Resource
	private WebServiceContext context;
	@Resource
	private CheckService checkService;
	@Resource
	private DocRegisterService docRegisterService;
	@Resource
	private LogDocErrorService logDocErrorService;
	
	
	
	@Override
	public String requestRegister(String docXml) {
		 MessageContext ctx = context.getMessageContext();
		 HttpServletRequest request = (HttpServletRequest) ctx.get(AbstractHTTPDestination.HTTP_REQUEST);
		 String ip = request.getRemoteAddr();
		 System.out.println(docXml);
		 System.out.println(ip);
		 //校验
		 ValidationResult result = checkService.init(docXml);
		 //头部信息
		 Map<String,String> map = result.getHeaderMap();
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
		 //解析数据,校验错误和存储错误两种
		 if(result.isSucess()){
			 
		 }
		 //校验和解析通过后，保存数据源
		 if(result.isSucess()){
			 DocRegister docRegister = new DocRegister();
			 docRegister.setId(UuidUtil.get32UUID());
			 docRegister.setDocName(docName);
			 docRegister.setDocCode(docCode);
			 docRegister.setDocTypeCode(docTypeCode);
			 docRegister.setDocTypeName(docTypeName);
			 docRegister.setDocVersion(docVersion);
			 docRegister.setDocOrgCode(docOrgCode);
			 docRegister.setDocUploadType(uploadType);
			 docRegister.setDocUploadSystem(uploadSystem);
			 docRegister.setDocXml(docXml);
			 docRegister.setIp(ip);
			 docRegister.setDocUploadDatetime(new Date());
			 docRegisterService.saveDocXml(docRegister);
		 }
		 String msg = "";
		 //需要保存错误信息
		 if(result.isSucess()){
			 msg = "success";
		 }else{
			 for(LogDocErrorDetail obj : result.getErrorMsgDetial()){
				 msg+=obj.getErrorDesc()+"; ";
			 }
			 logDocErrorService.saveLogError(result.getErrorMsg());
			 logDocErrorService.saveLogErrorDetails(result.getErrorMsgDetial());
		 }
		return msg;
	}

}
