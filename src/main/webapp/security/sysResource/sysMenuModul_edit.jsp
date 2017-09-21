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
		if($("#resourceName").val()==""){
			
			$("#resourceName").tips({
				side:3,
	            msg:'请输入模块名称',
	            bg:'#AE81FF',
	            time:2
	        });
			
			$("#resourceName").focus();
			return false;
		}
		if($("#resourceUrl").val()==""){
			$("#resourceUrl").val('#');
		}
		if($("#resourceSeq").val()==""){
			
			$("#resourceSeq").tips({
				side:1,
	            msg:'请输入菜单序号',
	            bg:'#AE81FF',
	            time:2
	        });
			
			$("#resourceSeq").focus();
			return false;
		}
		
		if(isNaN(Number($("#resourceSeq").val()))){
			
			$("#resourceSeq").tips({
				side:1,
	            msg:'排序号请输入数字',
	            bg:'#AE81FF',
	            time:2
	        });
			
			$("#resourceSeq").focus();
			//$("#menuOrder").val(1);
			return false;
		}
		
		$("#menuModulForm").submit();
		$("#zhongxin").hide();
		$("#loading").show();
	}
	
</script>


<body>
	<form  action="sysResource/dnns_editMenuModul.do" name="menuModulForm" id="menuModulForm" method="post" >
		<input type="hidden" name="resourceId" id="resourceId" value="${sysResource.resourceId}"/>
		<div id="zhongxin">
		<table>
			<tr>
				<td><input type="text" name="resourceName" id="resourceName" placeholder="这里输入模块名称" value="${sysResource.resourceName}" title="模块名称"/></td>
			</tr>
			<tr>
				<td><input type="text" name="resourceDescription" id="resourceDescription" placeholder="这里输入模块描述" value="${sysResource.resourceDescription}" title="模块描述"/></td>
			</tr>
			<tr>
				<td><input type="text" name="resourceUrl" id="resourceUrl" placeholder="这里输入链接地址" value="${sysResource.resourceUrl}" title="链接地址"/></td>
			</tr>
			<tr>
				<td><input type="number" name="resourceSeq" id="resourceSeq" placeholder="这里输入排序号" value="${sysResource.resourceSeq}" title="排序号"/></td>
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