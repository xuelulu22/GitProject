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
		<div id="zhongxin" style="padding-left: 20%;padding-top: 10%">
		<table>
		<tr>
		<td>姓名</td>
		<td>就诊时间</td>
		<td>号别</td>
		<td>医生姓名</td>
		</tr>
		<tr>
		<td>姓名</td>
		<td>就诊时间</td>
		<td>号别</td>
		<td>医生姓名</td>
		</tr>
		</table>
		</div>
		<div id="loading" class="center" style="display:none"><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green"></h4></div>
	</form>
</body>
</html>