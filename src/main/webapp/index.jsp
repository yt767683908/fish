<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
<head>
	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		$.ajax({
			url:'api/user/showPerson',
			type:'post',
			data:{data1:"哈哈",data2:"嘻嘻"},
			async:true,
			dataType:'json',
			success:function(data){
				console.log(data);
			}
		})
	</script>
</head>
<body>
<h2>Hello World!1111http://114.221.10.141</h2>
</body>
</html>
