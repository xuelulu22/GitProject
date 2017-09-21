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

//检索
function search(){
	//显示加载进度
	//top.jzts();
	$("#diagnosisForm").submit();
}

$(function() {
	//复选框
	$('table th input:checkbox').on('click' , function(){
		var that = this;
		$(this).closest('table').find('tr > td:first-child input:checkbox')
		.each(function(){
			this.checked = that.checked;
			$(this).closest('tr').toggleClass('selected');
		});	
	});
});

//修改

function toEditDiagnosisPage(id) {
	 var diag = new Dialog();
	 diag.Drag=true;
	 diag.Title ="门诊诊断";
	 diag.URL = '<%=basePath%>Diagnosis/toEditDiagnosisPage.do?id=' + id;
	 diag.Width = 900;
	 diag.Height = 600;
	 diag.show();
}
</script>
<body>
	<div class="container-fluid" id="main-container">
		<div id="page-content" class="clearfix">			
			<div class="row-fluid">
				<form action="Diagnosis/listPageDiagnosis.do" method="post" name="diagnosisForm" id="diagnosisForm">
					<div style="padding: 5px"></div>
					<!-- 检索  -->
					<table id="table_report" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>序号</th>
								<th>诊断类别</th>
								<th>诊断序号</th>
								<th>诊断名称</th>
								<th>诊断日期</th>
								<th>诊断编码版本号</th>
								<th>治疗时间</th>
								<th>治疗结果</th>
								<th class="center">操作</th>
							</tr>
						</thead>
						
						<tbody>
						<!-- 开始循环 -->	
						<c:choose>
							<c:when test="${not empty diagnosisList}">
								<c:forEach items="${diagnosisList}" var="info" varStatus="vs">
									<tr>
										<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td>${info.diagnosis_type}</td>
										<td>${info.diagnosis_no}</td>
										<td>${info.diagnosis_desc_ch}</td>
										<td>${info.diagnosis_date}</td>
										<td>${info.code_version}</td>
										<td>${info.treat_days}</td>
										<td>${info.treat_result}</td>
										<td style="width: 60px;">
											<div class='hidden-phone visible-desktop btn-group'>
											<%-- <sec:authorize access="hasRole('Diagnosis/toEditDiagnosisPage.do')"> --%>
												<a class='btn btn-mini btn-info' title="编辑" onclick="toEditDiagnosisPage('${info.id }');"><i class='icon-edit'></i></a>
								            <%-- </sec:authorize> --%>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr class="main_info">
									<td colspan="13" class="center">没有相关数据</td>
								</tr>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
					
					<!-- 显示分页和功能按钮  -->
					<div class="page-header position-relative">
						<table style="width:100%;">
							<tr>
								<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
							</tr>
						</table>
					</div>
				</form>
		<!-- PAGE CONTENT ENDS HERE -->
  		</div><!--/row-->	
	</div><!--/#page-content-->
</div><!--/.fluid-container#main-container-->

<!-- 返回顶部  -->
<a href="#" id="btn-scroll-up" class="btn btn-small btn-inverse">
	<i class="icon-double-angle-up icon-only"></i>
</a>
</body>
</html>