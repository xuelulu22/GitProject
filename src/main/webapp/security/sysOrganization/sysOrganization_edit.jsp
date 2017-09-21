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
		if($("#organizationName").val()==""){
			$("#organizationName").tips({
				side:1,
	            msg:'请输入机构名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#organizationName").focus();
			return false;
		}
		if($("#organizationAddress").val()==""){
			$("#organizationAddress").tips({
				side:1,
	            msg:'请输入机构地址',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#organizationAddress").focus();
			return false;
		}
		if($("#organizationCode").val()==""){
			$("#organizationCode").tips({
				side:1,
	            msg:'请输入机构码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#organizationCode").focus();
			return false;
		}
		
		$("#menuForm").submit();
		$("#zhongxin").hide();
		$("#loading").show();
	}
	
</script>


<body>
	<form  action="sysOrganization/doEditOrganization.do" name="menuForm" id="menuForm" method="post" >
	<input type="hidden" name="organizationId" id="organizationId" value="${sysOrganization.organizationId}"/>
		<div id="zhongxin"style="padding-left: 20%;padding-top: 10%">
		<table>
			<tr>
				<td><input type="text" name="organizationName" id="organizationName" placeholder="这里输入机构名称" value="${sysOrganization.organizationName}" title="机构名称"/></td>
			</tr>
			<tr>
				<td><input type="text" name="organizationAddress" id="organizationAddress" placeholder="这里输入机构地址" value="${sysOrganization.organizationAddress}" title="机构地址"/></td>
			</tr>
			<tr>
				<td><input type="text" name="organizationCode" id="organizationCode" placeholder="这里输入机构码" value="${sysOrganization.organizationCode}" title="机构码"/></td>
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