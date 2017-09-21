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
<script type="text/javascript" src="static/js/highcharts.js"></script>
</head> 

<script type="text/javascript">
$(function () {
	var year =$("#year").val();
	$.get("patMasterIndex/reportDiseaseNum.do",{year:year},function(data){
		 $('#container').highcharts({
		        title: {
		            text: '长海',
		            x: -20 //center
		        },
		        subtitle: {
		            text: '月度报表',
		            x: -20
		        },
		        xAxis: {
		            categories: ['1月', '2月', '3月', '4月', '5月', '6月',
		                '7月', '8月', '9月', '10月', '11月', '12月']
		        },
		        yAxis: {
		            title: {
		                text: '总数'
		            },
		            plotLines: [{
		                value: 0,
		                width: 1,
		                color: '#808080'
		            }]
		        },
		        tooltip: {
		            valueSuffix: '次'
		        },
		        legend: {
		            layout: 'vertical',
		            align: 'right',
		            verticalAlign: 'middle',
		            borderWidth: 0
		        },
		        series: [{
		            name: data.title[0],
		            data:[data.data_a.直肠癌[0],data.data_a.直肠癌[1],
		                  data.data_a.直肠癌[2],data.data_a.直肠癌[3],
		                  data.data_a.直肠癌[4],data.data_a.直肠癌[5],
		                  data.data_a.直肠癌[6],data.data_a.直肠癌[7],
		                  data.data_a.直肠癌[8],data.data_a.直肠癌[9],
		                  data.data_a.直肠癌[10],data.data_a.直肠癌[11]]
		        }, {
		        	name: data.title[1],
		            data:[data.data_a.结肠癌[0],data.data_a.结肠癌[1],
		                  data.data_a.结肠癌[2],data.data_a.结肠癌[3],
		                  data.data_a.结肠癌[4],data.data_a.结肠癌[5],
		                  data.data_a.结肠癌[6],data.data_a.结肠癌[7],
		                  data.data_a.结肠癌[8],data.data_a.结肠癌[9],
		                  data.data_a.结肠癌[10],data.data_a.结肠癌[11]]
		        }, {
		        	name: data.title[2],
		            data:[data.data_a.肛窦炎[0],data.data_a.肛窦炎[1],
		                  data.data_a.肛窦炎[2],data.data_a.肛窦炎[3],
		                  data.data_a.肛窦炎[4],data.data_a.肛窦炎[5],
		                  data.data_a.肛窦炎[6],data.data_a.肛窦炎[7],
		                  data.data_a.肛窦炎[8],data.data_a.肛窦炎[9],
		                  data.data_a.肛窦炎[10],data.data_a.肛窦炎[11]]
		        }, {
		        	name: data.title[3],
		            data:[data.data_a.肛门湿疹[0],data.data_a.肛门湿疹[1],
		                  data.data_a.肛门湿疹[2],data.data_a.肛门湿疹[3],
		                  data.data_a.肛门湿疹[4],data.data_a.肛门湿疹[5],
		                  data.data_a.肛门湿疹[6],data.data_a.肛门湿疹[7],
		                  data.data_a.肛门湿疹[8],data.data_a.肛门湿疹[9],
		                  data.data_a.肛门湿疹[10],data.data_a.肛门湿疹[11]]
		        },
		        {
		        	name: data.title[4],
		            data:[data.data_a.肠息肉[0],data.data_a.肠息肉[1],
		                  data.data_a.肠息肉[2],data.data_a.肠息肉[3],
		                  data.data_a.肠息肉[4],data.data_a.肠息肉[5],
		                  data.data_a.肠息肉[6],data.data_a.肠息肉[7],
		                  data.data_a.肠息肉[8],data.data_a.肠息肉[9],
		                  data.data_a.肠息肉[10],data.data_a.肠息肉[11]]
		        }
		        ]
		    });
		
		
		
     },"json");
});


