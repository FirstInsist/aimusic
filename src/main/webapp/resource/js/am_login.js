/*点击body关闭登录弹出框*/
$("body").click(function(e){
	$("#am_login_dialog").fadeOut("slow",function(){
		$(this).remove();
	});
	stopBubble(e);
});
/**********************************************登录***********************************************/
$(function(){
	//按回车键登录
	$(document).keydown(function(e){
		if(e.keyCode==13){
			$("#login").trigger("click");
		}
	});
	
	amLogin.login();
});


var amLogin = {
	login:function(){
		//给登录按钮绑定登录方法
		$("#login").on("click",am_login);
		/*登陆方法*/
		function am_login(){
			var account = $("#account").val();
			var password = $("#password").val();
			
			if(isEmpty(account)){
				 $("#account").focus();
				 amLogin.showmessage("请输入账号!");
				 return false;
			}
			
			if(isEmpty(password)){
				 $("#password").focus();
				 amLogin.showmessage("请输入密码!");
				 return false;
			}
			
			$.ajax({
				type:"post",
				beforeSend:function(){$("#login").off("click").css("padding","10px 100px").text("登陆中...");},
				error:function(){$("#login").on("click",am_login).text("登陆");},
				url:"logined/"+account+"/"+password,
				success:function(data){
					if(data){
						var flag = $("#login").data("flag");
						if(flag == "pagelogin"){//弹出登录
							//关闭登录框，提示登录成功
							$("#am_login_dialog").fadeOut("slow",function(){
								$(this).remove();
							});
							//登录成功返回头像信息
							amLogin.success(data);
						}else{//页面登录
							var rurl = document.referrer;//获取到跳转到登录页面的地址
							if(!rurl){
								window.location.href = "/";//跳转到首页去
							}else{
								window.location.href = rurl;//返回登陆之前的页面
							}
						}
					}else{
						amLogin.showmessage("请正确输入账号和密码 ！");
						$("#account").select();
						$("#password").val("");
						$("#login").on("click",am_login).css("padding","10px 140px").text("登陆");
					}
				}
			});
		};
	},
	showmessage:function(message){
		$(".errormsg").show().removeClass("hide").fadeOut(2000).find("span").text(message);
	},
	template:function(){
		$("body").append("<div class='template' id='am_login_dialog'>" +
							"<div class='container'>"+
							"	<div class='header'>"+
							"		<h1 class='logo size_large'>"+
							"			<a class='logo_anchor' href='javascript:void(0);'><span><img src='/img/logo.png'></span>爱音乐</a>"+
							"		</h1>"+
							"	</div>"+
							"	<div class='signup_view account login' style='height: 160px;'>"+
							"		<div class='form_row form_row_email'>"+
							"			<input type='text' name='account' placeholder='请输入邮箱...'"+
							"				id='account' value='honey'/>"+
							"		</div>"+
							"		<div class='form_row form_row_password'>"+
							"			<input type='password' name='password' placeholder='请输入密码...'"+
							"				id='password' value='111111'/>"+
							"		</div>"+
							"		<div class='errormsg hide'>"+
							"			<span class='efont'></span>"+
							"		</div>"+
							"	</div>"+
							"	<div class='buttons'>"+
							"		<a href='javascript:void(0);' id='login' class='loginbtn' data-flag='pagelogin'>登陆</a>"+
							"	</div>"+
							"</div>"+
							"<div class='lay_background' id='lay_background' style='width: 100%; height: 100%;position:absolute;'>"+
							"	<div id='lay_background_img'class='lay_background_img lay_background_img_fade_out' style='position:absolute;'>"+
							"		<img src='/img/logo_bj2.png' id='bgimg' style='width:auto;'>"+
							"	</div>"+
							"</div>"+
						"</div>");
		$("#am_login_dialog").click(function(e){
			stopBubble(e);
		});
		
	},
	success:function(user){
		$("#am_usermessagebox").html("<li><a href='javascript:void(0);' onclick='am_logout(this)'>退出</a></li>"+
									 "<li><a href='user/index'>"+user.username+"</a></li>"+
									 "<li><img src='"+user.headerPic+"' data-address='"+user.address+"' style='width:36px;height:36px;margin-top:20px;' "+
									 "	id='userinfo' title='"+user.username+"'></li>"
									);
	}
	
};


/**********************************************登录***********************************************/
//退出登录成功
function am_logoutsuccess(){
	$("#am_usermessagebox").html("<li><a href='reg'>立即注册</a></li><li><a href='login'>登录</a></li>");
}

/*注销方法*/
function am_logout(){
	/* 目前不能点击关闭和点击确定和取消
	 * dialog.confirm({title:"爱音乐",content:"您确定退出吗?",callback:function(obj){
	
		if(ok){
			$.ajax({
				type:"post",
				url:"/logout",
				success:function(data){
					am_logoutsuccess();
				}
			});
		}
	}});*/
	$.ajax({
		type:"post",
		url:"logout",
		success:function(data){
			am_logoutsuccess();
		}
	});
}