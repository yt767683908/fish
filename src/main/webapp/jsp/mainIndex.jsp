<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>用户中心</title>
<script type="text/javascript">
	var userName = '${userInfo.username}';
	var userRealName = '${userInfo.realname}';
</script>
<jsp:include page="../javascript.jsp"></jsp:include>
</head>
<body>
	欢迎您！
	<span id="userRealName"></span>;
	<a href="/fish/api/user/quit">退出登陆</a>
	<table class="table table-hover" style="width: 100%;">
		<caption>响应式表格布局</caption>
		<thead>
			<tr>
				<th>账户</th>
				<th>用户名</th>
				<th>姓名</th>
				<th>手机号</th>
				<th>邮箱</th>
			</tr>
		</thead>
		<tbody id="userBody">

		</tbody>
	</table>
</body>
<script type="text/javascript">
	$(function() {
		var name = userRealName;
		$("#userRealName").html(name);
		$.ajax({
			url : '/fish/api/user/showPerson',
			type : 'post',
			data : {
				data1 : "哈哈",
				data2 : "嘻嘻"
			},
			async : false,
			dataType : 'json',
			success : function(data) {
				console.log(data);
				var html = "";
				for (var i = 0; i < data.length; i++) {
					html += '<tr>' + '<td>' + data[i].user_id + '</td>'
							+ '<td>' + data[i].username + '</td>' + '<td>'
							+ data[i].realname + '</td>' + '<td>'
							+ data[i].phone + '</td>' + '<td>' + data[i].email
							+ '</td>' + '</tr>';
				}
				$("#userBody").html(html);
			}
		})
	})
</script>
</html>