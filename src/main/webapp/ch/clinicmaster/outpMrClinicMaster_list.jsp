﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	$("#menuForm").submit();
}

function getOutpMrData(a){
		 top.jzts();
		 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="病例信息";
		 diag.URL = '<%=basePath%>patMasterIndex/getOutpMrData.do?outpatient_no='+a;
		 diag.Width = 500;
		 diag.Height = 400;
		 diag.CancelEvent = function(){ //关闭事件
			if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
				top.jzts(); 
				setTimeout("location.reload()",100);
			}
			diag.close();
		 };
		 diag.show();
}
	

function doSelectLabResult(a){
	 top.jzts();
	 var diag = new top.Dialog();
	 diag.Drag=true;
	 diag.Title ="检验结果";
	 diag.URL = '<%=basePath%>patMasterIndex/doSelectLabResult.do?test_no='+test_no;
	 diag.Width = 400;
	 diag.Height = 300;
	 diag.CancelEvent = function(){ //关闭事件
		if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
			top.jzts(); 
			setTimeout("location.reload()",100);
		}
		diag.close();
	 };
	 diag.show();
}

</script>
<body>
	<div class="container-fluid" id="main-container">
		<div id="page-content" class="clearfix">			
			<div class="row-fluid">
				<form action="" method="post" name="menuForm" id="menuForm">
					<table id="table_report" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th class="center">序号</th>
								<th>姓名</th>
								<th>号别</th>
								<th>医生</th>
								<th>科室</th>
								<th>就诊日期</th>
								<th>就诊次序</th>
								<th>主诉</th>
								<th>既往史</th>
								<th>诊断</th>
							</tr>
						</thead>
						<tbody>
						<!-- 开始循环 -->	
						<c:choose>
							<c:when test="${not empty outpMrClinicMasterList}">
								<c:forEach items="${outpMrClinicMasterList}" var="info" varStatus="vs">
									<tr>
										<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td>${info.name }</td>
										<td>${info.clinic_label }</td>
										<td>${info.doctor }</td>
										<td>${info.dept_admission }</td>
										<td>${info.visit_date }</td>
										<td>${info.visit_no }</td>
										<td>${info.illness_desc }</td>
										<td>${info.anamnesis }</td>
										<td>${info.diag_desc }</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr class="main_info">
									<td colspan="10" class="center">没有相关数据</td>
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