<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String pathl = request.getContextPath();
	String basePathl = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+pathl+"/";
%>
		<!-- 本页面涉及的js函数，都在head.jsp页面中     -->
		<div id="sidebar">

				<div id="sidebar-shortcuts" class="">


					<div id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>

				</div><!-- #sidebar-shortcuts -->


				<ul class="nav nav-list">

<!--  				    <li class="active" id="fhindex">
					  <a href="main/index"><i class="icon-dashboard"></i><span>后台首页</span></a>
					</li> -->
									<c:forEach items="${menuList}" var="sub">
										<c:choose>
											<c:when test="${not empty sub.resourceUrl}">
												<li id="z${sub.resourceId }">
													<a style="cursor:pointer;" target="mainFrame" onclick="siMenu('z${menu.resourceId }','lm${sub.resourceId }','${sub.resourceName }','${sub.resourceUrl }')">
														<i class="icon-double-angle-right"></i>${sub.resourceName }
													</a>
												</li>
											</c:when>
											<c:otherwise>
												<li><a href="javascript:void(0);"><i class="icon-double-angle-right"></i>${sub.resourceName }</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
				</ul><!--/.nav-list-->

				<div id="sidebar-collapse"><i class="icon-double-angle-left"></i></div>

			</div><!--/#sidebar-->

