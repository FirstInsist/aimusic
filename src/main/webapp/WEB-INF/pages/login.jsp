<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>登录-爱音乐</title>
<meta name="keywords" content="keyword1,keyword2,keyword3">
<meta name="description" content="this is my page">
<meta name="content-type" content="text/html; charset=UTF-8">
<link href="${basePath}/css/index.css" rel="stylesheet" type="text/css">
<link href="${basePath}/css/common.css" rel="stylesheet" type="text/css">
<style>
    .template{width:100%;}
    .template .container{position:relative;left:50%;background:#FFF;box-shadow:0 2px 5px 0 rgba(0,0,0,.2);border-radius:7px;padding-bottom:30px;width:482px;margin-left:-241px;margin-top:200px}
    .template .container .header{padding:20px 35px;border-bottom:solid 1px rgba(151,159,168,.2);margin-bottom:35px}
    .template .container .header .logo{width: 180px;height: 100%;margin: 0 auto;}
    .template .container .header .logo .logo_anchor{color: #444;font-size: 32px;}
    .template .container .header .logo .logo_anchor span{display: block;float: left;margin-right: 10px;}
    .template .container .account{width: 100%;}
    .template .container .account .form_row{margin:0 35px 14px}
    .template .container .account .form_row input{width:372px;height:56px;background:#edf1f5;border:1px solid #cad3de;border-radius:5px;padding:0 20px;font-size:14px;color:#2D3238}

    .template .container .buttons{text-align: center;margin:28px 35px;background:#4289db;border-radius:5px;box-shadow:0 2px 2px 0 rgba(45,51,56,.2);width:412px;height:49px;font-size:18px;color:#FFF;border:none;cursor:pointer}
    .template .container .buttons .loginbtn{line-height: 49px;}

    .template .lay_background{position:fixed;left:0;top:0;z-index:-1;overflow:hidden}
    .template .lay_background .lay_background_img{position:fixed;left:0;top:0;z-index:-1;width:100%;}
    .template .lay_background .lay_background_img img{width:100%;height: 100%}
</style>
</head>

<body>
	<div class="template">
		<div class="container">
			<div class="header">
				<h1 class="logo size_large">
					<a class="logo_anchor" href="javascript:void(0);"><span><img src="${basePath}/img/logo.png"></span>爱音乐</a>
				</h1>
			</div>
			<div class="signup_view account login">
				<div class="form_row form_row_email">
					<input type="text" name="account" placeholder="请输入邮箱..."
						id="account" value="honey"/>
				</div>
				<div class="form_row form_row_password">
					<input type="password" name="password" placeholder="请输入密码..."
						id="password" value="111111"/>
				</div>
				<div class="errormsg hide">
					<span class="efont"></span>
				</div>
			</div>
			<div class="buttons">
				<span id="login" class="loginbtn">登陆</span>
			</div>
		</div>

        <div class="lay_background" id="lay_background" style="width: 100%; height: 100%;">
            <div id="lay_background_img" class="lay_background_img lay_background_img_fade_out">
                <img src="${basePath}/img/logo_bj2.png" id="bgimg">
            </div>
        </div>
	</div>
	<script src="${basePath}/js/jquery-1.11.2.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${basePath}/js/honey.js" type="text/javascript" charset="utf-8"></script>
	<script src="${basePath}/js/am_login.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
