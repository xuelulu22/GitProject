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

<script type="text/javascript">


</script>


<body>
<div class="container-fluid" id="main-container">
<div id="page-content" class="clearfix">			
  <div class="row-fluid">
 	<div class="span12">
	<div id="zhongxin">
		<div class="widget-box">
			<div class="widget-header widget-header-blue widget-header-flat widget-header-small">
				<h4 class="lighter">基本信息</h4>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<table id="table_report" class="table table-striped">
					<tr>
						<td style="width:70px;text-align: right;">患者姓名:</td>
						<td style="vertical-align: center;"><input style="width:95%;" type="text" value="${patMasterIndex.name }"/></td>
						<td style="width:70px;text-align: right;">拼音码:</td>
						<td><input style="width:95%;" type="text" value="${patMasterIndex.name_phonetic }"/></td>
					</tr>
					<tr>
						<td style="width:70px;text-align: right;">性别:</td>
						<td><input style="width:95%;" type="text" value="${patMasterIndex.sex }"/></td>
						<td style="width:70px;text-align: right;">出生日期:</td>
						<td ><input style="width:95%;" type="text" value="${patMasterIndex.date_of_birth }"/></td>
					</tr>
					<tr>
						<td style="width:70px;text-align: right;">出生地:</td>
						<td><input style="width:95%;" type="text" value="${patMasterIndex.zip_code }"/></td>
						<td style="width:70px;text-align: right;">家庭住址:</td>
						<td ><input style="width:95%;" type="text" value="${patMasterIndex.mailing_address }"/></td>
					</tr>
					<tr>
						<td style="width:70px;text-align: right;">家庭电话:</td>
						<td><input style="width:95%;" type="text" value="${patMasterIndex.phone_number_home }"/></td>
						<td style="width:70px;text-align: right;">单位电话:</td>
						<td ><input style="width:95%;" type="text" value="${patMasterIndex.phone_number_business }"/></td>
					</tr>
					<tr>
						<td style="width:70px;text-align: right;">联系人姓名:</td>
						<td><input style="width:95%;" type="text" value="${patMasterIndex.next_of_kin }"/></td>
						<td style="width:70px;text-align: right;">与患者关系:</td>
						<td ><input style="width:95%;" type="text" value="${patMasterIndex.relationship }"/></td>
					</tr>
					<tr>
						<td style="width:70px;text-align: right;">联系人电话:</td>
						<td><input style="width:95%;" type="text" value="${patMasterIndex.next_of_kin_phone }"/></td>
						<td style="width:70px;text-align: right;"></td>
						<td ></td>
					</tr>
				</table>
			 </div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
</body>
</html>