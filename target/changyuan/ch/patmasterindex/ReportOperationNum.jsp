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
<script type="text/javascript" src="static/js/echarts.js"></script>
</head> 


<body>
	<div class="container-fluid" id="main-container">
		<div id="page-content" class="clearfix">			
				选择年份：<select id="year" onchange="search()">
				<option value="2016">2016</option>
				<option value="2015">2015</option>
				<option value="2014">2014</option>
				</select>
			    <div class="row-fluid">
			 <div id="container" style="width:900px; height: 250px; margin: 0 auto;float: left;"></div>
			 <script type="text/javascript">
$(function () {
	var year =$("#year").val();
	$.get("patMasterIndex/ReportOperationNum2.do",{year:year},function(data){
		var series=[];
		var series2=[];
		for(var i=0;i<data.info.length;i++){
			series.push(data.info[i].operation_all_num);
			series2.push(data.info[i].operation_name);
		}
		  var myChart = echarts.init(document.getElementById('container'));
	        var t1= [{
	            name: '手术次数',
	            type: 'bar',
	            barWidth:25,
	            data: series
	        }];
	        
	        var t2=['00','11','22'];
	        var t3=series2;
	        
	        var option = {
	            title: {
	                text: '手术占比报表'
	            },
	            tooltip: {},
	            legend: {
	                data:t2
	            },
	            xAxis: {
	                data:t3
	            },
	            yAxis: {},
	            series: t1
	        };
	        myChart.setOption(option);
     },"json");
});

</script>
<script type="text/javascript">
function search(){
	var year =$("#year").val();
	$.get("patMasterIndex/ReportOperationNum2.do",{year:year},function(data){
		var series=[];
		var series2=[];
		for(var i=0;i<data.info.length;i++){
			series.push(data.info[i].operation_all_num);
			series2.push(data.info[i].operation_name);
		}
		  var myChart = echarts.init(document.getElementById('container'));
	        var t1= [{
	            name: '手术次数',
	            type: 'bar',
	            barWidth:25,
	            data: series
	        }];
	        
	        var t2=['00','11','22'];
	        var t3=series2;
	        
	        var option = {
	            title: {
	                text: '手术占比报表'
	            },
	            tooltip: {},
	            legend: {
	                data:t2
	            },
	            xAxis: {
	                data:t3
	            },
	            yAxis: {},
	            series: t1
	        };
	        myChart.setOption(option);
     },"json");
}
</script>
  		</div>
	</div>
</div>
<iframe src="patMasterIndex/listpage2.do" width="90%" height="400px" frameborder="no" border="0"  marginwidth="0" marginheight="0"  allowtransparency="yes"></iframe>
</body>
</html>