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

	//保存
	function save(){
		if($("#roleName").val()==""){
			
			$("#roleName").tips({
				side:3,
	            msg:'请输入角色名称',
	            bg:'#AE81FF',
	            time:2
	        });
			
			$("#roleName").focus();
			return false;
		}
		
		if(isNaN(Number($("#roleSeq").val()))){
			
			$("#roleSeq").tips({
				side:1,
	            msg:'排序号请输入数字',
	            bg:'#AE81FF',
	            time:2
	        });
			
			$("#roleSeq").focus();
			//$("#menuOrder").val(1);
			return false;
		}
		
		$("#roleForm").submit();
		$("#zhongxin").hide();
		$("#loading").show();
	}
	
</script>


<body>
	<form  action="sysRole/dnns_editRole.do" name="roleForm" id="roleForm" method="post" >
		<input type="hidden" name="roleId" value="${sysRoles.roleId }">
		<div id="zhongxin">
		<table>
			<tr>
				<td><input type="text" name="roleName" id="roleName" placeholder="这里输入角色名称" value="${sysRoles.roleName }" title="角色名称"/></td>
			</tr>
			<tr>
				<td><input type="text" name="roleDescription" id="roleDescription" placeholder="这里输入菜单描述" value="${sysRoles.roleDescription }" title="菜单描述"/></td>
			</tr>
			<tr>
				<td><input type="number" name="roleSeq" id="roleSeq" placeholder="这里输入排序号" value="${sysRoles.roleSeq }" title="排序号"/></td>
			</tr>
			<tr>
				<td style="text-align: center; padding-top: 10px;">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
				</td>
			</tr>
		</table>
		</div>
		<div id="loading" class="center" style="display:none"><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green"></h4></div>
	</form>
</body>
</html>