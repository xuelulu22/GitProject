package com.ronglian.storage.vo;

import com.thoughtworks.xstream.annotations.XStreamAlias;


public class Header {
	
	@XStreamAlias("DocTypeCode")
	private String docTypeCode;
	
	@XStreamAlias("DocTypeName")
	private String docTypeName;
	
	@XStreamAlias("DocName")
	private String docName;
	
	@XStreamAlias("DocCode")
	private String docCode;
	
	@XStreamAlias("DocVersion")
	private String docVersion;
	
	@XStreamAlias("DocOrgCode")
	private String docOrgCode;
	
	@XStreamAlias("UploadType")
	private String uploadType;
	
	@XStreamAlias("UploadSystem")
	private String uploadSystem;

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getDocTypeCode() {
		return docTypeCode;
	}

	public void setDocTypeCode(String docTypeCode) {
		this.docTypeCode = docTypeCode;
	}

	public String getDocCode() {
		return docCode;
	}

	public void setDocCode(String docCode) {
		this.docCode = docCode;
	}

	public String getDocVersion() {
		return docVersion;
	}

	public void setDocVersion(String docVersion) {
		this.docVersion = docVersion;
	}
	
	
}
