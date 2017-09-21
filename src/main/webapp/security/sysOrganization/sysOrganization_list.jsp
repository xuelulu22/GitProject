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
	$("#organizationForm").submit();
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

//新增
function addOrganization(){
	 top.jzts();
	 var diag = new top.Dialog();
	 diag.Drag=true;
	 diag.Title ="新增机构";
	 diag.URL = '<%=basePath%>sysOrganization/toAddOrganizationPage.do';
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

//删除
function del(modulId){
	var flag = false;
	if(confirm("确定要删除该机构吗？")){
		flag = true;
	}
	if(flag){
		var url = '<%=basePath%>sysOrganization/delOrganization.do?modulId='+modulId;
		$.get(url,function(data){
			document.location.reload();
		});
	}
}

//修改
function edit(modulId){
   	 var diag = new Dialog();
	 diag.Drag=true;
	 diag.Title ="编辑模块";
	 diag.URL = '<%=basePath%>sysOrganization/toEidtOrganizationPage.do?modulId=' + modulId;
	 diag.Width = 400;
	 diag.Height = 300;
	 diag.CancelEvent = function(){ //关闭事件
		if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
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
				<form action="sysOrganization/listPageSysOrganization.do" method="post" name="organizationForm" id="organizationForm">
					<!-- 检索  -->
					<table>
						<tr>
							<td>
								<span class="input-icon">
									<input autocomplete="off" id="nav-search-input" type="text" name="ORGANIZATION_NAME" value="${pd.ORGANIZATION_NAME }" placeholder="机构名称" />
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
								<label><input type="checkbox" id="zcheckbox" /><span class="lbl"></span></label>
								</th>
								<th>序号</th>
								<th>机构编号</th>
								<th>机构名称</th>
								<th>机构地址</th>
								<th class="center">操作</th>
							</tr>
						</thead>
						
						<tbody>
						<!-- 开始循环 -->	
						<c:choose>
							<c:when test="${not empty organizationList}">
								<c:forEach items="${organizationList}" var="organization" varStatus="vs">
									<tr>
										<td class='center' style="width: 30px;">
											<label><input type='checkbox' name='ids' value="${organization.ORGANIZATION_ID }" id="${organization.ORGANIZATION_ID }" alt="${organization.ORGANIZATION_NAME }"/><span class="lbl"></span></label>
											<!-- <label><input type='checkbox' disabled="disabled" /><span class="lbl"></span></label> -->
										</td>
										<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td>${organization.ORGANIZATION_CODE }</td>
										<td>${organization.ORGANIZATION_NAME }</td>
										<td>${organization.ORGANIZATION_ADDRESS }</td>
										<td style="width: 60px;">
											<div class='hidden-phone visible-desktop btn-group'>
											<sec:authorize access="hasRole('sysOrganization/toEidtOrganizationPage.do')">
												<a class='btn btn-mini btn-info' title="编辑" onclick="edit('${organization.ORGANIZATION_ID }');"><i class='icon-edit'></i></a>
											</sec:authorize>
											<sec:authorize access="hasRole('sysOrganization/delOrganization.do')">
												<a class='btn btn-mini btn-danger' title="删除" onclick="del('${organization.ORGANIZATION_ID }','${organization.ORGANIZATION_NAME }');"><i class='icon-trash'></i></a>
											</sec:authorize>
											</div>
										</td>
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
								<td style="vertical-align:top;">
								<sec:authorize access="hasRole('sysOrganization/toAddOrganizationPage.do')">
									<a class="btn btn-small btn-success" onclick="addOrganization();">新增</a>
								</sec:authorize>
									<a title="批量删除" class="btn btn-small btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" ><i class='icon-trash'></i></a>
								</td>
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