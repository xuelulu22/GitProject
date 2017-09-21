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
    <div id="main" style="width:  45%;height:400px;float: left;"></div>
     <script type="text/javascript">
        var myChart = echarts.init(document.getElementById('main'));
        var t1= [{
            name: '00',
            type: 'bar',
            data: [5, 12, 14, 32, 45, 78]
        },{
            name: '11',
            type: 'bar',
            data: [9, 20, 36, 43, 35, 63]
        }];
        
        var t2=['00','11','22'];
        var t3=["a","b","c","d","e","f"];
        
        var option = {
            title: {
                text: '测试柱状图'
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
    </script>
     <div id="main2" style="width: 45%;height:400px;float: right;clear: right;"></div>
     <script type="text/javascript">
        var myChart2 = echarts.init(document.getElementById('main2'));
       var option2 = {
        	    title : {
        	        text: '测试饼图',
        	        subtext: '1111111111111111111',
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
        	            name: '22222222222',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'a'},
        	                {value:310, name:'b'},
        	                {value:234, name:'c'},
        	                {value:135, name:'d'},
        	                {value:1548, name:'e'}
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
        myChart2.setOption(option2);
    </script>
      <div id="main3" style="width: 45%;height:400px;float: left;"></div>
     <script type="text/javascript">
        var myChart3 = echarts.init(document.getElementById('main3'));
       var option3 = {
        	    title: {
        	        text: '堆叠区域图'
        	    },
        	    tooltip : {
        	        trigger: 'axis'
        	    },
        	    legend: {
        	        data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
        	    },
        	    toolbox: {
        	        feature: {
        	            saveAsImage: {}
        	        }
        	    },
        	    grid: {
        	        left: '3%',
        	        right: '4%',
        	        bottom: '3%',
        	        containLabel: true
        	    },
        	    xAxis : [
        	        {
        	            type : 'category',
        	            boundaryGap : false,
        	            data : ['周一','周二','周三','周四','周五','周六','周日']
        	        }
        	    ],
        	    yAxis : [
        	        {
        	            type : 'value'
        	        }
        	    ],
        	    series : [
        	        {
        	            name:'邮件营销',
        	            type:'line',
        	            stack: '总量',
        	            areaStyle: {normal: {}},
        	            data:[120, 132, 101, 134, 90, 230, 210]
        	        },
        	        {
        	            name:'联盟广告',
        	            type:'line',
        	            stack: '总量',
        	            areaStyle: {normal: {}},
        	            data:[220, 182, 191, 234, 290, 330, 310]
        	        },
        	        {
        	            name:'视频广告',
        	            type:'line',
        	            stack: '总量',
        	            areaStyle: {normal: {}},
        	            data:[150, 232, 201, 154, 190, 330, 410]
        	        },
        	        {
        	            name:'直接访问',
        	            type:'line',
        	            stack: '总量',
        	            areaStyle: {normal: {}},
        	            data:[320, 332, 301, 334, 390, 330, 320]
        	        },
        	        {
        	            name:'搜索引擎',
        	            type:'line',
        	            stack: '总量',
        	            label: {
        	                normal: {
        	                    show: true,
        	                    position: 'top'
        	                }
        	            },
        	            areaStyle: {normal: {}},
        	            data:[820, 932, 901, 934, 1290, 1330, 1320]
        	        }
        	    ]
        	};

        myChart3.setOption(option3);
    </script>
    
        <div id="main4" style="width: 45%;height:400px;float: right;"></div>
     <script type="text/javascript">
        var myChart4 = echarts.init(document.getElementById('main4'));
        var option4 = {
        	    title: {
        	        text: 'Customized Pie',
        	        left: 'center',
        	        top: 20,
        	        textStyle: {
        	            color: '#ccc'
        	        }
        	    },

        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },

        	    visualMap: {
        	        show: false,
        	        min: 80,
        	        max: 600,
        	        inRange: {
        	            colorLightness: [0, 1]
        	        }
        	    },
        	    series : [
        	        {
        	            name:'访问来源',
        	            type:'pie',
        	            radius : '55%',
        	            center: ['50%', '50%'],
        	            data:[
        	                {value:335, name:'直接访问'},
        	                {value:310, name:'邮件营销'},
        	                {value:274, name:'联盟广告'},
        	                {value:235, name:'视频广告'},
        	                {value:400, name:'搜索引擎'}
        	            ].sort(function (a, b) { return a.value - b.value}),
        	            roseType: 'angle',
        	            label: {
        	                normal: {
        	                    textStyle: {
        	                        color: 'rgba(255, 255, 255, 0.3)'
        	                    }
        	                }
        	            },
        	            labelLine: {
        	                normal: {
        	                    lineStyle: {
        	                        color: 'rgba(255, 255, 255, 0.3)'
        	                    },
        	                    smooth: 0.2,
        	                    length: 10,
        	                    length2: 20
        	                }
        	            },
        	            itemStyle: {
        	                normal: {
        	                    color: '#c23531',
        	                    shadowBlur: 200,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }
        	    ]
        	};
        myChart4.setOption(option4);
    </script>
</body>
</html>