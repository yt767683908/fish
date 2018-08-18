<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>网站注册</title>
<jsp:include page="javascript.jsp"></jsp:include>
</head>
<body
	style="width: 100%; height: 100%; background: url('img/register-bg.jpg') no-repeat; background-size: cover;">
	<h1 style="text-align: center;">用户注册</h1>
	<div style="width: 400px; margin: 100px auto;">
		<form class="bs-example bs-example-form" role="form">
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-people_fill"></i></span><input type="text"
					class="form-control" placeholder="请输入账户">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-lock_fill"></i></span> <input type="password"
					class="form-control" placeholder="请输入密码">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-mobilephone_fill"></i></span> <input type="text"
					class="form-control" placeholder="请输入手机号码">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon"><i
					class="iconfont icon-message_fill"></i></span> <input type="text"
					class="form-control" placeholder="请输入邮箱">
			</div>
			<br>
			<div style="margin: auto; width: 54px; height: 34px;">
				<button type="button" class="btn btn-primary">注册</button>
			</div>
		</form>
	</div>
</body>
</html>