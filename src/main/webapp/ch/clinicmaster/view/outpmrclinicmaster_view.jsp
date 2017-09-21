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
				<h4 class="lighter">门诊病例</h4>
			</div>
			<div class="widget-body">
			 <div class="widget-main">
				<table id="table_report" class="table table-striped table-hover">
					<tbody>
					<tr>
						<td style="width:30%;text-align: right;">姓名:</td>
						<td><input class="nav-search-input" type="text"value="${m['outpMrClinicMaster'].name }" /></td>
						<td style="width:30%;text-align: right;">号别:</td>
						<td><input class="nav-search-input" type="text"  value="${m['outpMrClinicMaster'].clinic_label }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">医生:</td>
						<td><input class="nav-search-input" type="text"value="${m['outpMrClinicMaster'].doctor }" /></td>
						<td style="width:30%;text-align: right;">科室:</td>
						<td><input class="nav-search-input" type="text" value="${m['outpMrClinicMaster'].dept_admission }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">就诊日期:</td>
						<td><input class="nav-search-input" type="text"value="${m['outpMrClinicMaster'].visit_date }" /></td>
						<td style="width:30%;text-align: right;">就诊次序:</td>
						<td><input class="nav-search-input" type="text" value="${m['outpMrClinicMaster'].visit_no }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">主诉:</td>
						<td><input class="nav-search-input" type="text"value="${m['outpMrClinicMaster'].illness_desc }" /></td>
						<td style="width:30%;text-align: right;">既往史:</td>
						<td><input class="nav-search-input" type="text" value="${m['outpMrClinicMaster'].anamnesis }" /></td>
					</tr>
					<tr>
						<td style="width:30%;text-align: right;">诊断:</td>
						<td><input class="nav-search-input" type="text"value="${m['outpMrClinicMaster'].diag_desc }" /></td>
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