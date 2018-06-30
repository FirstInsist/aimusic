<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>音乐播放列表-爱音乐</title>
		<%@include file="/WEB-INF/common/common.jsp" %>
	</head>
	<body>
		<div class="musicWarp">
			<!-- S 头部 -->
			<div class="mw_header" id="mw_header">
				<div class="mw_h_box">
					<a class="mw_h_logo" href="#">
						<img src="img/play/playLogo.png"/>
						<span>爱音乐</span>
					</a>
					<div class="mw_h_login">
						<ul id="am_usermessagebox">
							<li><a href="/reg">立即注册</a></li>
							<li><a href="/login">登录</a></li>
						</ul>
					</div>
				</div>
				<div class="header_background opacity30"></div>
			</div>
			<!-- E 头部 -->
			
			<!--S 左边固定的bar-->
			<div class="mw_bar" id="mw_bar">
				<ul>
					<li><span class="bar_local_active"></span></li>
					<li><span class="bar_network"></span></li>
					<li><span class="bar_download"></span></li>
				</ul>
				<div class="mw_bar_background opacity30"></div>
			</div>
			<!--E 左边固定的bar-->
			
			<!-- S 主要内容 -->
			<div class="mw_content" id="mw_content">
				
				<!-- S 播放列表 -->
				<div class="mw_list" id="mw_list">
					<!-- S 自定义滚动条-->
					<div class="bar opacity50" id="musicBar">
						<div class="cbar"></div>
						<div class="sbar"></div>
					</div>
					<!-- E 自定义滚动条-->
					
					<div class="listBox" id="listBox">
						<div class="listPlace opacity50"></div>
						<!-- S 默认列表-->
						<div class="defaultList playList">
							<p>默认列表[8]</p>
							<ul id="playList">
								<li class="track-item">
									<div class="liPlace"></div>
									<div class="musicInfo">
										<div class="name">
											<a class="playitems" data-img="img/play/musicBg.jpg" data-title="青花瓷" data-singer="周杰伦" 
												data-album="我很忙" data-src="mp3/01.mp3" href="javascript:void(0);" title="青花瓷">青花瓷</a>
										</div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
									<div class="listRight">
										<div class="musicTools">
											<a class="love" title="喜欢" href="javascript:void(0);"></a>
											<a class="delete" title="删除" href="javascript:void(0);"></a>
										</div>
									</div>
								</li>
								<li class="track-item">
									<div class="liPlace"></div>
									<div class="musicInfo">
										<div class="name">
											<a class="playitems" data-img="img/play/musicBg.jpg" data-title="青花瓷" data-singer="周杰伦" 
												data-album="我很忙" data-src="mp3/01.mp3" href="javascript:void(0);" title="青花瓷">青花瓷</a>
										</div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
									<div class="listRight">
										<div class="musicTools">
											<a class="love" title="喜欢" href="javascript:void(0);"></a>
											<a class="delete" title="删除" href="javascript:void(0);"></a>
										</div>
									</div>
								</li>
								<li class="track-item">
									<div class="liPlace"></div>
									<div class="musicInfo">
										<div class="name">
											<a class="playitems" data-img="img/play/musicBg.jpg" data-title="青花瓷" data-singer="周杰伦" 
												data-album="我很忙" data-src="mp3/01.mp3" href="javascript:void(0);" title="青花瓷">青花瓷</a>
										</div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
									<div class="listRight">
										<div class="musicTools">
											<a class="love" title="喜欢" href="javascript:void(0);"></a>
											<a class="delete" title="删除" href="javascript:void(0);"></a>
										</div>
									</div>
								</li>
								<li class="track-item">
									<div class="liPlace"></div>
									<div class="musicInfo">
										<div class="name">
											<a class="playitems" data-img="img/play/musicBg.jpg" data-title="青花瓷" data-singer="周杰伦" 
												data-album="我很忙" data-src="mp3/01.mp3" href="javascript:void(0);" title="青花瓷">青花瓷</a>
										</div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
									<div class="listRight">
										<div class="musicTools">
											<a class="love" title="喜欢" href="javascript:void(0);"></a>
											<a class="delete" title="删除" href="javascript:void(0);"></a>
										</div>
									</div>
								</li>
								<li class="track-item">
									<div class="liPlace"></div>
									<div class="musicInfo">
										<div class="name">
											<a class="playitems" data-img="img/play/musicBg.jpg" data-title="青花瓷" data-singer="周杰伦" 
												data-album="我很忙" data-src="mp3/01.mp3" href="javascript:void(0);" title="青花瓷">青花瓷</a>
										</div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
									<div class="listRight">
										<div class="musicTools">
											<a class="love" title="喜欢" href="javascript:void(0);"></a>
											<a class="delete" title="删除" href="javascript:void(0);"></a>
										</div>
									</div>
								</li>
								<li class="track-item">
									<div class="liPlace"></div>
									<div class="musicInfo">
										<div class="name">
											<a class="playitems" data-img="img/play/musicBg.jpg" data-title="青花瓷" data-singer="周杰伦" 
												data-album="我很忙" data-src="mp3/01.mp3" href="javascript:void(0);" title="青花瓷">青花瓷</a>
										</div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
									<div class="listRight">
										<div class="musicTools">
											<a class="love" title="喜欢" href="javascript:void(0);"></a>
											<a class="delete" title="删除" href="javascript:void(0);"></a>
										</div>
									</div>
								</li>
								<li class="track-item">
									<div class="liPlace"></div>
									<div class="musicInfo">
										<div class="name">
											<a class="playitems" data-img="img/play/musicBg.jpg" data-title="青花瓷" data-singer="周杰伦" 
												data-album="我很忙" data-src="mp3/01.mp3" href="javascript:void(0);" title="青花瓷">青花瓷</a>
										</div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
									<div class="listRight">
										<div class="musicTools">
											<a class="love" title="喜欢" href="javascript:void(0);"></a>
											<a class="delete" title="删除" href="javascript:void(0);"></a>
										</div>
									</div>
								</li>
								<li class="track-item">
									<div class="liPlace"></div>
									<div class="musicInfo">
										<div class="name">
											<a class="playitems" data-img="img/play/musicBg.jpg" data-title="青花瓷" data-singer="周杰伦" 
												data-album="我很忙" data-src="mp3/01.mp3" href="javascript:void(0);" title="青花瓷">青花瓷</a>
										</div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
									<div class="listRight">
										<div class="musicTools">
											<a class="love" title="喜欢" href="javascript:void(0);"></a>
											<a class="delete" title="删除" href="javascript:void(0);"></a>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- E 默认列表-->
						 
						<!-- S 最近播放-->
						<div class="recentList playList">
							<p>最近播放[24]</p>
							<ul>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
								<li>
									<div class="musicInfo">
										<div class="name"><a href="javascript:void(0);" title="青花瓷">青花瓷</a></div>
										<div class="album" title="我很忙">我很忙</div>
										<div class="artist" title="周杰伦">周杰伦</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- E 最近播放-->
					</div>
				</div>
				<!-- E 播放列表 -->
				
				<!-- S 播放列表和歌词直接的按钮 -->
				<div class="mw_btn opacity50" id="mw_btn">&lt;<!--&gt;--></div>
				<!-- E 播放列表和歌词直接的按钮 -->
				
				<!-- S 音乐背景图片-->
				<div class="mw_background">
					<div class="mw_background_img">
						<img src="img/play/musicBg.jpg" class="opacity70">
					</div>
				</div>
				<!-- E 音乐背景图片-->
				
				<!-- S 歌词 -->
				<div class="mw_lyrics" id="mw_lyrics">
					<ul>
						<li class="ui-lrc-line ui-lrc-current">当我的好朋友 (专辑抢鲜试听版) - 丁当</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">《想恋一个爱》</li>
						<li class="ui-lrc-line">作曲：Slot Machine / Po Posayanukul / Daniel Denholm</li>
						<li class="ui-lrc-line">改编词：陈没</li>
						<li class="ui-lrc-line">《想恋一个爱》节奏奔放明朗，</li>
						<li class="ui-lrc-line">由《甩开》、《手掌心》等多次默契合作的资深作词人陈没填词。</li>
						<li class="ui-lrc-line">歌词内容紧贴丁当个性，有个性，却也有点傻大姐，</li>
						<li class="ui-lrc-line">偶尔爱想像、天马行空，幽默无厘头而饶富趣味，</li>
						<li class="ui-lrc-line">将女孩面对恋爱时的五味杂陈轻松带出。</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">《当我的好朋友》</li>
						<li class="ui-lrc-line">作曲：JOEL@KOH</li>
						<li class="ui-lrc-line">作词：HUSH</li>
						<li class="ui-lrc-line">回归到真正现代女性以“我”为本位，</li>
						<li class="ui-lrc-line">第一人称“自丽自强”的态度。</li>
						<li class="ui-lrc-line">所以当我的好朋友比较像是，</li>
						<li class="ui-lrc-line">要把那些收回来了，</li>
						<li class="ui-lrc-line">要把自己还给自己的感觉。</li>
						<li class="ui-lrc-line">歌词由新锐创作者HUSH量身打造，</li>
						<li class="ui-lrc-line">歌名以丁当-“当我的好朋友”同音的谐趣。</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">《只是不够爱自己》</li>
						<li class="ui-lrc-line">作曲：吕至杰</li>
						<li class="ui-lrc-line">作词：葛大为</li>
						<li class="ui-lrc-line">刚认识丁当时，</li>
						<li class="ui-lrc-line">旁人总以独立、坚强、有点傻这样的形容词来描绘她，</li>
						<li class="ui-lrc-line">即便她唱过太多让人心碎的情歌，</li>
						<li class="ui-lrc-line">但她的内心到底藏着什么?</li>
						<li class="ui-lrc-line">只要看她在录音室里一遍一遍的坚持、尽力，</li>
						<li class="ui-lrc-line">持之以恒的运动健身，就让人相信，</li>
						<li class="ui-lrc-line">一个女孩让自己变强的原因，</li>
						<li class="ui-lrc-line">绝对不是为了遗忘爱情。</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">自然嗨（feat. MP魔幻力量鼓鼓）</li>
						<li class="ui-lrc-line">作曲：MP魔幻力量鼓鼓</li>
						<li class="ui-lrc-line">作詞：陈沒 / MP魔幻力量鼓鼓</li>
						<li class="ui-lrc-line">丁当与MP魔幻力量鼓鼓合作的嘻哈单曲Natural High。</li>
						<li class="ui-lrc-line">丁当：“这真的是我唱过最难的一首歌!”</li>
						<li class="ui-lrc-line">这首歌由MP魔幻力量鼓鼓毛遂自荐，</li>
						<li class="ui-lrc-line">作词作曲编曲制作演唱全才展现。</li>
						<li class="ui-lrc-line">鼓鼓说，这首歌想要传达的讯息就是，</li>
						<li class="ui-lrc-line">只要有爱，不需要靠其他外力，</li>
						<li class="ui-lrc-line">就可以发自内心地感到快乐。</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">《大动作》</li>
						<li class="ui-lrc-line">词曲:Tyler Shamy / Tova Litvin / Fabio Angelini</li>
						<li class="ui-lrc-line">改编词:Hush</li>
						<li class="ui-lrc-line">因为现在丁当很多耳熟的都是情歌，</li>
						<li class="ui-lrc-line">但要快、要唱跳、要动作，丁当也可以。</li>
						<li class="ui-lrc-line">有一点引诱的女人味的，</li>
						<li class="ui-lrc-line">带一点点性感的可是不冶艳，</li>
						<li class="ui-lrc-line">女性主义出发的感情观。</li>
						<li class="ui-lrc-line">这首歌充满互动性、好跟唱，</li>
						<li class="ui-lrc-line">绝对会变成丁当现场拉阔必唱必动必听海曲。</li>
						<li class="ui-lrc-line">&nbsp;</li>
						<li class="ui-lrc-line">丁当首张数字专辑《当我的好朋友》11首恋爱神曲3月18日正式发行！</li>
						<li class="ui-lrc-line">&nbsp;</li>
					</ul>
				</div>
				<!-- E 歌词 -->
			</div>
			<!-- E 主要内容 -->
			
			<!-- S 播放器  -->
			<div class="mw_player" id="mw_player">
				
				<div id="audioProxy"></div>
				
				<!-- S 播放音乐控制台-->
				<div class="playerBox">
					<div class="player">
						<!-- S 开关控制台 -->
						<!--<div class="open"></div>-->
						<!-- E 开关控制台 -->
						
						<!-- S 音乐播放控制-->
						<div class="playerLeft">
							<div class="musicControl">
								<div class="prev" title="上一首" id="prev"></div>
								<div class="play" title="播放" id="play"></div>
								<div class="pause hide" title="暂停" id="pause"></div>
								<div class="next" title="下一首" id="next"></div>
							</div>
						</div>
						<!-- E 音乐播放控制-->
						
						<!-- S 显示音乐信息和播放进度条 -->
						<div class="playerMid">
							<img src="http://img3.kuwo.cn/star/starheads/120/42/97/3914752958.jpg">
							<p title="青花瓷-周杰伦 暂停播放" class="title">青花瓷-周杰伦 暂停播放</p>
							<div id="prograssBar">
								<div class="progress_load" id="progress_load"></div>
								<div class="progress_percent" id="progress_percent"></div>
								<a  class="progress_btn" id="progress_btn" href="javascript:void(0)"></a>
							</div>
							<p class="timer" id="timer">00:10</p>
							<p class="line">/</p>
							<p class="surplus_timer" id="surplus_timer">00:10</p>
						</div>
						<!-- E 显示音乐信息和播放进度条 -->
						
						<div class="playerRight">
							<!-- S 选择音质 -->
							<div class="qualityBox">
								<a class="quality" href="javascript:void(0);">流畅</a>
							</div>
							<!-- E 选择音质 -->
							
							<!-- S 其他控制台 -->
							<div class="controlBox">
								<!-- S 喜欢 -->
								<a class="love" href="javascript:void(0);" title="喜欢"></a>
								<!-- E 喜欢 -->
								
								<!-- S 声音控制-->
								<div class="staticvolume" id="volume"></div>
								<div class="soundBox">
									<div class="soundLine" id="soundLine">
										<div class="volumeLine"></div>
										<a class="volumeBtn" href="javascript:void(0);"></a>
									</div>
								</div>
								<!-- E 声音控制-->
								
								<!-- S 循环控制 -->
								<a class="loop" href="javascript:void(0);" title="顺序循环"></a>
								<!-- E 循环控制 -->
								
								<!-- S K歌-->
								<a class="kSong" title="k歌" target="_blank" href="javascript:void(0);"></a>
								<!-- E K歌 -->
								
								<!-- S 控制显示正在播放列表-->
								<div class="menu" title="列表"></div>
								<!-- E 控制显示正在播放列表 -->
								
								<!-- S 下载 -->
								<a class="down" title="下载" href="javascript:void(0);"></a>
								<!-- E 下载 -->
								
								<!-- S 分享 -->
								<div class="share" title="分享">
									<div class="shareBox" style="display: none;">
										<div class="sharecontent">
											<a href="javascript:;" class="quickShare new_sina" data-cmd="tsina" title="分享到新浪微博"></a>
											<a href="javascript:;" class="quickShare new_qzone" data-cmd="qzone" title="分享到QQ空间"></a>
											<a href="javascript:;" class="quickShare new_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
											<a href="javascript:;" class="quickShare new_douban" data-cmd="douban" title="分享到豆瓣网"></a>
											<a href="javascript:;" class="quickShare new_renren" data-cmd="renren" title="分享到人人网"></a>
										</div>
									</div>
								</div>
								<!-- E 分享 -->
								
								<!-- S 二维码 -->
								<div class="ewm" title="二维码">
									<div class="ewmBox">
										<div class="ewmCon">
											<img width="144" src="http://image.kuwo.cn/website/pc/ewm.png">
										</div>
									</div>
								</div>
								<!-- E 二维码 -->
							</div>
							<!-- E 其他控制台 -->
						</div>
					</div>
				</div>
				<!-- E 播放音乐控制台-->
				
				<!-- S 播放器背景-->
				<div class="playerPlace  opacity30"></div>
				<!-- E 播放器背景-->
				
			</div>
			<!-- E 播放器 -->
			
			<!-- S 底部 -->
			<div class="mw_footer">
			</div>
			<!-- E 底部 -->
		</div>
		
		<script type="text/javascript" src="js/am_audio.js"></script>
		<script type="text/javascript">
			var titleDom = document.getElementsByClassName("playitems");
			var i=0,len= titleDom.length;
			for(;i<len;i++){
				titleDom[i].innerHTML = titleDom[i].innerText.substring(0,5)+"...";
			}
			
			//初始化页面布局
			initMW();
			//初始化页面布局函数
			function initMW(){
				var headerDom = document.getElementById("mw_header");
				var barDom = document.getElementById("mw_bar");
				var contentDom = document.getElementById("mw_content");
				var playerDom = document.getElementById("mw_player");
				var listDom = document.getElementById("mw_list");
				var btnDom = document.getElementById("mw_btn");
				var lyricsDom = document.getElementById("mw_lyrics");
				
				//头部的高度
				var headerHeight = headerDom.offsetHeight;
				
				//左边bar的宽度
				var barWidth = barDom.offsetWidth;
				
				//播放器的高度
				var playerHeight = playerDom.offsetHeight;
				
				//播放列表的宽度
				var listWidth = listDom.offsetWidth;
				
				//窗口的宽度
				var dw = window.innerWidth;
				
				//窗口的高度
				var dh = window.innerHeight;
				
				//设置左边bar的高度
				barDom.style.height = (dh -headerHeight - playerHeight) + "px";
				
				//设置内容的宽度和高度
				contentDom.style.width = (dw - barWidth) + "px";
				contentDom.style.height = (dh -headerHeight - playerHeight) + "px";
				
				//设置播放列表的高度
				listDom.style.height = (contentDom.offsetHeight - listDom.offsetTop*2) + "px";
				
				//设置播放列表和歌词直接的按钮的top
				btnDom.style.top = (listDom.offsetHeight - btnDom.offsetHeight)/2 + "px";
				btnDom.style.left = listWidth + listDom.offsetLeft + "px";
				//$("#mw_btn").css("left","90%")
				
				//设置歌词的宽度
				lyricsDom.style.width = (dw - barWidth - listWidth - listDom.offsetLeft)+"px";
				lyricsDom.style.left = listWidth + listDom.offsetLeft +"px";
				
				window.onresize = function(){
					initMW();
				};
			};
		
			/***************************************收缩播放列表***************************************/
			//播放列表和歌词直接的按钮
			var listDom = document.getElementById("mw_list");
			var btnDom = document.getElementById("mw_btn");
			var lyricsDom = document.getElementById("mw_lyrics");
			var musicBurDom = document.getElementById("musicBar");
			var barDom = document.getElementById("mw_bar");
			var i = 0;
			btnDom.onclick = function(){
				if(i == 0){
					musicBurDom.style.opacity = 0;
					var contentDom = document.getElementById("mw_content");
					var _width = contentDom.offsetWidth;
					move(listDom,{opacity:0});
					move(lyricsDom,{left:0,width:_width});
					move(btnDom,{left:0});
					btnDom.innerHTML = "&gt;";
					i = 1;
				}else{
					var dw = window.innerWidth;//窗口的宽度
					var btn_left = listDom.offsetWidth + listDom.offsetLeft;
					var lyrics_left = listDom.offsetWidth + listDom.offsetLeft;
					var lyrics_width = dw - listDom.offsetWidth - barDom.offsetWidth - listDom.offsetLeft;
					move(btnDom,{left:btn_left});
					move(lyricsDom,{left:lyrics_left,width:lyrics_width});
					move(listDom,{opacity:100});
					btnDom.innerHTML = "&lt;";
					musicBurDom.style.opacity = 0.5;
					i = 0;
				}
			};
			/***************************************收缩播放列表***************************************/
			
			/***************************************自定义滚动条***************************************/
			var mark = false;
			$(".sbar").mousedown(function(e){			
				var $this = $(this);
				var y1 = e.clientY;//鼠标按下来的坐标
				var top = $this.position().top;//滚动条的初始位置
				var h = $this.parents("#mw_list").height();//父元素的高度
				var contentHeight = $("#listBox").outerHeight(true) - h;
				var maxHeight = h - 20;
				mark = true;
				forbiddenSelect();//禁止窗体选中
				$(document).mousemove(function(e){
					if(mark){
						y2 = e.clientY;//当前移动的滚动条的位置
						var nt = y2 - y1 + top;
						if(nt <= 0)nt = 0;
						if(nt >= maxHeight)nt = maxHeight;
						var p = nt / h;//百分比
						$("#listBox").css("top",p * contentHeight * -1 -20);
						$this.css("top",nt);
						//等价于document.getElementsByClassName("sbar")[0].style.top = nt + "px";
						$("#listBox").css("padding","24px 12px");
					}				
				}).mouseup(function(){
					mark = false;
					autoSelect();
				});
			});
	
			$(".cbar").mousedown(function(e){
				var $this = $(this);
				var y1 = e.clientY;//鼠标按下来的坐标
				var top = $this.parents("#mw_list").offset().top; //父元素距离浏览器顶部的距离
				var xx = $(window).scrollTop();//暂不清楚意思
				//console.log(xx);
				var h =$this.parents("#mw_list").height()-20;//父元素的高度
				var c =$this.parents("#mw_list").find("#listBox").height()-h; //内容的高度
				var y = y1 - top + xx-20; //滚动条移动的距离
				if(y<=0){
					y=0;
					var p = y / h;//百分比
					$this.next().css({top:y});//设置红色的滚动条的位置
					$this.parents("#mw_list").find("#listBox").css("top",c * p *-1-20);
				}else{
					var p = y / h;//百分比
					$this.next().css({top:y});//设置红色的滚动条的位置
					$this.parents("#mw_list").find("#listBox").css("top",c * p *-1);
				}
				autoSelect();
			});
			/***************************************自定义滚动条***************************************/
			
			/***************************************音乐播放***************************************/
			//格式化时间和获取百分百
			function formateTime($audioDom){
				var totalTime = $audioDom.duration;// 视频的总时长（单位：s）
				var m = Math.floor(totalTime / 60);// 分钟
				var s = Math.floor(totalTime % 60);// 秒
				var totalMS = (m < 10 ? ("0" + m) : m) + ":"+ (s < 10 ? ("0" + s) : s);// 格式化时间
				
				var currentTime = $audioDom.currentTime;// 当前播放的时长（单位：秒 ）
				var mm = Math.floor(currentTime / 60);// 分钟
				var ss = Math.floor(currentTime % 60);// 秒
				var currentMS = (mm < 10 ? ("0" + mm) : mm) + ":"+ (ss < 10 ? ("0" + ss) : ss);// 格式化当前时间
				
				var surplusTime = totalTime - currentTime;// 剩余时间
				var mmm = Math.floor(surplusTime / 60);// 分钟
				var sss = Math.floor(surplusTime % 60);// 秒
				var surplusMS = (mmm < 10 ? ("0" + mmm) : mmm) + ":"+ (sss < 10 ? ("0" + sss) : sss);// 格式化剩余时间
				var percent = (currentTime / totalTime) * 100;// 进度
				var params = {
					totalTime:totalTime,
					totalMS:totalMS,
					currentTime:currentTime,
					currentMS:currentMS,
					surplusMS:surplusMS,
					percent:percent
				};
				return params;
			};
			
			// 定义一个音乐播放器
			var amAudio = function(options){
				this.controls = options.controls || "";// 控制播放器的隐藏和展示
				this.targetId = options.targetId || "audioProxy";// 指定播放器加载的位置
				this.autoPlay = options.autoPlay || "autoPlay";// 自动播放
				this.src = options.src || "";//音乐路径
				this.loop = options.loop || 1;//是否为单曲循环 1顺序播放 2 单曲循环 3 随机播放 4	其他
				this.volume = options.volume || 0.4;// 默认音量
				this.options = options;// 参数
				this.audioDom = document.createElement("audio");// 创建一个audio对象
				this.audioDom.setAttribute("audioVolume",this.volume);//缓存音量
			};
			// 音乐播放器初始化,并播放音乐
			amAudio.prototype.init = function(){
				var $this = this;//音乐播放器
				$audioDom = $this.audioDom;//音乐播放器对象
				$audioDom.src = $this.src;//设置音乐播放地址：一定要死网络的MP3的播放地址
				$audioDom.controls = $this.controls;//设置隐藏播放器
				$audioDom.autoPlay = $this.autoPlay;//设置自动播放
				$audioDom.volume = $this.volume;// 声音的范围是[0.1-1]
				document.getElementById($this.targetId).appendChild($audioDom);//加载音乐播放器
				
				/** ****事件监听：主要监听一些动态改变的事件**** */
				// loadedmetadata / loadeddata：监听成功获取资源文件的长度后执行回调方法
				$audioDom.addEventListener("loadedmetadata",function(e) {
					if ($this.options.timecallback)// 执行回调函数
						$this.options.timecallback($this,$audioDom);
				});
				// timeupdate：监听正在播放的事件
				$audioDom.addEventListener("timeupdate", function(e) {
					if ($this.options.timeupdatecallback)// 执行回调函数
						$this.options.timeupdatecallback($this,$audioDom);
				});
			};
			// 音乐播放
			amAudio.prototype.play = function() {
				this.audioDom.play();
			};
			// 音乐暂停
			amAudio.prototype.pause = function() {
				this.audioDom.pause();
			};
			// 更改音乐播放路径，并播放音乐
			amAudio.prototype.changeSrc = function(src) {
				if (this.audioDom.played)// 当音乐在播放时先暂停
					this.audioDom.pause();
				this.src = src;
				this.audioDom.src = src;
				this.play();// 播放音乐
			};
			//更改音量
			amAudio.prototype.changeVolume = function(volume) {
				this.volume = volume;
				this.audioDom.setAttribute("audioVolume",volume);
				this.audioDom.volume = volume;
			};
			//静音
			amAudio.prototype.staticVolume = function(callback) {
				if(this.volume==0){
					var dataVolume = this.audioDom.getAttribute("audiovolume");
					this.volume = dataVolume;
					this.audioDom.volume = dataVolume;
					if(callback)callback(dataVolume);
				}else{
					this.volume = 0;
					this.audioDom.volume = 0;
					if(callback)callback(0);
				}
			};
