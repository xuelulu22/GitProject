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
			 <div id="container" style="width:500px; height: 250px; margin: 0 auto;float: left;"></div>
			 <script type="text/javascript">
$(function () {
	var year =$("#year").val();
	$.get("patMasterIndex/ReportTreatment2.do",{year:year},function(data){
		var series=[];
		var series2=[];
		for(var i=0;i<data.info.length;i++){
			series.push(data.info[i].count);
			series2.push(data.info[i].disease_name);
		}
		  var myChart = echarts.init(document.getElementById('container'));
	        var t1= [{
	            name: '疾病数',
	            type: 'bar',
	            barWidth:25,
	            data: series
	        }];
	        
	        var t2=['00','11','22'];
	        var t3=series2;
	        
	        var option = {
	            title: {
	                text: '疾病占比'
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
	$.get("patMasterIndex/ReportTreatment2.do",{year:year},function(data){
		var series=[];
		var series2=[];
		for(var i=0;i<data.info.length;i++){
			series.push(data.info[i].count);
			series2.push(data.info[i].disease_name);
		}
		  var myChart = echarts.init(document.getElementById('container'));
	        var t1= [{
	            name: '疾病数',
	            type: 'bar',
	            barWidth:25,
	            data: series
	        }];
	        
	        var t2=['00','11','22'];
	        var t3=series2;
	        
	        var option = {
	            title: {
	                text: '疾病占比'
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
	
	
	
	
	
	
	var year2 =$("#year").val();
	$.get("patMasterIndex/ReportTreatment2.do",{year:year2},function(data){
		
		var series2=['化疗次数','放疗次数','手术次数','靶向治疗次数'];
		series2.push('化疗次数');
		series2.push('放疗次数');
		series2.push('手术次数');
		series2.push('靶向治疗次数');
		
		 var myChart = echarts.init(document.getElementById('container2'));
	       var option = {
	        	    title : {
	        	        text: '治疗放疗手术靶向占比',
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
	        	        data: series2
	        	    },
	        	    series : [
	        	        {
	        	            name: '治疗放疗手术靶向占比',
	        	            type: 'pie',
	        	            radius : '55%',
	        	            center: ['50%', '60%'],
	        	            data:[
	        	                {value:data.info2[0].count2,name:'化疗次数'},
	        	                {value:data.info2[0].count3,name:'放疗次数'},
	        	                {value:data.info2[0].count4,name:'手术次数'},
	        	                {value:data.info2[0].count5,name:'靶向治疗次数'}
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
<div id="container2" style="width:500px; height: 250px; margin: 0 auto;float: right;"></div>
<script type="text/javascript">
$(function () {
	var year =$("#year").val();
	$.get("patMasterIndex/ReportTreatment2.do",{year:year},function(data){
		
		var series=['化疗次数','放疗次数','手术次数','靶向治疗次数'];
		series.push('化疗次数');
		series.push('放疗次数');
		series.push('手术次数');
		series.push('靶向治疗次数');
		
		 var myChart = echarts.init(document.getElementById('container2'));
	       var option = {
	        	    title : {
	        	        text: '治疗放疗手术靶向占比',
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
	        	        data: series
	        	    },
	        	    series : [
	        	        {
	        	            name: '治疗放疗手术靶向占比',
	        	            type: 'pie',
	        	            radius : '55%',
	        	            center: ['50%', '60%'],
	        	            data:[
	        	                {value:data.info2[0].count2,name:'化疗次数'},
	        	                {value:data.info2[0].count3,name:'放疗次数'},
	        	                {value:data.info2[0].count4,name:'手术次数'},
	        	                {value:data.info2[0].count5,name:'靶向治疗次数'}
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
<iframe src="patMasterIndex/listpage6.do" width="80%" height="400px" frameborder="no" border="0"  marginwidth="0" marginheight="0"  allowtransparency="yes"></iframe>
  		</div>
	</div>
</div>
</body>
</html>