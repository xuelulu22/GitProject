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
				<h4 class="lighter">
				<c:if test="${m['pacsReport'].inpatient_no==''}">门诊影像检查</c:if>
				<c:if test="${m['pacsReport'].outpatient_no==''}">住院影像检查</c:if>
				</h4>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<table id="table_report" class="table table-striped table-hover">
					<tbody>
					<tr>
						<td style="width:30%;text-align: right;">患者编号:</td>
						<td><input class="nav-search-input" type="text"value="${m['pacsReport'].patient_id }" /></td>
						<td style="width:30%;text-align: right;">姓名:</td>
						<td><input class="nav-search-input" type="text"  value="${m['pacsReport'].name }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">报告名称:</td>
						<td><input class="nav-search-input" type="text"value="${m['pacsReport'].exam_class }" /></td>
						<td style="width:30%;text-align: right;">诊断结果:</td>
						<td><input class="nav-search-input" type="text" value="${m['pacsReport'].report_diagnosis }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">报告日期:</td>
						<td><input class="nav-search-input" type="text"value="${m['pacsReport'].report_datetime }" /></td>
						<td style="width:30%;text-align: right;"></td>
						<td ></td>
					</tr>
					</tbody>
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