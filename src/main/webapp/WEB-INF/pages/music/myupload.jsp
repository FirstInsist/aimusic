<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>音乐管理页面</title>
		<style type="text/css">
	  		*{margin:0;padding:0;}
	  		body{font-size:14px;font-family:"微软雅黑";}
	  		
	  		.pbox{padding:20px 0;width:100%;}
	  		.pbox .progbox{height:70px;padding:30px;width:340px;margin: 0 auto;background: #E7E7E7;}
	  		.pbox .msg{height:30px;line-height:30px;width:340px;}
	  		.pbox .progressBox{height:30px;float: left;width:340px;overflow: hidden;}
	  		.pbox .progress{height:30px;width:300px;}
	  		.pbox span.precent{float: left;}
	  		
	  		
	  		/*上传按钮*/
			.upbtn{background:#1F989B;padding:5px 14px;text-decoration:none;color:#fff;border-radius:4px;}
	   	</style>
	</head>
	<body>
		<div class="pbox">
	  		<div class="progbox">
	  			<div class="msg">当前正在上传：你好明天.mp3</div>
	  			<div class="progressBox">
	  				<!-- 这个是HTML5里面新增的标签， -->
			   	 	<progress class="progress" value="10" max="100"></progress>
			   	 	<span class="percent">10%</span>
	  			</div>
	   	 	</div>
	  	</div>
	  	
	  	<form action="${basePath}/upload" method="post" enctype="multipart/form-data">
	  		<input type="file" name="doc">
	  		<input type="submit" value="提交">
	  	</form>
	</body>
</html>

