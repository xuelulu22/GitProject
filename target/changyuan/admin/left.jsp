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

					<div id="sidebar-shortcuts-large">

						<button class="btn btn-small btn-success"><i class="icon-pencil"></i></button>

						<button class="btn btn-small btn-info"><i class="icon-eye-open"></i></button>

						<button class="btn btn-small btn-warning" title="数据字典" id="adminzidian" onclick="zidian();"><i class="icon-book"></i></button>
						
						<button class="btn btn-small btn-danger"><i class="icon-folder-open"></i></button>
						
					</div>

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
					<c:forEach items="${menuList}" var="menu">
						<li id="lm${menu.resourceId }">
							  <a style="cursor:pointer;" class="dropdown-toggle" >
								<i class="${menu.resourceIcon == null ? 'icon-desktop' : menu.resourceIcon}"></i>
								<span>${menu.resourceName }</span>
								<b class="arrow icon-angle-down"></b>
							  </a>
							  <ul class="submenu">
									<c:forEach items="${menu.subResources}" var="sub">
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
						  		</ul>
						</li>
					</c:forEach>

				</ul><!--/.nav-list-->

				<div id="sidebar-collapse"><i class="icon-double-angle-left"></i></div>

			</div><!--/#sidebar-->

