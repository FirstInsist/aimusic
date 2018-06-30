<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>爱音乐</title>
  <link href="${basePath}/css/style.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="${basePath}/js/jquery-1.11.2.min.js"></script> 
  <script type="text/javascript" src="${basePath}/js/am_audio.js"></script>
  <style type="text/css">
  	.header{width:100%;height:59px;background:#e5e5e5}
  	.titlebox{width:100%;text-align: center;background:#000;}
  	.titlebox .imgbox{padding-top:20px;}
  	.header .logo{
		font-size: 36px;
		width: 570px;
		margin: 0 auto;
		line-height: 50px;
		color: #999;
		font-family: 宋体;
		font-weight: 700;
		text-align: center;
	}
	.titlebox .number{font-size:24px;background:#68595A;border-radius:32px;display:inline-block;width:64px;height:64px;text-align:center;line-height:64px;color:#fff;}
	.titlebox .title{margin-left:20px;line-height:135px;color:#fff;margin-top:10px;}
	.titlebox .twrap{width:640px;margin:0 auto;}
	.sgl_items{padding-left:100px;}
	.sgl_items a{color:#999;font-size:12px;}
  </style>
 </head>
 <body>
 	<!-- S 头部 -->
	<div class="header">
		<div class="logo">
			<span>静...</span>
			<c:if test="${empty user}">
				<span class="sgl_items"><a href="${basePath}/reg">注册</a>&nbsp;<a href="${basePath}/login">登陆</a></span>
			</c:if>
			<c:if test="${not empty user}">
				<span class="sgl_items">
				<a href="${basePath}/center">【${user.username}】</a><a href="${basePath}/logout">【退出】</a>
				</span>
			</c:if>
		</div>
	</div>
	<!-- E 头部 -->
	
	<div class="titlebox">
		<div class="twrap">
			<!--标题部分-->
	
			<!--封面图部分-->
			<div class="imgbox">
				<img src="http://img3.luoo.net/pics/vol/54f20af225069.jpg_640x452.jpg" alt="挥挥手 谁要走" class="vol-cover ">	
			</div>
			<h1>
				<span class="number">
					<%-- <c:if test="${album.album<10}">0${album.album}</c:if>
					<c:if test="${album.album>10}">${album.album}</c:if> --%>
				</span>
				<span class="title">${album.title}</span>
			</h1>
		</div>
	</div>
	
	 <div id="warp">
		
		<!--内容描述部分-->
		<div class="content">
			<div class="vol-desc">
				${album.description}
			</div>
			<br>
			<div class="vol-desc">
				类型：${album.musicType.name}
			</div>
			<br>
			<div class="vol-desc">
				标签：${album.label}
			</div>
			<div id="audioProxy"></div>
		</div>
		<!--音乐播放区域-->
		<!--播放区域部分-->
		<div class="musicbox">
			<div class="left"><img class="imagetarget animated01 m_img" src="${basePath}/images/bg.jpg"></div>
			<div class="right">
				<div class="m_title">未知</div>
				<div class="m_art">专辑：<span class="m_album">未知</span></div>
				<div class="m_author">歌者：<span class="m_singer">未知</span></div>
			</div>
			<!--播放器区域-->
			<div class="btn-wrapper">
				<a href="javascript:;" rel="nofollow" id="prev" class="jp-previous" title="上一曲">
					<span class="icon-prev-lg icon"></span>
				</a>
				<a href="javascript:;" rel="nofollow" id="play" class="jp-play none" title="播放" style="display: inline;">
					<span class="icon-play-lg icon"></span>
				</a>
				<a href="javascript:;" rel="nofollow" id="pause" class="jp-pause" title="暂停" style="display: none;">
					<span class="icon-pause-lg icon"></span>
				</a>
				<a href="javascript:;" rel="nofollow" id="next" class="jp-next margin-right-0" title="下一曲">
					<span class="icon-next-lg icon"></span>
				</a>
			</div>
			<!--音乐播放器进度条-->
			<div class="program">
				<div class="load" id="load"></div>
				<div class="tz_per" id="percent"></div>
			</div>
			<!-- 声音进度条 -->
			<div class="fl">
				<a href="javascript:void(0);"  class="staticvolume fl"></a>
				<a href="javascript:void(0);"  class="m_loop fl"></a>
				<div class="m_volume_program fl">
					<div class="m_volume_load"></div>
					<div class="m_volume_percent"></div>
				</div>
			</div>
			
			<!--显示时间-->
			<div style="float:right;width:190px;margin-top:5px;"><span id="ctime">00:00</span>/<span id="stime">00:00</span>/<span id="time">00:00</span></div>
		</div>
		<!---音乐列表-->
		<div id="playlist" style="width:100%;margin-top:20px;">
			<ul >
				<c:forEach items="${album.musics}" var="music" varStatus="muiscindex">
					<li class="track-item">
						<div class="track-wrapper clearfix">	
							<a href="javascript:;" data-img='${music.img}' data-title='${music.title}' data-singer='${music.singer}' data-album='${music.album.title}' data-src='${basePath}/${music.path}' class="trackname playitems ">${muiscindex.index+1}. </a>
							<span class="artist btn-play ">${music.title}</span>
							<span class="">${music.timer}</span>
						</div>		
						<!--track-detail-wrapper end-->
					</li>	
				</c:forEach>
			</ul>
		</div>
		
	 <div class="contentbox">
		<div class="editor rounded">
			<textarea class="t_content"  id="commentEditor"></textarea>
		</div>
		<div class="editorbtn">
			<span class="fl">同步到：腾讯，微博，网易。</span>
			<span class="fr"><a href="javascript:void(0);" class="btn">发布</a></span>
		</div>
	</div>
	<div class="comment-list" id="comment-list">
		<div class="item animated rollIn">
			<a href="http://www.tanzhouedu.net//user/6822" class="avatar-wrapper" >
				<img src="http://img3.luoo.net/pics/avatars/u6822_1412965220.jpg_128x128.jpg" alt="BLACK8" class="avatar rounded">
			</a>
			<div class="item-wrapper">
				<p class="helper">
					<a href="http://www.tanzhouedu.net//user/6822" class="username" target="_blank">BLACK8</a>，复仇！
				</p>
				<div class="comment-ct">
					<p class="the-comment">阳光下午 没了还潮 在阳台的沙发上听着这期 想着远在加拿大的你 </p>
				</div>
				<div class="helper clearfix">
					3分钟前
					&nbsp;&nbsp;
					<a href="javascript:;" class="btn-reply btn-action-reply">回复</a>&nbsp;&nbsp;
					<a class="btn-vote btn-action-vote" href="javascript:;"><span>赞</span></a>
				</div>
			</div>
		</div>

		<div class="item animated rollIn">
			<a href="http://www.tanzhouedu.net//user/6822" class="avatar-wrapper" >
				<img src="http://img3.luoo.net/pics/avatars/u50586_1398501485.jpg_128x128.jpg" alt="BLACK8" class="avatar rounded">
			</a>
			<div class="item-wrapper">
				<p class="helper">
					<a href="http://www.tanzhouedu.net//user/6822" class="username" target="_blank">BLACK8</a>，复仇！
				</p>
				<div class="comment-ct">
					<p class="the-comment">阳光下午 没了还潮 在阳台的沙发上听着这期 想着远在加拿大的你 </p>
				</div>
				<div class="helper clearfix">
					3分钟前
					&nbsp;&nbsp;
					<a href="javascript:;" class="btn-reply btn-action-reply">回复</a>&nbsp;&nbsp;
					<a class="btn-vote btn-action-vote" href="javascript:;"><span>赞</span></a>
				</div>
			</div>
		</div>

		<div class="item animated rollIn">
			<a href="http://www.tanzhouedu.net//user/6822" class="avatar-wrapper" >
				<img src="http://img3.luoo.net/pics/avatars/u99204_1413047646.jpg_128x128.jpg" alt="BLACK8" class="avatar rounded">
			</a>
			<div class="item-wrapper">
				<p class="helper">
					<a href="http://www.tanzhouedu.net//user/6822" class="username" target="_blank">BLACK8</a>，复仇！
				</p>
				<div class="comment-ct">
					<p class="the-comment">相信很多人都和我一样过有这样的感受，在某个还没有来得及准备好的时间里，偶然听到一首动人心弦的歌。刹那间，那声音像电流般穿透身体，整个人像孤胆英雄般膨胀起来，心里洋溢着无畏无惧。虽然是偶然的旋律，却总会让人驻足、让人念念不忘相信很多人都和我一样过有这样的感受，在某个还没有来得及准备好的时间里，偶然听到一首动人心弦的歌。刹那间，那声音像电流般穿透身体，整个人像孤胆英雄般膨胀起来，心里洋溢着无畏无惧。虽然是偶然的旋律，却总会让人驻足、让人念念不忘。 </p> 

				</div>
				<div class="helper clearfix">
					3分钟前
					&nbsp;&nbsp;
					<a href="javascript:;" class="btn-reply btn-action-reply">回复</a>&nbsp;&nbsp;
					<a class="btn-vote btn-action-vote" href="javascript:;"><span>赞</span></a>
				</div>
			</div>
		</div>

		
	</div>
	</div>
	
	 <script type="text/javascript">
		$(function(){
		
/********************************实例化********************************************/		
		
		//播放
		$("#play").on("click",function(){
			if(audio.audioDom.paused)audio.play();
			$("#pause").show();
			$(this).hide();
		});
		//暂停
		$("#pause").on("click",function(){
			if(audio.audioDom.played)audio.pause();
			$("#play").show();
			$(this).hide();
		});
		var index = 0;
		var length = $("#playlist").find(".track-item").length;
		var nextTimeOut = null;
		var prevTimeOut = null;
		//上一首
		$("#prev").on("click",function(){
			clearTimeout(prevTimeOut);
			prevTimeOut = setTimeout(function(){
				index--;
				if(index < 0)index = length-1;
				$("#playlist").find(".track-item").eq(index).trigger("click");
			}, 300);
		});
		//下一首
		$("#next").on("click",function(){ 
			clearTimeout(nextTimeOut);
			nextTimeOut = setTimeout(function(){
				index++;
				if(index > (length-1))index = 0;
				$("#playlist").find(".track-item").eq(index).trigger("click");
			}, 300);
		});
		
		//默认播放第一首
		$("#playlist").find(".track-item").click(function(){
			var $link = $(this).find(".playitems");
			var src = $link.data("src");
			var album = $link.data("album");
			var title = $link.data("title");
			var singer = $link.data("singer");
			var img = $link.data("img");
			audio.playLink(src);
			$(this).addClass("onplayed").siblings().removeClass("onplayed");
			$("#play").hide();
			$("#pause").show();
			index = $(this).index();
			$(".m_title").text(title);
			$(".m_album").text(album);
			$(".m_singer").text(singer);
			$(".m_img").attr("src",img+"?date="+new Date().getTime());
			
		}).eq(0).trigger("click");
		
		//静音
		$(".staticvolume").click(function(){
			var $this = $(this);
			audio.staticVolume(function(p){
				if(p==0){
					$this.toggleClass("staticvolume staticvolume_none");
				}else{
					$this.toggleClass("staticvolume staticvolume_none");
				}
				$(".m_volume_percent").width((p*100)+"%");
			});
		});
		
		//单曲循环
		$(".m_loop").click(function(){
			alert(audio.loop);
			if(audio.loop == 1){
				$(this).addClass("m_loop_one");
				audio.loop = 2;
			}else{
				$(this).removeClass("m_loop_one");
				audio.loop = 1;
			}
		});
		
	});
/********************************实例化********************************************/	
		/* //网页--一张纸
		//div就是就是在你这张纸上画了矩形
		//html5的音乐
		//自学:
		var audioDom = document.createElement("audio");
		function tz_music(src){
			//创建一个audio对象
			//<audio src="${basePath}/mp3/01.mp3" autoPlay controls/>
			//播放地址
			audioDom.src = src;
			//控制播放器的隐藏和展示
			//audioDom.controls = "controls";
			//音量
			audioDom.volume = 0.1;//0.1-1
			//自动播放
			audioDom.autoPlay = "autoPlay";

			//创建好的audio添加到div中
			$("#audioProxy").empty().html(audioDom);
			
			//事件监听,loadedmetadata当文件加载的时候
			audioDom.addEventListener("loadedmetadata",function(e){
				//视频的总时长
				var time = audioDom.duration;//秒
				var m = Math.floor(time / 60);//分钟
				var s = Math.floor(time % 60);//秒
				$("#time").html((m < 10 ? ("0"+m) : m)+":"+(s < 10 ? ("0"+s) : s));
			});

			//事件监听正在播放的事件,loadedmetadata当文件加载的时候
			audioDom.addEventListener("timeupdate",function(e){
				var time = audioDom.currentTime;//秒 当前播放的时长
				var m = Math.floor(time / 60);//分钟
				var s = Math.floor(time % 60);//秒
				//剩余时间
				var ttime = audioDom.duration;//秒 总时长
				var stime  =  ttime - time;
				var mm = Math.floor(stime / 60);//分钟
				var ss = Math.floor(stime % 60);//秒
				
				$("#stime").html((mm < 10 ? ("0"+mm) : mm)+":"+(ss < 10 ? ("0"+ss) : ss));
				$("#ctime").html((m < 10 ? ("0"+m) : m)+":"+(s < 10 ? ("0"+s) : s));

				//进度
				var percent = (time / ttime) * 100;
				$("#percent").width(percent+"%");

			});
			
			//播放
			$("#play").unbind("click").click(function(){
				$("#pause").show();
				$(this).hide();
				audioDom.play();
			}).trigger("click");

			//暂停
			$("#pause").unbind("click").click(function(){
				$("#play").show();
				$(this).hide();
				audioDom.pause();
			});
			
			$(".load").unbind("mousedown").mousedown(function(e){
				//audioDom.pause();
				//if(audioDom.paused){
					var x = e.clientX;
					var left = $(this).offset().left;
					var nl = (x - left) / 200;
					var percent = nl* 100 ;
					$(this).next().width(percent+"%");
					audioDom.currentTime = audioDom.duration * nl;
					//audioDom.play();
				//}
			});
		};
		 */
	/*	
		audio不能通过jquery去创建，只能通过javascript去创建。
		audioDom.addEventListener("loadedmetadata",function(e){
		/错误状态
		Media.error; //null:正常
		Media.error.code; //1.用户终止 2.网络错误 3.解码错误 4.URL无效
		Media.volume = 0.1-1;
		//网络状态
		 Media.currentSrc; //返回当前资源的URL
		   Media.src = value; //返回或设置当前资源的URL
		   Media.canPlayType(type); //是否能播放某种格式的资源
		   Media.networkState; //0.此元素未初始化  1.正常但没有使用网络  2.正在下载数据  3.没有找到资源
		   Media.load(); //重新加载src指定的资源
		   Media.buffered; //返回已缓冲区域，TimeRanges
		   Media.preload; //none:不预载 metadata:预载资源信息 auto:

		//准备状态
		   Media.readyState; //1:HAVE_NOTHING 2:HAVE_METADATA 3.HAVE_CURRENT_DATA 4.HAVE_FUTURE_DATA 5.HAVE_ENOUGH_DATA
		   Media.seeking; //是否正在seeking

		//回放状态
		   Media.currentTime = value; //当前播放的位置，赋值可改变位置
		   Media.startTime; //一般为0，如果为流媒体或者不从0开始的资源，则不为0
		   Media.duration; //当前资源长度 流返回无限
		   Media.paused; //是否暂停
		   Media.defaultPlaybackRate = value;//默认的回放速度，可以设置
		   Media.playbackRate = value;//当前播放速度，设置后马上改变
		   Media.played; //返回已经播放的区域，TimeRanges，关于此对象见下文
		   Media.seekable; //返回可以seek的区域 TimeRanges
		   Media.ended; //是否结束
		   Media.autoPlay; //是否自动播放
		   Media.loop; //是否循环播放
		   Media.play(); //播放
		   Media.pause(); //暂停 	
		 eventTester("loadstart"); //客户端开始请求数据
		 eventTester("progress"); //客户端正在请求数据
		 eventTester("suspend");  //延迟下载
		 eventTester("abort");  //客户端主动终止下载（不是因为错误引起），
		 eventTester("error");  //请求数据时遇到错误
		 eventTester("stalled");  //网速失速
		 eventTester("play");  //play()和autoplay开始播放时触发
		 eventTester("pause");  //pause()触发
		 eventTester("loadedmetadata"); //成功获取资源长度
		 eventTester("loadeddata"); //
		 eventTester("waiting");  //等待数据，并非错误
		 eventTester("playing");  //开始回放
		 eventTester("canplay");  //可以播放，但中途可能因为加载而暂停
		 eventTester("canplaythrough"); //可以播放，歌曲全部加载完毕
		 eventTester("seeking");  //寻找中
		 eventTester("seeked");  //寻找完毕
		 eventTester("timeupdate"); //播放时间改变
		 eventTester("ended");  //播放结束
		 eventTester("ratechange"); //播放速率改变
		 eventTester("durationchange"); //资源长度改变
		 eventTester("volumechange"); //音量改变
		 */
	 </script>
 </body>
</html>
