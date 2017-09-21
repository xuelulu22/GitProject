<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

<head>
<title></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="static/login/bootstrap.min.css" />
<link rel="stylesheet" href="static/login/css/camera.css" />
<link rel="stylesheet" href="static/login/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="static/login/matrix-login.css" />
<link href="static/login/font-awesome.css" rel="stylesheet" />
<script type="text/javascript" src="static/js/jquery-1.5.1.min.js"></script>
</head>
<body>
	<div
		style="width:100%;text-align: center;margin: 0 auto;position: absolute;">
		<div id="loginbox">
			<form action="" method="post" name="loginForm"
				id="loginForm">
				<div class="control-group normal_text">
					<h3>
						ChanghaiHospital
					</h3>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span>
							<i></i>
							</span><input type="text" name="login_name" id="login_name" value="" placeholder="请输入用户名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span>
							<i></i>
							</span><input type="password" name="password" id="password" placeholder="请输入密码" value="" />
						</div>
					</div>
				</div>
				<div class="form-actions">
					<div style="width:86%;padding-left:8%;">
						<span
							class="pull-right"><a onclick="login();"
							class="flip-link btn btn-info" id="to-recover">登录</a>
						</span>
					</div>
				</div>
			</form>

			<div class="controls">
				<div class="main_input_box">
					<font color="white"><span id="nameerr">Copyright</span></font>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	function login() {
		var loginName = $('#loginname').value;
		var password = $('#').value;
		//alert(loginType);
		if (loginName == "") {
			alert("请输入用户名！");
			loginForm.login_name.focus();
			return;
		} else if (password == "") {
			alert("请输入密码！");
			loginForm.password.focus();
			return;
		} else {
			loginForm.action = "j_spring_security_check";
			loginForm.submit();
		}
	}
	</script>

	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/jquery-1.7.2.js"></script>
</body>

</html>