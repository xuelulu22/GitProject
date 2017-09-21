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
				<c:if test="${m['labTestMaster'].inpatient_no==''}">门诊病例</c:if>
				<c:if test="${m['labTestMaster'].outpatient_no==''}">住院病例</c:if>
				</h4>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<table id="table_report" class="table table-striped table-hover">
					<tbody>
					<tr>
						<td style="width:30%;text-align: right;">住院号:</td>
						<td><input class="nav-search-input" type="text"value="${m['patVisit'].inpatient_no }" /></td>
						<td style="width:30%;text-align: right;">患者编号:</td>
						<td><input class="nav-search-input" type="text"  value="${m['patVisit'].patient_id }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">入院科室:</td>
						<td><input class="nav-search-input" type="text"value="${m['patVisit'].dept_admission_to }" /></td>
						<td style="width:30%;text-align: right;">入院时间:</td>
						<td><input class="nav-search-input" type="text" value="${m['patVisit'].admission_date_time }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">出院科室:</td>
						<td><input class="nav-search-input" type="text"value="${m['patVisit'].dept_discharge_from }" /></td>
						<td style="width:30%;text-align: right;">出院时间:</td>
						<td><input class="nav-search-input" type="text" value="${m['patVisit'].discharge_date_time }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">婚姻状况:</td>
						<td><input class="nav-search-input" type="text"value="${m['patVisit'].marital_status }" /></td>
						<td style="width:30%;text-align: right;">体重:</td>
						<td><input class="nav-search-input" type="text" value="${m['patVisit'].body_weight }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">身高:</td>
						<td><input class="nav-search-input" type="text"value="${m['patVisit'].body_height }" /></td>
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