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
				<c:if test="${m['examReportEx'].inpatient_no==''}">门诊检查</c:if>
				<c:if test="${m['examReportEx'].outpatient_no==''}">住院检查</c:if>
				</h4>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<table id="table_report" class="table table-striped table-hover">
					<tbody>
					<tr>
						<td style="width:30%;text-align: right;">
						<c:if test="${m['examReportEx'].inpatient_no==''}">门诊号：</c:if>
						<c:if test="${m['examReportEx'].outpatient_no==''}">住院号：</c:if>
						</td>
						<td>
						<c:if test="${m['examReportEx'].inpatient_no==''}">
						<input class="nav-search-input" type="text" value="${m['examReportEx'].outpatient_no }" />
						</c:if>
						<c:if test="${m['examReportEx'].outpatient_no==''}">
						<input class="nav-search-input" type="text" value="${m['examReportEx'].inpatient_no }" />
						</c:if>
						</td>
						<td style="width:30%;text-align: right;">患者编号:</td>
						<td><input class="nav-search-input" type="text" value="${m['examReportEx'].patient_id }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">检查号:</td>
						<td><input class="nav-search-input" type="text"value="${m['examReportEx'].report_no }" /></td>
						<td style="width:30%;text-align: right;">姓名:</td>
						<td><input class="nav-search-input" type="text"  value="${m['examReportEx'].name }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">报告名称:</td>
						<td><input class="nav-search-input" type="text"value="${m['examReportEx'].exam_class }" /></td>
						<td style="width:30%;text-align: right;">诊断结果:</td>
						<td><input class="nav-search-input" type="text" value="${m['examReportEx'].impression }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">报告日期:</td>
						<td><input class="nav-search-input" type="text"value="${m['examReportEx'].report_datetime }" /></td>
						<td style="width:30%;text-align: right;"></td>
						<td></td>
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