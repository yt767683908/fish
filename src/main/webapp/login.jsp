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
<link rel="stylesheet" href="/fish/css/login.css" />
<jsp:include page="javascript.jsp"></jsp:include>
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
							window.location.href = "jsp/mainIndex.jsp";
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