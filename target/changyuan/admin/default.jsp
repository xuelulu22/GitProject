<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags' %>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- jsp文件头和头部 -->
<%@ include file="top.jsp"%>
</head>
<script type="text/javascript">
	function hasU(){
		$.ajax({
			type: "post",
			url: 'sfsfsfs.do',
			dataType:'json',
			cache: false,
			success: function(data){
				 
			}
		});
	}
</script>
<body>
	<div>
		欢迎
		<span><a onclick="hasU();"
			class="flip-link btn btn-info" id="to-recover">按钮权限</a>
		</span>
		
		<sec:authorize access="hasRole('aaa.do')">
			This content will only be visible to users who have    
		</sec:authorize> 
	</div>
</body>
</html>
