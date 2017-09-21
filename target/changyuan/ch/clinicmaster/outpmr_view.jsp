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
		<div id="zhongxin" style="padding-left: 10%;padding-top: 10%">
		<table border="1" style="border-color: lightblue;width: 70%">
		
		<tr>
		<td style="width: 100px">就诊时间</td>
		<td>${outpMr.visit_date }</td>
		</tr>
		
		<tr>
		<td>就诊号别</td>
		<td>${outpMr.visit_no }</td>
		</tr>
		
		<tr>
		<td>主诉</td>
		<td>${outpMr.illness_desc }</td>
		</tr>
		
		<tr>
		<td>既往史</td>
		<td>${outpMr.anamnesis }</td>
		</tr>
			
		<tr>
		<td>诊断</td>
		<td>${outpMr.diag_desc }</td>
		</tr>
		</table>
		</div>
</body>
</html>