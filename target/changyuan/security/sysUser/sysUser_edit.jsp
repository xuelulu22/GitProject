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
		if($("#userAccount").val()==""){
			$("#userAccount").tips({
				side:1,
	            msg:'请输入登录账号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#userAccount").focus();
			return false;
		}
		if($("#userAccount").val()!=$("#oldUserAccount").val()){
		$.get("sysUser/doGetUserExist.do",{userAccount:$("#userAccount").val()},function(data){
 			if(data.state=='failed'){
 				$("#userAccount").tips({
 					side:1,
 		            msg:'已存在',
 		            bg:'#AE81FF',
 		            time:2
 		        });
 				$("#userAccount").focus();
 				return false;
 	  			}
 			else{
 				$("#menuForm").submit();
 				$("#zhongxin").hide();
 				$("#loading").show();
 			}
	     },"json");
		}
		else{
			$("#menuForm").submit();
			$("#zhongxin").hide();
			$("#loading").show();
		}
		
	}
	
	
</script>


<body>
	<form  action="sysUser/doEditUser.do" name="menuForm" id="menuForm" method="post" >
	<input type="hidden" name="userId" id="userId" value="${sysUsers.userId}"/>
	<input type="hidden"  id="oldUserAccount" value="${sysUsers.userAccount}"/>
		<div id="zhongxin" style="padding-left: 20%;padding-top: 10%">
		<table>
			<tr>
				<td><input type="text" name="userAccount" id="userAccount" placeholder="这里输入登录账号" value="${sysUsers.userAccount}" title="登录账号"/></td>
			</tr>
			<tr>
				<td><input type="text" name="userName" id="userName" placeholder="这里输入用户名" value="${sysUsers.userName}" title="用户名"/></td>
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