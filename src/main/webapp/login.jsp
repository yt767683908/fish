<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/fish/img/favicon.ico">
<link rel="stylesheet" href="/fish/css/login.css" />
<link rel="stylesheet"
	href="/fish/webFrame/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="/fish/js/jquery-3.3.1.js"
	type="text/javascript" charset="UTF-8"></script>
<script type="text/javascript"
	src="/fish/webFrame/bootstrap/js/bootstrap.min.js" charset="UTF-8"></script>
</head>
<body>
	<form class="form-signin">
		<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
		<label for="inputEmail" class="sr-only">Account</label> <input
			type="text" id="username" name="username" class="form-control"
			placeholder="手机号/账号" required autofocus><br /> <label
			for="inputPassword" class="sr-only">Password</label> <input
			type="password" name="password" id="password" class="form-control"
			placeholder="请输入密码" required>
		<p id="err" style="color: red; text-align: center; width: 100%; height: 14px;margin-top: 5px;"></p>
		<button class="btn btn-lg btn-primary btn-block" id="login"
			type="button">登 陆</button>
		<p style="text-align: center; margin-top: 10px;">
			还没有账户？点击<a href="register.html">注册</a>
		</p>
		<p><a href="#" target="_blank"><img alt="QQ" src="/fish/img/bt_blue_76X24.png"></a>
		<a href="#" target="_blank"><img alt="WX" src="/fish/img/icon24_wx_button.png"></a>
		</p>
		<p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
	</form>
</body>
<script type='text/javascript'>
	$(document).ready(function() {
		$("#username,#password").keyup(function(event) {
			if (event.keyCode == 13) {
				$('#login').click();
			}

		});
		$("#login").click(function() {
			var account = $("#username").val();
			var pwd = $("#password").val();
			if (!account || !pwd) {
				$("#err").css("display", "inline-block");
				$("#err").text("请输入用户名或密码!");
				return false;
			} else {
				$.ajax({
					url : "api/user/userLogin",
					type : "post",
					dataType : "json",
					data : {
						username : account,
						password : pwd
					},
					success : function(data) {
						if (data.status == 0) {
							window.location.href = "home.html";
						} else {
							$("#err").html(data.msg);
						}
					}
				});
			}
		});
	});
</script>
</html>