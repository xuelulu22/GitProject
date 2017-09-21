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
		if($("#userPassword").val()==""){
			$("#userPassword").tips({
				side:1,
	            msg:'请输入密码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#userPassword").focus();
			return false;
		}
		if($("#reuserPassword").val()==""){
			$("#reuserPassword").tips({
				side:1,
	            msg:'请输入重复密码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#reuserPassword").focus();
			return false;
		}
		$("#menuForm").submit();
		$("#zhongxin").hide();
		$("#loading").show();
	}
	
	
</script>


<body>
	<form action="sysUser/doEditUserPass.do" name="menuForm" id="menuForm" method="post" >
		<div id="zhongxin" style="padding-left: 20%;padding-top: 10%">
		<table>
			<tr>
				<td><input type="text" name="userPassword" id="userPassword" placeholder="请输入密码" title="密码"/></td>
			</tr>
			<tr>
				<td><input type="text" name="reuserPassword" id="reuserPassword" placeholder="请在输一遍"  title="重复密码"/></td>
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