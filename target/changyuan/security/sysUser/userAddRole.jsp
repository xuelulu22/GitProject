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
		obj = document.getElementsByName("roles");
		var roleId="";
		for(k in obj){
			if(obj[k].checked)
				roleId +=obj[k].value+",";
		}
		$("#roleId").val(roleId);
		$("#menuForm").submit();
		$("#zhongxin").hide();
		$("#loading").show();
	}
	
	function checkAll(name) { 
		var el = document.getElementsByTagName('input'); 
		var len = el.length; 
		for(var i=0; i<len; i++) { 
		if((el[i].type=="checkbox") && (el[i].name==name)) { 
		el[i].checked = true; 
		} 
		} 
		} 
		function clearAll(name) { 
		var el = document.getElementsByTagName('input'); 
		var len = el.length; 
		for(var i=0; i<len; i++) { 
		if((el[i].type=="checkbox") && (el[i].name==name)) { 
		el[i].checked = false; 
		} 
		} 
	} 
		
</script>


<body>
	<form  action="sysUser/doSaveUserRole.do" name="menuForm" id="menuForm" method="post" >
	<input type="hidden" id="userId" name="userId" value="${userId }"/>
	<input type="hidden" id="roleId" name="roleId"/>
		<div id="zhongxin" style="padding-left: 20%;padding-top: 10%">
		<table>
		<tr><td>
		<input type="checkbox"   class="ace" onclick="if(this.checked==true) { checkAll('roles'); } else { clearAll('roles'); }" /> 
		<span class="lbl">全选</span>
		</td>
		</tr>
			<tr>
			<td>
			<c:forEach items="${roleList }" var="info">
				<label>
						&nbsp;&nbsp;&nbsp;&nbsp;<input name="roles" type="checkbox" class="ace" value="${info.roleId }"
						 <c:if test="${info.hasRole == '1' }">checked="checked"</c:if> />
						<span class="lbl">&nbsp;${info.roleName}</span>
				</label>
				</c:forEach>
			</td>
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