function search(){
	var year =$("#year").val();
	$.get("patMasterIndex/reportDiseaseNum.do",{year:year},function(data){
		 $('#container').highcharts({
		        title: {
		            text: '长海',
		            x: -20 //center
		        },
		        subtitle: {
		            text: '月度报表',
		            x: -20
		        },
		        xAxis: {
		            categories: ['1月', '2月', '3月', '4月', '5月', '6月',
		                '7月', '8月', '9月', '10月', '11月', '12月']
		        },
		        yAxis: {
		            title: {
		                text: '总数'
		            },
		            plotLines: [{
		                value: 0,
		                width: 1,
		                color: '#808080'
		            }]
		        },
		        tooltip: {
		            valueSuffix: '次'
		        },
		        legend: {
		            layout: 'vertical',
		            align: 'right',
		            verticalAlign: 'middle',
		            borderWidth: 0
		        },
		        series: [{
		            name: data.title[0],
		            data:[data.data_a.直肠癌[0],data.data_a.直肠癌[1],
		                  data.data_a.直肠癌[2],data.data_a.直肠癌[3],
		                  data.data_a.直肠癌[4],data.data_a.直肠癌[5],
		                  data.data_a.直肠癌[6],data.data_a.直肠癌[7],
		                  data.data_a.直肠癌[8],data.data_a.直肠癌[9],
		                  data.data_a.直肠癌[10],data.data_a.直肠癌[11]]
		        }, {
		        	name: data.title[1],
		            data:[data.data_a.结肠癌[0],data.data_a.结肠癌[1],
		                  data.data_a.结肠癌[2],data.data_a.结肠癌[3],
		                  data.data_a.结肠癌[4],data.data_a.结肠癌[5],
		                  data.data_a.结肠癌[6],data.data_a.结肠癌[7],
		                  data.data_a.结肠癌[8],data.data_a.结肠癌[9],
		                  data.data_a.结肠癌[10],data.data_a.结肠癌[11]]
		        }, {
		        	name: data.title[2],
		            data:[data.data_a.肛窦炎[0],data.data_a.肛窦炎[1],
		                  data.data_a.肛窦炎[2],data.data_a.肛窦炎[3],
		                  data.data_a.肛窦炎[4],data.data_a.肛窦炎[5],
		                  data.data_a.肛窦炎[6],data.data_a.肛窦炎[7],
		                  data.data_a.肛窦炎[8],data.data_a.肛窦炎[9],
		                  data.data_a.肛窦炎[10],data.data_a.肛窦炎[11]]
		        }, {
		        	name: data.title[3],
		            data:[data.data_a.肛门湿疹[0],data.data_a.肛门湿疹[1],
		                  data.data_a.肛门湿疹[2],data.data_a.肛门湿疹[3],
		                  data.data_a.肛门湿疹[4],data.data_a.肛门湿疹[5],
		                  data.data_a.肛门湿疹[6],data.data_a.肛门湿疹[7],
		                  data.data_a.肛门湿疹[8],data.data_a.肛门湿疹[9],
		                  data.data_a.肛门湿疹[10],data.data_a.肛门湿疹[11]]
		        },
		        {
		        	name: data.title[4],
		            data:[data.data_a.肠息肉[0],data.data_a.肠息肉[1],
		                  data.data_a.肠息肉[2],data.data_a.肠息肉[3],
		                  data.data_a.肠息肉[4],data.data_a.肠息肉[5],
		                  data.data_a.肠息肉[6],data.data_a.肠息肉[7],
		                  data.data_a.肠息肉[8],data.data_a.肠息肉[9],
		                  data.data_a.肠息肉[10],data.data_a.肠息肉[11]]
		        }
		        ]
		    });
		
		
		
    },"json");
}


</script>
<body>
	<div class="container-fluid" id="main-container">
		<div id="page-content" class="clearfix">			
				选择年份：<select id="year" onchange="search()">
				<option value="2016">2016</option>
				<option value="2015">2015</option>
				<option value="2014">2014</option>
				</select>
			    <div class="row-fluid">
			 <div id="container" style="min-width: 80%; height: 300px; margin: 0 auto;float: left;"></div>
  		<iframe src="patMasterIndex/listpage8.do" width="80%" height="400px" frameborder="no" border="0"  marginwidth="0" marginheight="0"  allowtransparency="yes"></iframe>
  		</div>
	</div>
</div>
</body>
</html>