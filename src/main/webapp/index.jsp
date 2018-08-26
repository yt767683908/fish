<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>鱼聊-首页</title>
<jsp:include page="/javascript.jsp"></jsp:include>
<style>
</style>
</head>
<body>
	<div class="layui-carousel" id="test10" style="margin: auto;">
		<div carousel-item="">
			<div>
				<img src="/fish/img/bg-1.jpg">
			</div>
			<div>
				<img src="/fish/img/bg-5.jpg">
			</div>
			<div>
				<img src="/fish/img/register-bg.jpg">
			</div>
			<div>
				<img src="/fish/img/bg-1.jpg">
			</div>
			<div>
				<img src="/fish/img/bg-5.jpg">
			</div>
			<div>
				<img src="/fish/img/register-bg.jpg">
			</div>
			<div>
				<img src="/fish/img/bg-1.jpg">
			</div>
		</div>
	</div>
	<script>
		layui.use([ 'carousel', 'form' ],
				function() {
					var carousel = layui.carousel, form = layui.form;
					//图片轮播
					carousel.render({
						elem : '#test10',
						width : '778px',
						height : '440px',
						interval : 5000
					});
					var $ = layui.$, active = {
						set : function(othis) {
							var THIS = 'layui-bg-normal', key = othis
									.data('key'), options = {};

							othis.css('background-color', '#5FB878').siblings()
									.removeAttr('style');
							options[key] = othis.data('value');
							ins3.reload(options);
						}
					};
				});
	</script>
</body>
</html>
