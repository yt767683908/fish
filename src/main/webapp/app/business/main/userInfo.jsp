<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="/javascript.jsp"></jsp:include>
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 30px;">
		<legend>拖拽上传</legend>
	</fieldset>

	<div class="layui-upload-drag" id="test10">
		<i class="layui-icon"></i>
		<p>点击上传，或将文件拖拽到此处</p>
	</div>
<!-- 	<img alt="" src="/fish/api/file/showImage"> -->
	<script type="text/javascript">
	layui.use('upload', function(){
		  var $ = layui.jquery
		  ,upload = layui.upload;
		  
		  //普通图片上传
		  var uploadInst = upload.render({
		    elem: '#test1'
		    ,url: '/upload/'
		    ,before: function(obj){
		      //预读本地文件示例，不支持ie8
		      obj.preview(function(index, file, result){
		        $('#demo1').attr('src', result); //图片链接（base64）
		      });
		    }
		    ,done: function(res){
		      //如果上传失败
		      if(res.code > 0){
		        return layer.msg('上传失败');
		      }
		      //上传成功
		    }
		    ,error: function(){
		      //演示失败状态，并实现重传
		      var demoText = $('#demoText');
		      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
		      demoText.find('.demo-reload').on('click', function(){
		        uploadInst.upload();
		      });
		    }
		  });
		  
		  //多图片上传
		  upload.render({
		    elem: '#test2'
		    ,url: '/upload/'
		    ,multiple: true
		    ,before: function(obj){
		      //预读本地文件示例，不支持ie8
		      obj.preview(function(index, file, result){
		        $('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
		      });
		    }
		    ,done: function(res){
		      //上传完毕
		    }
		  });
		  
		  //指定允许上传的文件类型
		  upload.render({
		    elem: '#test3'
		    ,url: '/upload/'
		    ,accept: 'file' //普通文件
		    ,done: function(res){
		      console.log(res)
		    }
		  });
		  upload.render({ //允许上传的文件后缀
		    elem: '#test4'
		    ,url: '/upload/'
		    ,accept: 'file' //普通文件
		    ,exts: 'zip|rar|7z' //只允许上传压缩文件
		    ,done: function(res){
		      console.log(res)
		    }
		  });
		  upload.render({
		    elem: '#test5'
		    ,url: '/upload/'
		    ,accept: 'video' //视频
		    ,done: function(res){
		      console.log(res)
		    }
		  });



		  
		  //拖拽上传
		  upload.render({
		    elem: '#test10'
		    ,url: '/fish/api/file/upload'
		    ,size: 4096 //限制文件大小，单位 KB
		    ,done: function(res){
		      console.log(res)
		    }
		  });
		  

		  
		  //绑定原始文件域
		  upload.render({
		    elem: '#test20'
		    ,url: '/upload/'
		    ,done: function(res){
		      console.log(res)
		    }
		  });
		  
		});
	</script>
</body>
</html>