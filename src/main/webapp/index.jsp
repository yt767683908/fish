<html>
<head>
	<script src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript">
	alert();
		$.ajax({
			url:'loginController/showPerson',
			type:'post',
			success:function(data){
				console.log(data);
			}
		})
	</script>
</head>
<body>
<h2>Hello World!1111</h2>
</body>
</html>
