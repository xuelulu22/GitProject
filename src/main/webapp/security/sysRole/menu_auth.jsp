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
<link href="static/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="static/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="plugins/zTree/2.6/zTreeStyle.css"/>
<link rel="stylesheet" href="static/css/ace.min.css" />
<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
<link rel="stylesheet" href="static/css/ace-skins.min.css" />

<script type="text/javascript" src="static/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="plugins/zTree/2.6/jquery.ztree-2.6.min.js"></script>
	
<!-- jsp文件头和头部 -->
<%-- <%@ include file="/ini.jsp"%>  --%>
</head> 

<style type="text/css">
footer{height:50px;position:fixed;bottom:0px;left:0px;width:100%;text-align: center;}
</style>

<script type="text/javascript">
var zTree;
$(document).ready(function(){
		
		var setting = {
		    showLine: true,
		    checkable: true,
		};
		var zn = '${zTreeNodes}';
		var zTreeNodes = eval(zn);
		zTree = $("#tree").zTree(setting, zTreeNodes);
	});
	
	 function save(){		   
		var nodes = zTree.getCheckedNodes();
		var tmpNode;
		var ids = "";
		for(var i=0; i<nodes.length; i++){
			tmpNode = nodes[i];
			if(i!=nodes.length-1){
				ids += tmpNode.id+",";
			}else{
				ids += tmpNode.id;
			}
		}
		
		var roleId = "${roleId}";
		var url = "<%=basePath%>sysRole/menuAuth_save.do";
		var postData;
		
		postData = {"roleId":roleId,"menuIds":ids};
		
		$("#zhongxin").hide();
		$("#loading").show();
		if(postData) {
			$.ajax({
				type: "post",
				url:url,
				data:postData,
				dataType:'json',
				cache: false,
				success: function(data){
					if(data.msg == 'success') 
						top.Dialog.close();
					else 
						alert('处理失败');
				}
			});
		}
		 
	 }
</script>

<body>
	<div id="zhongxin">
		<ul id="tree" class="tree" style="overflow:auto;"></ul>
	</div>
	<div id="loading" class="center" style="display:none"><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green"></h4></div>
	
	<footer>
	<div style="width: 100%;" class="center">
		<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
		<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
	</div>
	</footer>
</body>
</html>