/*************************************************************************************************************************/		
			
			//参数
			var audioOptions = {
				timecallback:function($this,audioDom){
					var params = formateTime(audioDom);
					//改变播放进度
					$(".progress_load").mousedown(function(e) {
						var x = e.clientX;// 鼠标点击的x轴的位置
						var left = $(this).offset().left;// 当前元素的left值
						var w = x - left;
						var tw = $(this).width() - 10;// 当前元素的宽度
						// 计算百分比值
						var percent = w / tw;
						var current = params.totalTime * percent;//计算出当前的时间
						//console.log("w="+w+",tw="+tw+",percent="+percent+",crtime="+crtime)
						audioDom.currentTime = current;// 
						$("#play").trigger("click");//触发播放按钮
					});
				},
				timeupdatecallback : function(audioobj,$audioDom) {
					var params = formateTime($audioDom);
					
					$("#surplus_timer").html(params.surplusMS);
					$("#timer").html(params.currentMS);
					$("#progress_percent").width(params.percent + "%");
					$("#progress_btn").css("left",(params.percent + "%"));
					
					if(params.percent>=100){//顺序播放
						if(audioobj.loop == 1){
							$("#next").trigger("click");
						}else if(audioobj.loop==2){
							$audioDom.currentTime = 0;
							$("#progress_percent").width("0%");
							$("#progress_btn").css("left",0);
						}else if(audioobj.loop==3){
							//单曲循环或者随机播放(产生一个随机数(0-length))
							
						}
					}
				}
			};
			
			var audio = new amAudio(audioOptions);// 实例化一个播放器
			audio.init(); //初始化音乐播放器
			$(".volumeLine").height((audio.volume)*100+"%");//初始化音量显示条
			$(".volumeBtn").css("top",((1-audio.volume) * 100)+"%");//初始化音量显示条上的按钮
			
			var index = 0;//用来定位目前播放第几首歌曲
			var length = $("#playList").find(".track-item").length;//获取音乐列表中音乐的总个数
			var nextTimeOut = null;
			var prevTimeOut = null;
			
			//单击播放列表中的音乐播放音乐，默认播放第一首
			$("#playList").find(".track-item").click(function(){
				var $link = $(this).find(".playitems");//获取到音乐对象
				var src = $link.data("src");//获取到音乐的地址
				audio.changeSrc(src);//切换音乐路径，并播放音乐
				$(this).find(".liPlace").addClass("onplayed");
				$(this).siblings().find(".liPlace").removeClass("onplayed");
				$("#play").hide();//隐藏播放按钮
				$("#pause").show();//显示暂停按钮
				index = $(this).index();//获取当前音乐是第几首
			}).eq(0).trigger("click");
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
			//上一首
			$("#prev").on("click",function(){
				clearTimeout(prevTimeOut);
				prevTimeOut = setTimeout(function(){
					index--;
					if(index < 0)index = length-1;
					$("#playList").find(".track-item").eq(index).trigger("click");
				}, 300);
			});
			//下一首
			$("#next").on("click",function(){ 
				clearTimeout(nextTimeOut);
				nextTimeOut = setTimeout(function(){
					index++;
					if(index > (length-1))index = 0;
					$("#playList").find(".track-item").eq(index).trigger("click");
				}, 300);
			});
			//静音
			$("#volume").click(function(){
				var $this = $(this);
				audio.staticVolume(function(p){
					if(p==0){
						$this.toggleClass("staticvolume staticvolume_none");
					}else{
						$this.toggleClass("staticvolume staticvolume_none");
					}
					$(".volumeLine").height((p*100)+"%");
					$(".volumeBtn").css("top",((1-p)*100)+"%");
				});
			});
			
			//音量的调节
			var volumeTime = null;
			var ishow = false;
			$("#volume").hover(function(){
				$(".soundBox").show();
				$(".soundBox").hover(function(){
					ishow = true;
				},function(){
					ishow = false;
				});
				//点击改变音量
				$("#soundLine").mousedown(function(e){
					var y = e.clientY;//鼠标单击X轴的位置
					var top = $(this).offset().top;//音量进度条的left值
					var h = y - top;//求出音量条显示的宽度
					var th =  $(this).height() - 10;//进度条的总宽度
					//求出百分比
					var percent = (th - h) / th ;
					//console.log("y = "+y+",top = "+top+",percent="+percent);
					$(".volumeLine").height((percent * 100)+"%");//设置显示条的高度
					$(".volumeBtn").css("top",((1-percent) * 100)+"%");
					if((1-percent)>=1){
						$("#volume").addClass("staticvolume_none").removeClass("staticvolume");
						$(".volumeBtn").css("top","100%");
					}else{
						$("#volume").addClass("staticvolume").removeClass("staticvolume_none");
						$(".volumeBtn").css("top",((1-percent) * 100)+"%");
					}
					audio.changeVolume(percent<0.01?0:percent);//改变音量
				});
				var isdown = false;//音量按钮是否按下
				//拖动改变音量
				$(".volumeBtn").mousedown(function(){
					isdown = true;//按下音量按钮
					if(isdown){
						$(".volumeBtn").mousemove(function(){
							//。。。。。。。。。。。。。。鼠标拖拽
						});
					}
				});
			},function(){
				clearTimeout(volumeTime);
				nextTimeOut = setTimeout(function(){
					if(!ishow){
						$(".soundBox").hide();//2s后隐藏音量框
					}
				},2000);
			});
			
			//单曲循环-------------需要重新
			$(".loop").click(function(){
				if(audio.loop == 1){
					$(this).addClass("loop_one");
					audio.loop = 2;
				}else{
					$(this).removeClass("loop_one");
					audio.loop = 1;
				}
			});
			/***************************************音乐播放***************************************/
		</script>
	</body>
</html>

