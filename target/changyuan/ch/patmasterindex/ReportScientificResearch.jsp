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
			 <div id="container" style="width:400px; height: 250px; margin: 0 auto;float: left;"></div>
			 <div id="container2" style="width:400px; height: 250px; margin: 0 auto;float: left;"></div>
			 <script type="text/javascript">
			 $(function () {
					var year =$("#year").val();
					$.get("patMasterIndex/ReportScientificResearch2.do",{year:year},function(data){
						var t1=[];
						var t_name=[];
					for(var i=0;i<data.info.length;i++){
						t_name.push(data.info[i].doctor_name);
						var jj = {}; 
						jj.value=data.info[i].scientific_report_num;
						jj.name=data.info[i].doctor_name;
					t1.push(jj);
					}
					 var myChart = echarts.init(document.getElementById('container'));
				        option = {
				        		 title : {
					        	        text: '医生科研报告占比',
					        	        subtext: '',
					        	        x:'center'
					        	    },
				        	    tooltip: {
				        	        trigger: 'item',
				        	        formatter: "{a} <br/>{b}: {c} ({d}%)"
				        	    },
				        	    legend: {
				        	        orient: 'vertical',
				        	        x: 'left',
				        	        data:t_name
				        	    },
				        	    series: [
				        	        {
				        	            name:'科研报告',
				        	            type:'pie',
				        	            radius: ['50%', '70%'],
				        	            avoidLabelOverlap: false,
				        	            label: {
				        	                normal: {
				        	                    show: false,
				        	                    position: 'center'
				        	                },
				        	                emphasis: {
				        	                    show: true,
				        	                    textStyle: {
				        	                        fontSize: '30',
				        	                        fontWeight: 'bold'
				        	                    }
				        	                }
				        	            },
				        	            labelLine: {
				        	                normal: {
				        	                    show: false
				        	                }
				        	            },
				        	            data:t1
				        	        }
				        	    ]
				        	};
				        
				        myChart.setOption(option);
					        
					        
					        
					        
					        var t2=[];
					        var t_name2=[];
							for(var i=0;i<data.info2.length;i++){
								t_name2.push(data.info2[i].disease_name);
								var jjk = {}; 
								jjk.value=data.info2[i].sum1;
								jjk.name=data.info2[i].disease_name;
							t2.push(jjk);
							}
								 var myChart2 = echarts.init(document.getElementById('container2'));
								 option2 = {
						        		 title : {
							        	        text: '疾病科研报告占比',
							        	        subtext: '',
							        	        x:'center'
							        	    },
						        	    tooltip: {
						        	        trigger: 'item',
						        	        formatter: "{a} <br/>{b}: {c} ({d}%)"
						        	    },
						        	    legend: {
						        	        orient: 'vertical',
						        	        x: 'left',
						        	        data:t_name2
						        	    },
						        	    series: [
						        	        {
						        	            name:'科研报告',
						        	            type:'pie',
						        	            radius: ['50%', '70%'],
						        	            avoidLabelOverlap: false,
						        	            label: {
						        	                normal: {
						        	                    show: false,
						        	                    position: 'center'
						        	                },
						        	                emphasis: {
						        	                    show: true,
						        	                    textStyle: {
						        	                        fontSize: '30',
						        	                        fontWeight: 'bold'
						        	                    }
						        	                }
						        	            },
						        	            labelLine: {
						        	                normal: {
						        	                    show: false
						        	                }
						        	            },
						        	            data:t2
						        	        }
						        	    ]
						        	};
							        myChart2.setOption(option2);

					        
					        
				     },"json");
				});

</script>
<script type="text/javascript">
function search(){
	var year =$("#year").val();
	$.get("patMasterIndex/ReportScientificResearch2.do",{year:year},function(data){
		var t1=[];
		var t_name=[];
	for(var i=0;i<data.info.length;i++){
		t_name.push(data.info[i].doctor_name);
		var jj = {}; 
		jj.value=data.info[i].scientific_report_num;
		jj.name=data.info[i].doctor_name;
	t1.push(jj);
	}
	 var myChart = echarts.init(document.getElementById('container'));
        option = {
        	    tooltip: {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b}: {c} ({d}%)"
        	    },
        	    legend: {
        	        orient: 'vertical',
        	        x: 'left',
        	        data:t_name
        	    },
        	    series: [
        	        {
        	            name:'科研报告',
        	            type:'pie',
        	            radius: ['50%', '70%'],
        	            avoidLabelOverlap: false,
        	            label: {
        	                normal: {
        	                    show: false,
        	                    position: 'center'
        	                },
        	                emphasis: {
        	                    show: true,
        	                    textStyle: {
        	                        fontSize: '30',
        	                        fontWeight: 'bold'
        	                    }
        	                }
        	            },
        	            labelLine: {
        	                normal: {
        	                    show: false
        	                }
        	            },
        	            data:t1
        	        }
        	    ]
        	};
        
        myChart.setOption(option);
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
        var t2=[];
        var t_name2=[];
		for(var i=0;i<data.info2.length;i++){
			t_name2.push(data.info2[i].disease_name);
			var jjk = {}; 
			jjk.value=data.info2[i].sum1;
			jjk.name=data.info2[i].disease_name;
		t2.push(jjk);
		}
			 var myChart2 = echarts.init(document.getElementById('container2'));
			 option2 = {
	        		 title : {
		        	        text: '疾病科研报告占比',
		        	        subtext: '',
		        	        x:'center'
		        	    },
	        	    tooltip: {
	        	        trigger: 'item',
	        	        formatter: "{a} <br/>{b}: {c} ({d}%)"
	        	    },
	        	    legend: {
	        	        orient: 'vertical',
	        	        x: 'left',
	        	        data:t_name2
	        	    },
	        	    series: [
	        	        {
	        	            name:'科研报告',
	        	            type:'pie',
	        	            radius: ['50%', '70%'],
	        	            avoidLabelOverlap: false,
	        	            label: {
	        	                normal: {
	        	                    show: false,
	        	                    position: 'center'
	        	                },
	        	                emphasis: {
	        	                    show: true,
	        	                    textStyle: {
	        	                        fontSize: '30',
	        	                        fontWeight: 'bold'
	        	                    }
	        	                }
	        	            },
	        	            labelLine: {
	        	                normal: {
	        	                    show: false
	        	                }
	        	            },
	        	            data:t2
	        	        }
	        	    ]
	        	};
		        myChart2.setOption(option2);

	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
     },"json");
}
</script>

<iframe src="patMasterIndex/listpage7.do" width="80%" height="400px" frameborder="no" border="0"  marginwidth="0" marginheight="0"  allowtransparency="yes"></iframe>
  		</div>
	</div>
</div>
</body>
</html>