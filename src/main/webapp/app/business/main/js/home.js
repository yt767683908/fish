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
				html += '<tr>' + '<td>' + data[i].userid + '</td>' + '<td>'
						+ data[i].username + '</td>' + '<td>'
						+ data[i].realname + '</td>' + '<td>' + data[i].phone
						+ '</td>' + '<td>' + data[i].email + '</td>' + '</tr>';
			}
			$("#userBody").html(html);
		}
	})
})