<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>网站注册</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="/fish/css/login.css" />
<link rel="stylesheet" href="/fish/css/login.css" />
<link rel="stylesheet"
	href="/fish/webFrame/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="/fish/js/jquery-3.3.1.js"
	type="text/javascript" charset="UTF-8"></script>
<script type="text/javascript"
	src="/fish/webFrame/bootstrap/js/bootstrap.min.js" charset="UTF-8"></script>
</head>
<body>
	<!-- 	<h1 style="text-align: center;">用户注册</h1>
	<div style="width: 300px; margin: 150px auto;">
		<form class="bs-example bs-example-form" role="form" action="api/user/userRegister" method="post">
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-people_fill"></i></span><input type="text"
					class="form-control" name="username"  required="required"  placeholder="请输入用户名">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-lock_fill"></i></span> <input type="password"
					class="form-control" name="password" required="required"  placeholder="请输入密码">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-mobilephone_fill"></i></span> <input type="text"
					class="form-control" name="phone"  required="required"  placeholder="请输入手机号码">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-message_fill"></i></span> <input type="text"
					class="form-control" name="email" required="required"  placeholder="请输入邮箱">
			</div>
			<br>
			<div style="margin: auto; width: 82px; height: 34px;">
				<button type="submit" class="btn btn-primary">立即注册</button>
			</div>
			<br>
			<p style="text-align: center;">已有账户？点击<a href="login.html">登陆</a></p>
		</form>
	</div> -->
	<form class="form-signin" action="api/user/userRegister" method="post">
		<h1 class="h3 mb-3 font-weight-normal">用户注册</h1>
		<input type="text" name="username" required="required"
			placeholder="请输入用户名" class="form-control" autofocus="autofocus" /><br />
		<input type="password" class="form-control" name="password"
			required="required" placeholder="请输入密码" /><br /> <input type="text"
			class="form-control" name="phone" required="required"
			placeholder="请输入手机号码" /> <br /> <input type="text"
			class="form-control" name="email" required="required"
			placeholder="请输入邮箱" /><br />
		<button class="btn btn-lg btn-primary btn-block" type="submit">注
			册</button>
		<p style="text-align: center; margin-top: 10px;">
			已有账户？点击<a href="login.html">登陆</a>
		</p>
		<p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
	</form>
</body>
</html>