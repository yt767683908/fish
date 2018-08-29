<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test WebSocket</title>
<jsp:include page="/javascript.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		var url = "ws://localhost:8080/fish/api/websocket";
		var ws = "";
		var message = {
			"id" : "",
			"msg" : "",
			"form" : "",
			"to" : ""
		};
		connection();
		$(".send-btn").click(function() {//send message
			message.to = $(".to-user").val();
			message.msg = $(".msg-context").val();
			$(".msg-context").val("");
			ws.send(JSON.stringify(message));
			showMessage("我:" + message.msg);
			message.msg = "";

		});

		function showMessage(msg) {
			$(".show-message").append(msg + "<br/>");

		}
		function connection() {
			ws = new WebSocket(url);
			console.log("connection.......");
			ws.onmessage = function(e) {
				var json = eval('(' + e.data.toString() + ')');
				showMessage(json.from + ":" + json.msg);
			}
			ws.onclose = function() {
				showMessage("close");
			}
			ws.onerror = function(e) {
				showMessage("error");
			}
			ws.onopen = function() {
				showMessage("链接成功")
				message.id = userId;
				message.msg = "newUser";
				console.log(JSON.stringify(message));
				ws.send(JSON.stringify(message));
				message.msg = "";

			}
		}
	});
</script>
</head>
<body>
	<div class="container">
		<div calss="item">
			<span>toUser:</span> <input type="text" class="to-user">
		</div>
		<div class="show-message"></div>
		<div calss="item">
			<span>内容:</span>
			<textarea class="msg-context"></textarea>
		</div>
		<div>
			<button class="send-btn">send</button>
		</div>
	</div>
</body>

</html>