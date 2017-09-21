<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<!-- jsp文件头和头部 -->
		<%@ include file="/ini.jsp"%> 
</head>
<body>
	<form  action="sysUser/doAddUser.do" name="menuForm" id="menuForm" method="post" >
		<div id="zhongxin" style="padding-left: 10%;padding-top: 2%;width: 80%">
		患者基本信息：
		<table border ="1" style="border-color: lightblue;width: 100%" >
		    <tr style="height: 30px">
		    <td style="width: 150px" align="center">患者姓名</td><td style="width: 200px">${patMasterIndex.name }</td>
		    <td style="width: 150px" align="center">拼音码</td><td>${patMasterIndex.name_phonetic }</td>
		    </tr>
		    <tr style="height: 30px"><td align="center">性别</td><td>${patMasterIndex.sex }</td>
		    <td align="center">出生日期</td><td>${patMasterIndex.date_of_birth }</td>
		    </tr>
		    <tr style="height: 30px"><td align="center">出生地</td><td>${patMasterIndex.zip_code }</td>
		    <td align="center">家庭住址</td><td>${patMasterIndex.mailing_address }</td>
		    </tr>
		    <tr style="height: 30px">
		    <td align="center">家庭电话</td><td>${patMasterIndex.phone_number_home }</td>
		    <td align="center">单位电话</td><td>${patMasterIndex.phone_number_business }</td>
		    </tr>
		    <tr style="height: 30px">
		    <td align="center">联系人姓名</td><td>${patMasterIndex.next_of_kin }</td>
		    <td align="center">与患者关系</td><td>${patMasterIndex.relationship }</td>
		    </tr>
		    <tr style="height: 30px">
		    <td align="center">联系人电话</td>
		    <td>${patMasterIndex.next_of_kin_phone }</td>
		    <td></td><td></td>
		    </tr>
		</table>
		<div style="padding-top: 2%">
		患者病例信息：
		<table border="1"style="border-color: lightblue;width: 100%;">
		<tr style="height: 30px"><td style="width: 150px" align="center">就诊时间</td><td>${outpMr.visit_date }</td></tr>
		<tr style="height: 30px"><td align="center">就诊号别</td><td>${outpMr.visit_no }</td></tr>
		<tr style="height: 30px"><td align="center">主诉</td><td>${outpMr.illness_desc }</td></tr>
		<tr style="height: 30px"><td align="center">既往史</td><td>${outpMr.anamnesis }</td></tr>
		<tr style="height: 30px"><td align="center">诊断</td><td>${outpMr.diag_desc }</td></tr>
		</table>
		</div>
		</div>
		<div id="loading" class="center" style="display:none"><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green"></h4></div>
	</form>
</body>
</html>