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
	$("#roleForm").submit();
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
function add(){
	 var diag = new Dialog();
	 diag.Drag=true;
	 diag.Title ="新增角色";
	 diag.URL = '<%=basePath%>sysRole/toAddSysRole.do';
	 diag.Width = 223;
	 diag.Height = 256;
	 diag.CancelEvent = function(){ //关闭事件
	 	if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
			setTimeout("location.reload()",100);
		}
		diag.close();
	 };
	 diag.show();
}

//修改
function editRole(roleId){
	 var diag = new Dialog();
	 diag.Drag=true;
	 diag.Title ="修改角色";
	 diag.URL = '<%=basePath%>sysRole/toEditRole.do?roleId=' + roleId;
	 diag.Width = 223;
	 diag.Height = 256;
	 diag.CancelEvent = function(){ //关闭事件
	 	if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
			setTimeout("location.reload()",100);
		}
		diag.close();
	 };
	 diag.show();
}

//删除菜单模块
function delRole(roleId){
	var flag = false;
	if(confirm("确定要删除该角色吗？")){
		flag = true;
	}
	if(flag){
		var url = '<%=basePath%>sysRole/delSysRole.do?roleId='+roleId;
		$.get(url,function(data){
			document.location.reload();
		});
	}
}

//分配菜单权限
function addMenuAuth(roleId){
	var diag = new Dialog();
	 diag.Drag=true;
	 diag.Title ="分配菜单权限";
	 diag.URL = '<%=basePath%>sysRole/toMenuAuth.do?roleId=' + roleId;
	 diag.Width = 400;
	 diag.Height = 500;
	 scrollbar = true;
	 diag.CancelEvent = function(){ //关闭事件
	 	if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
			setTimeout("location.reload()",100);
		}
		diag.close();
	 };
	 diag.show();
}

//分配菜单权限
function addFuncAuth(roleId){
	var diag = new Dialog();
	 diag.Drag=true;
	 diag.Title ="分配功能权限";
	 diag.URL = '<%=basePath%>sysRole/toFuncAuth.do?roleId=' + roleId;
	 diag.Width = 400;
	 diag.Height = 500;
	 scrollbar = true;
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
				<form action="sysRole/listPageSysRole.do" method="post" name="roleForm" id="roleForm">
					<!-- 检索  -->
					<table>
						<tr>
							<td>
								<span class="input-icon">
									<input autocomplete="off" id="nav-search-input" type="text" name="ROLE_NAME" value="${pd.ROLE_NAME }" placeholder="角色名称" />
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
								<th>角色名称</th>
								<th>角色描述</th>
								<th>排序</th>
								<th class="center">操作</th>
							</tr>
						</thead>
						
						<tbody>
						<!-- 开始循环 -->	
						<c:choose>
							<c:when test="${not empty roleList}">
								<c:forEach items="${roleList}" var="role" varStatus="vs">
									<tr>
										<td class='center' style="width: 30px;">
											<label><input type='checkbox' name='ids' value="${role.ROLE_ID }" id="${role.ROLE_ID }" alt="${role.ROLE_NAME }"/><span class="lbl"></span></label>
											<!-- <label><input type='checkbox' disabled="disabled" /><span class="lbl"></span></label> -->
										</td>
										<td class='center' style="width: 30px;">${vs.index+1}</td>
										<td>${role.ROLE_NAME }</td>
										<td>${role.ROLE_DESCRIPTION }</td>
										<td>${role.ROLE_SEQ }</td>
										<td style="width: 60px;">
											<div class='hidden-phone visible-desktop btn-group'>
												<sec:authorize access="hasRole('sysRole/toEditRole.do')">
													<a class='btn btn-mini btn-info' title="编辑" onclick="editRole('${role.ROLE_ID }');"><i class='icon-edit'></i></a>
												</sec:authorize>
												<sec:authorize access="hasRole('sysRole/delSysRole.do')">
													<a class='btn btn-mini btn-danger' title="删除" onclick="delRole('${role.ROLE_ID }','${role.ROLE_NAME }');"><i class='icon-trash'></i></a>
												</sec:authorize>
												<sec:authorize access="hasRole('sysRole/toMenuAuth.do')">
													<a class='btn btn-mini btn-info' onclick="addMenuAuth('${role.ROLE_ID }')" >分配菜单权限</a>
												</sec:authorize>
												<sec:authorize access="hasRole('sysRole/toFuncAuth.do')">
													<a class='btn btn-mini btn-info' onclick="addFuncAuth('${role.ROLE_ID }')" >分配功能权限</a>
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
									<sec:authorize access="hasRole('sysRole/toAddSysRole.do')">
										<a class="btn btn-small btn-success" onclick="add();">新增</a>
									</sec:authorize>
									<sec:authorize access="hasRole('#')">
										<a title="批量删除" class="btn btn-small btn-danger" onclick="makeAll('确定要删除选中的数据吗?');" ><i class='icon-trash'></i></a>
									</sec:authorize>
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