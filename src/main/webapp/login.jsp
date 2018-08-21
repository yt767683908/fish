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
<jsp:include page="javascript.jsp"></jsp:include>
</head>
<body
	style="width: 100%; height: 100%; background: url('img/bg-5.jpg') no-repeat; background-size: cover;">
	<h1 style="text-align: center; margin-top: 80px;">用户登陆</h1>
	<div style="width: 300px; margin: 150px auto;">
		<form class="bs-example bs-example-form" role="form">
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-people_fill"></i></span><input type="text"
					class="form-control" id="username" name="username"
					placeholder="请输入账户" />
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-lock_fill"></i></span> <input type="password"
					class="form-control" name="password" id="password"
					placeholder="请输入密码" />
			</div>
			<br>
			<p id="err" style="color: red; text-align: center; width: 100%;"></p>
			<div style="margin: auto; width: 180px; height: 34px;">
				<button type="reset" class="btn">重置</button>
				<button type="button" id="login" class="btn btn-primary" style="margin-left: 50px;">登陆</button>
			</div>
			<br>
			<p style="text-align: center;">
				还没有账户？点击<a href="register.html">注册</a>
			</p>
		</form>
	</div>
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