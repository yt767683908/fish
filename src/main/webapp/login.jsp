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
<link rel="stylesheet" href="css/login.css" />
</head>
<body>
	<div id="sky"></div>
	<div id="head"></div>
	<div id="middle">
		<ul style="text-align: center;">
			<li style="font-size: 48px">程序员管理系统</li>
			<li><input class="name" name="username" placeholder="请输入用户名"></li>
			<li><input type="password" name="password" class="pwd"
				placeholder="请输入密码"></li>
			<li><button id="login">立即登录</button></li>
			<li><span id="err" style="display: inline-block;"></span></li>
		</ul>
	</div>
	<div id="footer"></div>
	<div id="cloud"></div>
	<script src="js/jquery-3.3.1.js" type="text/javascript" charset="UTF-8"></script>
	<script type='text/javascript'>
		$(document).ready(function() {
			$(".name,.pwd,#valid").keyup(function(event) {
				if (event.keyCode == 13) {
					$('#login').click();
				}

			});
			$("#login").click(function() {
				var account = $(".name").val();
				var pwd = $(".pwd").val();
				if (!account || !pwd) {
					$("#err").css("display", "inline-block");
					$("#err").text("请输入用户名或密码");
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
							console.log(data);
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
</body>
</html>