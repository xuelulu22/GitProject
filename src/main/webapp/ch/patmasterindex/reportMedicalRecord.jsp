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
			 <div id="container" style="min-width: 30%; height: 300px; margin: 0 auto;float: left;"></div>
			 <script type="text/javascript">
$(function () {
	var year =$("#year").val();
	$.get("patMasterIndex/reportMedicalRecord2.do",{year:year},function(data){
		 var myChart = echarts.init(document.getElementById('container'));
	       var option = {
	        	    title : {
	        	        text: '医生所属病历占比报表',
	        	        subtext: '',
	        	        x:'center'
	        	    },
	        	    tooltip : {
	        	        trigger: 'item',
	        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	        	    },
	        	    legend: {
	        	        orient: 'vertical',
	        	        left: 'left',
	        	        data: ['a','b','c','d','e']
	        	    },
	        	    series : [
	        	        {
	        	            name: '病历占比',
	        	            type: 'pie',
	        	            radius : '55%',
	        	            center: ['50%', '60%'],
	        	            data:[
	        	                {value:data.total[0].medical_num, name:data.total[0].doctor_name},
	        	                {value:data.total[1].medical_num, name:data.total[1].doctor_name},
	        	                {value:data.total[2].medical_num, name:data.total[2].doctor_name},
	        	                {value:data.total[3].medical_num, name:data.total[3].doctor_name}
	        	            ],
	        	            itemStyle: {
	        	                emphasis: {
	        	                    shadowBlur: 10,
	        	                    shadowOffsetX: 0,
	        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	        	                }
	        	            }
	        	        }
	        	    ]
	        	};
	        myChart.setOption(option);

     },"json");
});

</script>
<script type="text/javascript">
function search(){
	var year =$("#year").val();
	$.get("patMasterIndex/reportMedicalRecord2.do",{year:year},function(data){
		 var myChart = echarts.init(document.getElementById('container'));
	       var option = {
	        	    title : {
	        	        text: '医生所属病历占比报表',
	        	        subtext: '',
	        	        x:'center'
	        	    },
	        	    tooltip : {
	        	        trigger: 'item',
	        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	        	    },
	        	    legend: {
	        	        orient: 'vertical',
	        	        left: 'left',
	        	        data: ['a','b','c','d','e']
	        	    },
	        	    series : [
	        	        {
	        	            name: '病历占比',
	        	            type: 'pie',
	        	            radius : '55%',
	        	            center: ['50%', '60%'],
	        	            data:[
	        	                {value:data.total[0].medical_num, name:data.total[0].doctor_name},
	        	                {value:data.total[1].medical_num, name:data.total[1].doctor_name},
	        	                {value:data.total[2].medical_num, name:data.total[2].doctor_name},
	        	                {value:data.total[3].medical_num, name:data.total[3].doctor_name}
	        	            ],
	        	            itemStyle: {
	        	                emphasis: {
	        	                    shadowBlur: 10,
	        	                    shadowOffsetX: 0,
	        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	        	                }
	        	            }
	        	        }
	        	    ]
	        	};
	        myChart.setOption(option);

     },"json");
}
</script>
<iframe src="patMasterIndex/listpage.do" width="65%" height="400px" frameborder="no" border="0"  marginwidth="0" marginheight="0"  allowtransparency="yes"></iframe>
  		</div>
	</div>
</div>


</body>
</html>