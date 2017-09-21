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
		<div id="zhongxin" style="padding-left: 5%;padding-top: 10%">
		<table border="1" style="border-color: lightblue;width: 90%">
		<tr>
		<td>患者姓名</td>	
		<td>${outpMrClinicMaster.name }</td>	
		<td>科室</td>
		<td>${outpMrClinicMaster.visit_dept }</td>	
		</tr>
		<tr>
		<td>号别</td>
		<td>${outpMrClinicMaster.clinic_label }</td>	
		<td>医生姓名</td>
		<td>${outpMrClinicMaster.doctor }</td>	
		</tr>
		<tr>
		<td>就诊时间</td>
		<td>${outpMrClinicMaster.visit_date }</td>	
		<td>就诊次序</td>
		<td>${outpMrClinicMaster.visit_no }</td>	
		</tr>
		<tr>
		<td>主诉</td>
		<td>${outpMrClinicMaster.illness_desc }</td>	
		<td>既往史</td>
		<td>${outpMrClinicMaster.anamnesis }</td>	
		</tr>
		<tr>
		<td>诊断</td>
		<td>${outpMrClinicMaster.diag_desc }</td>
		<td></td>	
		<td></td>	
		</tr>
		</table>
		</div>
		<div id="loading" class="center" style="display:none"><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green"></h4></div>
	</form>
</body>
</html>