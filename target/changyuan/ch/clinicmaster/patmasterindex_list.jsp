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
	$("#menuForm").submit();
}
function openMain(a){
	var b="";
	var c="";
	window.open("patmaster_main.do?type="+b+"&patient_id="+a+"&id="+c);
}

</script>
<body>
	<div class="container-fluid" id="main-container">
		<div id="page-content" class="clearfix">			
			<div class="row-fluid">
				<form action="patMasterIndex/listPagePatMasterIndex.do" method="post" name="menuForm" id="menuForm">
					<!-- 检索  -->
						<table>
						<tr>
							<td>
								<span class="input-icon">
									<input autocomplete="off" id="nav-search-input" type="text" name="name" value="${pd.name }" placeholder="患者姓名" />
									<i id="nav-search-icon" class="icon-search"></i>
								</span>
							</td>
							<td style="vertical-align:top;"><button class="btn btn-mini btn-light" onclick="search();" title="查询"><i id="nav-search-icon" class="icon-search"></i></button></td>
						</tr>
					</table>
					<table id="table_report" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>序号</th>
								<th>患者姓名</th>
								<th>拼音码</th>
								<th>性别</th>
								<th>出生日期</th>
								<th>出生地</th>
								<th>家庭住址</th>
								<th>家庭电话</th>
								<th>单位电话</th>
								<th>联系人姓名</th>
								<th>与患者关系</th>
								<th>联系人电话</th>
							</tr>
						</thead>
						
						<tbody>
						<!-- 开始循环 -->	
						<c:choose>
							<c:when test="${not empty patMasterIndexList}">
								<c:forEach items="${patMasterIndexList}" var="info" varStatus="vs">
									<tr>
										<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td><a href="javascript:openMain('${info.patient_id }')">${info.name }</a></td>
										<td>${info.name_phonetic }</td>
										<td>${info.sex }</td>
										<td>${info.date_of_birth }</td>
										<td>${info.zip_code }</td>
										<td>${info.mailing_address }</td>
										<td>${info.phone_number_home }</td>
										<td>${info.phone_number_business }</td>
										<td>${info.next_of_kin }</td>
										<td>${info.relationship }</td>
										<td>${info.next_of_kin_phone }</td>
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