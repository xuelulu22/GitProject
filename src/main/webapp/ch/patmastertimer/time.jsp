<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="static/css/about.css" rel="stylesheet" />
<style>
.patient-info {
	float: left;
    min-height: 100px;
    padding-left: 70px;
    text-align: center;
}
.patient-home .patient-avatar {
    float: left;
    height: 100px;
    width: 100px;
}
.patient-avatar img {
    text-align: center;
    width: 100px;
}
.fieldlabel {
    border-radius: 4px;
    display: inline-block;
    margin-right: 5px;
}
.filedvalue {
    color: #000;
    display: inline-block;
}
</style>
</head> 
<body>

    <div class="patient-info">
		<div class="patient-avatar">
			<a href="#none">
			<img src="<%=basePath%>/static/images/male.png">
			</a>
		</div>
		<div class="patient-field">
			<p></p>
			<h3 class="patient-name">患者信息</h3>
			<p></p>
			<p>
			<label class="fieldlabel">患者姓名</label>
			<span class="filedvalue">李四</span>
			</p>
			<p>
			<label class="fieldlabel">出生日期</label>
			<span class="filedvalue">1900-01-01</span>
			</p>
			<p>
			<label class="fieldlabel">生存状态</label>
			<span class="filedvalue">生存</span>
			</p>
		</div>
	</div>
	
    <div class="box">

		<ul class="event_year">
			<li class="current"><label for="2016">2016</label></li>
			<li><label for="2015">2015</label></li>
			<li><label for="2014">2014</label></li>
		</ul>
		<ul class="event_list">
			<div>
				<h3 id="2016">2016</h3>
				<li>
					<span>3月</span>
					<p><span>化疗</span></p>
				</li>
				<li>
					<span>4月</span>
					<p><span>手术</span></p>
				</li>
				<li>
					<span>5月</span>
					<p><span>随访</span></p>
				</li>
			</div>
			<div>
				<h3 id="2015">2015</h3>
				<li>
					<span>9月</span>
					<p><span>放疗</span></p>
				</li>
			</div>
			<div>
				<h3 id="2014">2014</h3>
				<li><span>3月13日</span><p><span>门诊</span></p></li>
				<li><span>3月26日</span><p><span>检查</span></p></li>
				<li><span>4月11月</span><p><span>检验</span></p></li>
				<li><span>6月11日</span><p><span>住院</span></p></li>
			</div>	
		</ul>
	</div>

<script src="static/js/jquery.min_v1.0.js" type="text/javascript"></script>

<script>
$(function(){
	$('label').click(function(){
		$('.event_year>li').removeClass('current');
		$(this).parent('li').addClass('current');
		var year = $(this).attr('for');
		$('#'+year).parent().prevAll('div').slideUp(800);
		$('#'+year).parent().slideDown(800).nextAll('div').slideDown(800);
	});
});
</script>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8" />
	<title>Timeline</title>

	<meta name="description" content="based on widget boxes with 2 different styles" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<link href="static/js/ace3.0/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="static/js/ace3.0/css/font-awesome.min.css" />

	<link rel="stylesheet" href="static/js/ace3.0/css/ace-fonts.css" />

	<link rel="stylesheet" href="static/js/ace3.0/css/ace.min.css" />
	<link rel="stylesheet" href="static/js/ace3.0/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="static/js/ace3.0/css/ace-skins.min.css" />
	<script src="static/js/ace3.0/js/ace-extra.min.js"></script>
	
	<script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script>
	
	<style>
	.patient-info {
		float: left;
		min-height: 100px;
		padding-left: 70px;
		text-align: center;
	}
	.patient-home .patient-avatar {
		float: left;
		height: 100px;
		width: 100px;
	}
	.patient-avatar img {
		text-align: center;
		width: 100px;
	}
	.fieldlabel {
		border-radius: 4px;
		display: inline-block;
		margin-right: 5px;
	}
	.filedvalue {
		color: #000;
		display: inline-block;
	}
	.event_year { width:100px;text-align:center;float:right;margin-top:20px; }
	</style>
	<!--引入弹窗组件start-->
	<script type="text/javascript" src="plugins/attention/zDialog/zDrag.js"></script>
	<script type="text/javascript" src="plugins/attention/zDialog/zDialog.js"></script>	
	
	<script type="text/javascript">
		
		function viewPatient(patientId){
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title ="患者信息";
			 diag.URL = '<%=basePath%>PatMasterTimer/toEditPatient.do?patient_id=' + patientId;
			 diag.Width = 1000;
			 diag.Height = 700;
			 diag.show();
		}
		
		function openView(a,b,c,d,e){
			var t="";
			if(b=='EXAM_REPORT_EX'){
				t='患者检查';
			}else if(b=='LAB_TEST_MASTER'){
				t='患者检验';
			}else if(b=='OUTP_MR'){
				t='患者门诊病例';
			}else if(b=='PACS_REPORT'){
				t='影像检查';
			}
			 var diag = new top.Dialog();
			 diag.Drag=true;
			 diag.Title =t;
			 diag.URL = '<%=basePath%>PatMasterTimer/getTimeView.do?patient_id='+a+'&flag='+b+'&outpatient_no='+c+'&inpatient_no='+d+'&id='+e;
			 diag.Width = 800;
			 diag.Height = 400;
			 diag.show();
		}
		
		var showTimeline = function(id) {
			var ishidden = $("#"+id).is(":hidden");
			if(ishidden) {
				document.getElementById(id).style.display = "";
			} else {
				document.getElementById(id).style.display = "none";
			}
		}
		
		var onTopLocation = function(id) {
			document.getElementById(id).style.display = "";
			window.location.hash = "#"+id;
		};
		
	</script>
