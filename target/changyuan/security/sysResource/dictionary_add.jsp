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
			if(!doTest()){
				return false;
			}
			if("${!empty  dictionary }"){
				if(($("#value").val()!=$("#old_value").val())||($("#type").val()!=$("#old_type").val())){
					$.get("sysResource/doSelectDictionaryIsExist.do",{value:$("#value").val(),type:$("#type").val()},function(data){
			 			if(data.state=='failed'){
			 				$("#value").tips({
			 					side:1,
			 		            msg:'已存在',
			 		            bg:'#AE81FF',
			 		            time:1
			 		        });
			 				$("#value").focus();
			 				return false;
			 	  			}
			 			else{
			 				$("#menuForm").attr("action", "sysResource/doSaveDictionary.do");
			 				$("#menuForm").submit();
			 				$("#zhongxin").hide();
			 				$("#loading").show();
			 			}
				     },"json");
				}else{
					$("#menuForm").attr("action", "sysResource/doSaveDictionary.do");
					$("#menuForm").submit();
	 				$("#zhongxin").hide();
	 				$("#loading").show();
				}
			}else{
				$.get("sysResource/doSelectDictionaryIsExist.do",{value:$("#value").val(),type:$("#type").val()},function(data){
		 			if(data.state=='failed'){
		 				$("#value").tips({
		 					side:1,
		 		            msg:'已存在',
		 		            bg:'#AE81FF',
		 		            time:1
		 		        });
		 				$("#value").focus();
		 				return false;
		 	  			}
		 			else{
		 				$("#menuForm").attr("action", "sysResource/doSaveDictionary.do");
		 				$("#menuForm").submit();
		 				$("#zhongxin").hide();
		 				$("#loading").show();
		 			}
			     },"json");
			}
	
		
	}
	
	function doTest(){
		var j=0;
		if($("#text").val()==""){
			$("#text").tips({
				side:1,
	            msg:'请输入文本字符',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#text").focus();
			j++;
		}
		
		if($("#value").val()==""){
			$("#value").tips({
				side:1,
	            msg:'请输入文本值',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#value").focus();
			j++;
		}
		
		if($("#type").val()==""){
			$("#type").tips({
				side:1,
	            msg:'请输入文本类型',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#type").focus();
			j++;
		}
		
		if($("#orderBy").val()==""){
			$("#orderBy").tips({
				side:1,
	            msg:'请输入排序',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#orderBy").focus();
			j++;
		}

		if(j==0){
			return true;
		}
		else{
			return false;
		}
		
	}
	
	
</script>


<body>
	<form name="menuForm" id="menuForm" method="post" >
		<div id="zhongxin" style="padding-left: 20%;padding-top: 10%">
		<c:if test="${!empty dictionary }">
		<input type="hidden" id="old_value" value="${dictionary.value }"/>
		<input type="hidden" id="old_type" value="${dictionary.type }"/>
		</c:if>
		<table>
			<tr>
			<td>文本字符:</td>
			<td><input type="text" name="text" id="text" placeholder="文本字符" value="${dictionary.text }" title="文本字符"/></td></tr>
			<tr>
			<td>文本值:</td>
			<td><input type="text" name="value" id="value" placeholder="文本值" value="${dictionary.value }" title="文本值"/></td></tr>
			<tr>
			<td>类型:</td>
			<td><input type="text" name="type" id="type" placeholder="类型" value="${dictionary.type }" title="类型"/></td></tr>
			<tr>
			<td>备注:</td>
			<td><input type="text" name="remark" id="remark" placeholder="备注" value="${dictionary.remark }" title="备注"/></td></tr>
			<tr>
			<td>排序:</td>
			<td><input type="text" name="orderBy" id="orderBy" placeholder="排序" value="${dictionary.orderBy }" title="排序"/></td></tr>
			<tr>
				<td colspan="2" style="text-align: center; padding-top: 10px;">
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