<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">

	<!-- jsp文件头和头部 -->
	<%@ include file="top.jsp"%>
	<style type="text/css">
	.commitopacity{position:absolute; width:100%; height:100px; background:#7f7f7f; filter:alpha(opacity=50); -moz-opacity:0.8; -khtml-opacity: 0.5; opacity: 0.5; top:0px; z-index:99999;}
	</style>
</head>
<body>

	<!-- 页面顶部¨ -->
	<%@ include file="head.jsp"%>
	<div class="container-fluid" id="main-container">
		<a href="#" id="menu-toggler"><span></span></a>
		<!-- menu toggler -->

		<!-- 左侧菜单 -->
		<%@ include file="left.jsp"%>

		<div id="main-content" class="clearfix">
			<div>
				<c:choose>
					<c:when test="${type=='mz'}">
						<iframe name="mainFrame" id="mainFrame" frameborder="0" src="patMasterIndex/tab.do?outPatientId=${outPatientId }&patient_id=${patient_id } " style="margin:0 auto;width:100%;height:100%;"></iframe>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${type=='zy'}">
								<iframe name="mainFrame" id="mainFrame" frameborder="0" src="patMasterIndex/tab.do?inPatientId=${inPatientId }&patient_id=${patient_id } " style="margin:0 auto;width:100%;height:100%;"></iframe>
							</c:when>
							<c:otherwise>
								<iframe name="mainFrame" id="mainFrame" frameborder="0" src="patMasterIndex/tab.do?patient_id=${patient_id } " style="margin:0 auto;width:100%;height:100%;"></iframe>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<!-- #main-content -->
	</div>
	<!--/.fluid-container#main-container-->
</body>
<!-- 引入 -->
<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/ace-elements.min.js"></script>
<script src="static/js/ace.min.js"></script>

<!--引入属于此页面的js -->
<script type="text/javascript" src="static/js/myjs/index.js"></script>
</html>
