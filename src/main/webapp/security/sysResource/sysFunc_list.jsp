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
	
	function openClose(funcId,curObj,trIndex){
		var txt = $(curObj).text();
		if(txt=="展开"){
			$(curObj).text("折叠");
			$("#tr"+funcId).after("<tr id='tempTr"+funcId+"'><td colspan='5'>数据载入中</td></tr>");
			if(trIndex%2==0){
				$("#tempTr"+funcId).addClass("main_table_even");
			}
			var url = "sysResource/doNotNeedSecurity_getSubFunc.do?funcId="+funcId+"&guid="+new Date().getTime();
			$.get(url,function(data){
				if(data.length>0){
					var html = "";
					$.each(data,function(i){
						html = "<tr style='background-color:grad;height:24px;line-height:24px;' name='subTr"+funcId+"'>";
						html += "<td></td>";
						html += "<td><span style='width:80px;display:inline-block;'></span>";
						if(i==data.length-1)
							html += "<img src='static/images/joinbottom.gif' style='vertical-align: middle;'/>";
						else
							html += "<img src='static/images/join.gif' style='vertical-align: middle;'/>";
						html += "<span style='width:100px;text-align:left;display:inline-block;'>"+this.resourceName+"</span>";
						html += "<span class='label label-important arrowed-in'>功能点</span>";
						html += "</td>";
						html += "<td>"+this.resourceUrl+"</td>";
						html += "<td class='center'>"+this.resourceSeq+"</td>";
						html += "<td><a class='btn btn-mini btn-info' title='编辑' onclick='editFunc(\""+this.resourceId+"\")'><i class='icon-edit'></i></a> <a class='btn btn-mini btn-danger' title='删除' onclick='delFunc(\""+this.resourceId+"\")'><i class='icon-trash'></i></a></td>";
						html += "</tr>";
						$("#tempTr"+funcId).before(html);
					});
					$("#tempTr"+funcId).remove();
					if(trIndex%2==0){
						$("tr[name='subTr"+funcId+"']").addClass("main_table_even");
					}
				}else{
					$("#tempTr"+funcId+" > td").html("没有相关数据");
				}
			},"json");
		}else{
			$("#tempTr"+funcId).remove();
			$("tr[name='subTr"+funcId+"']").remove();
			$(curObj).text("展开");
		}
	}
	
	//修改
	function editmenu(menuId){
		 top.jzts();
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑菜单";
		 diag.URL = '<%=basePath%>menu/toEdit.do?MENU_ID='+menuId;
		 diag.Width = 223;
		 diag.Height = 256;
		 diag.CancelEvent = function(){ //关闭事件
			if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
				top.jzts(); 
				setTimeout("location.reload()",100);
			}
			diag.close();
		 };
		 diag.show();
	}
	
	//新增菜单模块
	function addFuncModul(){
		 var diag = new Dialog();
		 diag.Drag=true;
		 diag.Title ="新增模块";
		 diag.URL = '<%=basePath%>sysResource/toAddFuncModul.do';
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
	function delFuncModul(modulId){
		var flag = false;
		if(confirm("确定要删除该模块吗？其下功能点将一并删除！")){
			flag = true;
		}
		if(flag){
			var url = '<%=basePath%>sysResource/delFuncModul.do?modulId='+modulId;
			$.get(url,function(data){
				document.location.reload();
			});
		}
	}
	
	//修改
	function editFuncModul(modulId){
	   	 var diag = new Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑模块";
		 diag.URL = '<%=basePath%>sysResource/toEditFuncModul.do?modulId=' + modulId;
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
	
	//新增下级菜单
	function addFunc(modulId){
		 var diag = new Dialog();
		 diag.Drag=true;
		 diag.Title ="新增下级功能点";
		 diag.URL = '<%=basePath%>sysResource/toAddFunc.do?modulId=' + modulId;
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
	function editFunc(funcId){
	   	 var diag = new Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑下级菜单";
		 diag.URL = '<%=basePath%>sysResource/toEditFunc.do?funcId=' + funcId;
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
	
	//删除
	function delFunc(funcId){
		var flag = false;
		if(confirm("确定要删除该功能点吗？")){
			flag = true;
		}
		if(flag){
			var url = '<%=basePath%>sysResource/delFunc.do?funcId='+funcId;
			$.get(url,function(data){
				document.location.reload();
			});
		}
	}
</script>
</head>

<body>
	<table id="table_report" class="table table-striped table-bordered table-hover">
		<thead>
		<tr>
			<th class="center"  style="width: 50px;">序号</th>
			<th class='center'>功能点名称</th>
			<th class='center'>功能点路径</th>
			<th class='center'>排序</th>
			<th class='center'>操作</th>
		</tr>
		</thead>
		<c:choose>
			<c:when test="${not empty funcModulList}">
				<c:forEach items="${funcModulList}" var="modul" varStatus="vs">
				<tr id="tr${modul.resourceId }">
				<td class="center">${vs.index+1}</td>
				<td class='center'><i class="${modul.resourceIcon }">&nbsp;</i>${modul.resourceName }&nbsp;
					<span class="label label-success arrowed">模块</span>
				</td>
				<td>${modul.resourceUrl == '#'? '': modul.resourceUrl}</td>
				<td class='center'>${modul.resourceSeq }</td>
				<td style="width: 25%;">
					<a class='btn btn-mini btn-warning' onclick="openClose('${modul.resourceId }',this,${vs.index })" >展开</a>
					<sec:authorize access="hasRole('sysResource/toAddFunc.do')">
						<a class='btn btn-mini btn-info' onclick="addFunc('${modul.resourceId }')" >新增功能点</a>
					</sec:authorize>
					<sec:authorize access="hasRole('sysResource/toEditFuncModul.do')">
						<a class='btn btn-mini btn-info' title="编辑" onclick="editFuncModul('${modul.resourceId }')" ><i class='icon-edit'></i></a>
					</sec:authorize>
					<sec:authorize access="hasRole('sysResource/delFuncModul.do')">
						<a class='btn btn-mini btn-danger' title="删除"  onclick="delFuncModul('${modul.resourceId }')"><i class='icon-trash'></i></a>
					</sec:authorize>
				</td>
				</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
				<td colspan="100">没有相关数据</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	
	<div class="page_and_btn">
		<div>
			<sec:authorize access="hasRole('sysResource/toAddFuncModul.do')">
				&nbsp;&nbsp;<a class="btn btn-small btn-success" onclick="addFuncModul();">新增功能点模块</a>
			</sec:authorize>
		</div>
	</div>
	
</body>
</html>