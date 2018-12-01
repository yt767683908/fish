<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--
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

</html>--%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
	<style type="text/css">
		.talk_con{
			width:600px;
			height:500px;
			border:1px solid #666;
			margin:50px auto 0;
			background:#f9f9f9;
		}
		.talk_show{
			width:580px;
			height:420px;
			border:1px solid #666;
			background:#fff;
			margin:10px auto 0;
			overflow:auto;
		}
		.talk_input{
			width:580px;
			margin:10px auto 0;
		}
		.whotalk{
			width:80px;
			height:30px;
			float:left;
			outline:none;
		}
		.talk_word{
			width:420px;
			height:26px;
			padding:0px;
			float:left;
			margin-left:10px;
			outline:none;
			text-indent:10px;
		}
		.talk_sub{
			width:56px;
			height:30px;
			float:left;
			margin-left:10px;
		}
		.atalk{
			margin:10px;
		}
		.atalk span{
			display:inline-block;
			background:#0181cc;
			border-radius:10px;
			color:#fff;
			padding:5px 10px;
		}
		.btalk{
			margin:10px;
			text-align:right;
		}
		.btalk span{
			display:inline-block;
			background:#ef8201;
			border-radius:10px;
			color:#fff;
			padding:5px 10px;
		}
	</style>
	<script type="text/javascript">
        //
        window.onload = function(){
            var Words = document.getElementById("words");
            var Who = document.getElementById("who");
            var TalkWords = document.getElementById("talkwords");
            var TalkSub = document.getElementById("talksub");


            TalkSub.onclick = function(){
                //定义空字符串
                var str = "";
                if(TalkWords.value == ""){
                    // 消息为空时弹窗
                    alert("消息不能为空");
                    return;
                }
                if(Who.value == 0){
                    //如果Who.value为0n那么是 A说
                    str = '<div class="atalk"><span>A说 :' + TalkWords.value +'</span></div>';
                }
                else{
                    str = '<div class="btalk"><span>B说 :' + TalkWords.value +'</span></div>' ;
                }
            // 将之前的内容与要发的内容拼接好 提交
                Words.innerHTML = Words.innerHTML + str;
            }

        }


	</script>
</head>
<body>
<div class="talk_con">
	<div class="talk_show" id="words">
		<div class="atalk"><span id="asay">A说：吃饭了吗？</span></div>
		<div class="btalk"><span id="bsay">B说：还没呢，你呢？</span></div>
	</div>
	<div class="talk_input">
		<select class="whotalk" id="who">
			<option value="0">A说：</option>
			<option value="1">B说：</option>
		</select>
		<input type="text" class="talk_word" id="talkwords">
		<input type="button" value="发送" class="talk_sub" id="talksub">
	</div>
</div>
</body>
</html>