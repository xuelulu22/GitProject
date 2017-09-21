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

<style>
/* .table th, .table td {
    border-top: 1px solid #ddd;
    line-height: 20px;
     padding: 2px; 
    text-align: left;
    /* vertical-align: top; */
} */
</style>

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
				<h4 class="lighter">患者诊断</h4>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<table id="table_report" class="table table-striped table-hover">
					<tbody>
					<tr>
						<td style="width:30%;text-align: right;">诊断类别:</td>
						<td><input class="nav-search-input" type="text" value="${diagnosis.diagnosis_type }" /></td>
						<td style="width:30%;text-align: right;">诊断序号:</td>
						<td><input class="nav-search-input" type="text" value="${diagnosis.diagnosis_no }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">诊断名称:</td>
						<td><input class="nav-search-input" type="text"value="${diagnosis.diagnosis_desc_ch }" /></td>
						<td style="width:30%;text-align: right;">诊断日期:</td>
						<td><input class="nav-search-input" type="text"  value="${diagnosis.diagnosis_date }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">诊断编码版本号:</td>
						<td><input class="nav-search-input" type="text"value="${diagnosis.code_version }" /></td>
						<td style="width:30%;text-align: right;">治疗时间:</td>
						<td><input class="nav-search-input" type="text" value="${diagnosis.treat_days }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">治疗结果:</td>
						<td><input class="nav-search-input" type="text"value="${diagnosis.treat_result }" /></td>
						<td style="width:30%;text-align: right;"></td>
						<td></td>
					</tr>
					</tbody>
				</table>
			 </div>
			</div>
		</div>
		
		<div class="widget-box">
			<div class="widget-header header-color-red2 widget-header-small">
				<h4 class="lighter">诊断信息</h4>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<table id="table_report" class="table table-striped table-hover">
					<tbody>
					<c:forEach items="${listDiagnosisCategory}" var="info" varStatus="vs">
					<tr><td colspan="4"><font color="red">第${vs.index+1}条诊断</font></td></tr>
					<tr>
						<td style="width:20%;text-align: right;">诊断类别:</td>
						<td><input type="text" value="${info.diagnosis_type }" style="width: 80%"/></td>
						<td style="width:20%;text-align: right;">诊断序号:</td>
						<td><input type="text"value="${info.diagnosis_no }" style="width: 80%"/></td>
					</tr>
					<tr>
						<td style="width:20%;text-align: right;">诊断代码:</td>
						<td><input type="text" value="${info.diagnosis_code_ch }" style="width: 80%"/></td>
						<td style="width:20%;text-align: right;">辅助诊断代码:</td>
						<td><input type="text"value="${info.diagnosis_code_add_ch }" style="width: 80%"/></td>
					</tr>
					</c:forEach>
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