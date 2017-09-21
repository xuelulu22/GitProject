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
	top.jzts();
	$("#userForm").submit();
}
</script>
<body>
				<form action="patMasterIndex/listpage6.do" method="post" name="userForm" id="userForm">
					<!-- 检索  -->
					<table>
						<tr>
							<td>
								<span class="input-icon">
									<input autocomplete="off" id="nav-search-input" type="text" name="disease_name" value="${pd.disease_name }"  placeholder="疾病名称" />
									<i id="nav-search-icon" class="icon-search"></i>
								</span>
							</td>
							<td style="vertical-align:top;"><button class="btn btn-mini btn-light" onclick="search();" title="查询"><i id="nav-search-icon" class="icon-search"></i></button></td>
						</tr>
					</table>
					<!-- 检索  -->
					<table id="table_report" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th class="center">
								<th>患者姓名</th>
								<th>疾病名称</th>
								<th>化疗次数</th>
								<th>放疗次数</th>
								<th>手术次数</th>
								<th>靶向治疗次数</th>
							</tr>
						</thead>
						<tbody>
						<!-- 开始循环 -->	
						<c:choose>
							<c:when test="${not empty t_list}">
								<c:forEach items="${t_list}" var="info" varStatus="vs">
									<tr>
										<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td>${info.patient_name }</td>
										<td>${info.disease_name }</td>
										<td>${info.chemotherapy_num }</td>
										<td>${info.radiotherapy_num }</td>
										<td>${info.operation_num }</td>
										<td>${info.targeted_therapy_num }</td>
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
					<div class="page-header position-relative">
						<table style="width:100%;">
							<tr>
								<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
							</tr>
						</table>
					</div>
				</form>
</body>
</html>