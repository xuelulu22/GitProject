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
<script type="text/javascript" src="static/js/echarts.js"></script>
<script type="text/javascript">
//检索
function search(){
	//显示加载进度
	top.jzts();
	$("#userForm").submit();
}
function searchDiseaseName(){
	$.get("patMasterIndex/searchDiseaseName.do",{disease_name:$("#cure_num").val()},function(data){
		var myChart = echarts.init(document.getElementById('container'));
		 option = {
				    tooltip : {
				        formatter: "{a} <br/>{b} : {c}%"
				    },
				    series: [
				        {
				            name: '治愈率',
				            type: 'gauge',
				            detail: {formatter:data.num+'%'},
				            data: [{value: data.num, name: '疾病治愈率'}]
				        }
				    ]
				};

				
			       myChart.setOption(option);
	 },"json");
}

</script>
<body>
<div style="width: 70%;float: left">
				<form action="patMasterIndex/ReportDiseaseNumT.do" method="post" name="userForm" id="userForm">
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
								<th>疾病名称</th>
								<th>总例数</th>
								<th>平均住院日数</th>
								<th>死亡例数</th>
								<th>死亡率</th>
								<th>治愈例数</th>
								<th>好转例数</th>
								<th>未愈例数</th>
								<th>15日再住院数</th>
								<th>31日再住院数</th>
								<th>15日再住院率</th>
							</tr>
						</thead>
						<tbody>
						<!-- 开始循环 -->	
						<c:choose>
							<c:when test="${not empty t_list}">
								<c:forEach items="${t_list}" var="info" varStatus="vs">
									<tr>
										<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td>${info.disease_name }</td>
										<td>${info.case_num }</td>
										<td>${info.hospitalization_num }</td>
										<td>${info.death_num }</td>
										<td>${info.death_radio }</td>
										<td>${info.cure_num }</td>
										<td>${info.better_num }</td>
										<td>${info.healed_num }</td>
										<td>${info.hospitalization_in_15 }</td>
										<td>${info.hospitalization_in_31 }</td>
										<td>${info.hospitalization_in_15_radio }</td>
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
				</div>
				<div style="width: 30%;float: right">
				<table>
						<tr>
							<td>
									<select id="cure_num" onchange="searchDiseaseName()">
									<c:forEach items="${t_listt}" var="info" varStatus="vs">
									<option value="${info.disease_name }">${info.disease_name }</option>
									</c:forEach>	
									</select>
							</td>
							<td style="vertical-align:top;"><button class="btn btn-mini btn-light" onclick="search();" title="查询"><i id="nav-search-icon" class="icon-search"></i></button></td>
						</tr>
					</table>
				  <div id="container" style="min-width: 20%; height: 300px; margin: 0 auto;"></div>
				 <script type="text/javascript">
				 $(function () {
					 $.get("patMasterIndex/searchDiseaseName.do",{disease_name:$("#cure_num").val()},function(data){
							var myChart = echarts.init(document.getElementById('container'));
							 option = {
									    tooltip : {
									        formatter: "{a} <br/>{b} : {c}%"
									    },
									    series: [
									        {
									            name: '治愈率',
									            type: 'gauge',
									            detail: {formatter:data.num+'%'},
									            data: [{value: data.num, name: '疾病治愈率'}]
									        }
									    ]
									};

									
								       myChart.setOption(option);
						 },"json");
				 });
				 </script>
				</div>
</body>
</html>