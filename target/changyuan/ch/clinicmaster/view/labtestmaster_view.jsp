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
				<c:if test="${m['labTestMaster'].inpatient_no==''}">门诊检验</c:if>
				<c:if test="${m['labTestMaster'].outpatient_no==''}">住院检验</c:if>
				</h4>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<table id="table_report" class="table table-striped table-hover">
					<tbody>
					<tr>
						<td style="width:30%;text-align: right;">
						<c:if test="${m['labTestMaster'].inpatient_no==''}">门诊号：</c:if>
						<c:if test="${m['labTestMaster'].outpatient_no==''}">住院号：</c:if>
						</td>
						<td>
						<c:if test="${m['labTestMaster'].inpatient_no==''}">
						<input class="nav-search-input" type="text" value="${m['labTestMaster'].outpatient_no }" />
						</c:if>
						<c:if test="${m['labTestMaster'].outpatient_no==''}">
						<input class="nav-search-input" type="text" value="${m['labTestMaster'].inpatient_no }" />
						</c:if>
						</td>
						<td style="width:30%;text-align: right;">患者编号:</td>
						<td><input class="nav-search-input" type="text" value="${m['labTestMaster'].patient_id }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">标本采样日期及时间:</td>
						<td><input class="nav-search-input" type="text"value="${m['labTestMaster'].spcm_sample_date_time }" /></td>
						<td style="width:30%;text-align: right;">标本:</td>
						<td><input class="nav-search-input" type="text"  value="${m['labTestMaster'].specimen }" /></td>
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