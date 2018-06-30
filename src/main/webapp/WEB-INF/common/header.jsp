<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- S 主导航 -->
<div class="w_header">
	<div class="h_box w1000">
		<a class="logo" href="/">
			<img src="${basePath}/img/logo.png"/>
			<span>爱音乐</span>
		</a>
		<div class="h_nav">
			<ul id="h_nav">
				<li>
					<a href="/" class="active">乐库<div class="Parrow"></div></a>
					<a href="#">我的音乐</a>
				</li>
			</ul>
		</div>
		<div class="h_text" >
			<ul id="am_usermessagebox">
				<c:if test="${empty user}">
					<li><a href="${basePath}/reg">立即注册</a></li>
					<li><a href="${basePath}/login">登录</a></li>
				</c:if>
				<c:if test="${not empty user}">
					<li><a href="javascript:void(0);" onclick="am_logout(this)">退出</a></li>
					<li><a href="${basePath}/user/index">${user.username}</a></li>
					<li><img src="${user.headerPic}" data-address="${user.address}" style="width:36px;height:36px;margin-top:20px;" id="userinfo" title="${user.username}"></li>
				</c:if>
			</ul>
		</div>
	</div>
</div>
<!-- E 主导航 -->

<!-- S 副导航-->
<div class="w_nav">
	<div class="n_box w1000">
		<ul id="nav_down">
			<li>
				<a href="/" class="active">首页</a>
				<a href="#">排行榜</a>
				<a href="#">歌单广场</a>
				<a href="#">电台</a>
				<a href="#">歌手</a>
				<a href="${basePath}/album">专辑</a>
				<a href="#">分类</a>
				<a href="#">音乐故事</a>
			</li>
			<li class="hide">
				<a href="#" class="active">主页</a>
				<a href="#">歌曲</a>
				<a href="#">收藏</a>
				<a href="#">听众</a>
				<a href="#">歌手</a>
				<a href="#">收众</a>
				<a href="#">我的音乐故事</a>
			</li>
		</ul>
	</div>
</div>
<!-- E 副导航-->