</head>
<body style="background-color: white;padding: 10px;overflow-x:hidden">
	<div class="container-fluid" id="main-container">
	<div id="page-content" class="clearfix">
    <div class="patient-info">
		<div class="patient-avatar">
			<a href="javascript:viewPatient('${patMasterIndex.patient_id}');">
			<img src="<%=basePath%>/static/images/male.png">
			</a>
		</div>
		<div class="patient-field">
			<p></p>
			<h3 class="patient-name">患者信息</h3>
			<p></p>
			<p>
			<label class="fieldlabel">患者姓名</label>
			<span class="filedvalue">${patMasterIndex.name}</span>
			</p>
			<p>
			<label class="fieldlabel">性别</label>
			<span class="filedvalue">${patMasterIndex.sex}</span>
			</p>
			<p>
			<label class="fieldlabel">出生日期</label>
			<span class="filedvalue"><fmt:formatDate value='${patMasterIndex.date_of_birth}' pattern='yyyy-MM-dd'/></span>
			</p>
		</div>
	</div>
	
	<div>
	<ul class="event_year">
		<c:forEach items="${patientTimers}" var="patientTimers">
			<li>
				<span style="cursor:pointer;" class="label label-primary arrowed-in-right label-lg" onclick="onTopLocation('timeline-item${patientTimers.year}')">
					<b>${patientTimers.year}年</b>
				</span>	
			</li>
		</c:forEach>
	</ul>
	</div>
	
	<div id="timeline-1">
		<div class="row">
			<div class="col-xs-7 col-sm-7 col-sm-offset-1">
				<c:forEach items="${patientTimers}" var="patientTimers" varStatus="idx">
					<c:choose>
					<c:when test="${not empty patientTimers}">
						<div class="timeline-container">
							<div class="timeline-label">
								<span style="cursor:pointer;" class="label label-primary arrowed-in-right label-lg" onclick="showTimeline('timeline-item${patientTimers.year}')">
									<b>${patientTimers.year}年</b>
								</span>
							</div>
							<c:choose>
								<c:when test="${idx.index>0}">
									<div class="timeline-items" id="timeline-item${patientTimers.year}" style="display:none"></div>
								</c:when>
								<c:otherwise>
									<div class="timeline-items" id="timeline-item${patientTimers.year}"></div>
								</c:otherwise>
							</c:choose>
										
							<div class="timeline-items">
								<c:forEach items="${patientTimers.patMasterTimers}" var="patMasterTimers">
									<c:choose>
									<c:when test="${not empty patMasterTimers}">
										
										<div class="timeline-item clearfix">
											<div class="timeline-info">
												<c:if test="${patMasterTimers.tableName=='OUTP_MR'}">
													<img alt="Susan't Avatar" class="timeline-indicator no-hover" src="static/images/hospital/menzhen.png" />
												</c:if>
												<c:if test="${patMasterTimers.tableName=='EXAM_REPORT_EX'}">
													<img alt="Susan't Avatar" class="timeline-indicator no-hover" src="static/images/hospital/jiancha.png" />
												</c:if>
												<c:if test="${patMasterTimers.tableName=='PACS_REPORT'}">
													<img alt="Susan't Avatar" class="timeline-indicator no-hover" src="static/images/hospital/jianyan.png" />
												</c:if>
												<c:if test="${patMasterTimers.tableName=='LAB_TEST_MASTER'}">
													<img alt="Susan't Avatar" class="timeline-indicator no-hover" src="static/images/hospital/jianyan.png" />
												</c:if>
												<!-- <span class="label label-info label-sm">16:22</span> -->
											</div>
				
											<div class="widget-box">
												<div class="widget-header header-color-red2 widget-header-small">
													<h5 class="smaller">
														${patMasterTimers.abbreName}
													</h5>
				
													<span class="widget-toolbar no-border">
														<i class="icon-time bigger-110"></i>
														<fmt:formatDate value='${patMasterTimers.operatedate}' pattern='yyyy-MM-dd HH:mm:ss'/>
													</span>
												</div>
				
												<div class="widget-body">
													<div class="widget-main">
														${patMasterTimers.abbreDesc}
														<div class="space-6"></div>
														<div class="widget-toolbox clearfix">
															<div class="pull-left">
																<i class="icon-hand-right grey bigger-125"></i>
																<a href="javascript:openView('${patMasterTimers.patientId}','${patMasterTimers.tableName}','${patMasterTimers.outpatient_no}','${patMasterTimers.inpatient_no}','${patMasterTimers.tableId}');" class="bigger-110">点击查看 &hellip;</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:when>
									</c:choose>
								</c:forEach>
							</div>
						</div>	
					</c:when>
					</c:choose>
				</c:forEach>
			</div>
		</div>
	</div>
	</div>
	</div>
	
</body>
</html>