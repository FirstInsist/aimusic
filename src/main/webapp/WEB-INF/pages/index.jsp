<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>爱音乐</title>
		<%@include file="/WEB-INF/common/common.jsp" %>
	</head>
	<body>
		<!--外部盒子 start-->
		<div class="warp">
			<%@include file="/WEB-INF/common/header.jsp" %>
			
			<!--w_content start-->
			<div class="w_content w1000">
				<!--c_warpL start-->
				<div class="c_warpL">
					
					<!-- S banner图集  -->
					<div id="bannerbox">
						<a href="#" class="bannerPre" title="上一页"></a>
						<a href="#" class="bannerNext" title="下一页"></a>
						<ul id="imgbox">
							<li><a href="javascript:void(0);"><img src="img/banner1.jpg" title=""/></a></li>
							<li><a href="javascript:void(0);"><img src="img/banner2.jpg" title=""/></a></li>
							<li><a href="javascript:void(0);"><img src="img/banner3.jpg" title=""/></a></li>
							<li><a href="javascript:void(0);"><img src="img/banner4.jpg" title=""/></a></li>
						</ul>
						<ol id="numol">
							<li class="active">1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
						</ol>
					</div>
					<!-- E banner图集  -->
					
					<!-- S 新歌推荐 -->
					<div class="mis newMis">
						<div class="m_title">
							<ul>
								<li><h2>新歌推荐</h2></li>
								<li>
									<a href="play" target="_blank">
										<span class="iconfont icon-play m_play"></span>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="iconfont icon-add m_add"></span>
									</a>
								</li>
							</ul>
							<div style="clear: both;"></div>
						</div>
						<div class="m_list">
							<ol>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="封印（Excited）">封印（Excited）</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="鹿晗">鹿晗</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">心跳 (《女汉子真爱公式》电影主题曲)</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="汪苏泷">汪苏泷</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="真心话太冒险">真心话太冒险</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="TFBOYS">TFBOYS</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="到不了 (《寻找爱的冒险》电视剧插曲)">到不了 (《寻找爱的冒险》电视剧插曲)</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="陈翔">陈翔</a>
										</span>
									</h5>
								</li>
							</ol>
						</div>
					</div>
					<!-- E 新歌推荐 -->
					
					<!-- S 热歌推荐 -->
					<div class="mis hotMis">
						<div class="m_title">
							<ul>
								<li><h2>热歌推荐</h2></li>
								<li>
									<a href="#">
										<span class="iconfont icon-play m_play"></span>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="iconfont icon-add m_add"></span>
									</a>
								</li>
							</ul>
							<div style="clear: both;"></div>
						</div>
						<div class="m_list">
							<ol>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="封印（Excited）">封印（Excited）</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="鹿晗">鹿晗</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">心跳 (《女汉子真爱公式》电影主题曲)</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="汪苏泷">汪苏泷</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="当爱靠近">当爱靠近</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="林峯">林峯</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="真心话太冒险">真心话太冒险</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="TFBOYS">TFBOYS</a>
										</span>
									</h5>
								</li>
								<li>
									<h5>
										<span class="music_name">
											<a href="#" title="到不了 (《寻找爱的冒险》电视剧插曲)">到不了 (《寻找爱的冒险》电视剧插曲)</a>
										</span>
										<span class="music_singer ">
											<a href="#" title="陈翔">陈翔</a>
										</span>
									</h5>
								</li>
							</ol>
						</div>
					</div>
					<!-- E 热歌推荐 -->
					
					<div style="clear: both;"></div>
					
					<!-- S 精选集-->
					<div class="specialMis">
						<div class="m_title">
							<h2>精选集</h2>
							<span>|</span>
							<a href="#" class="m_mo">更多</a>
						</div>
						<div class="m_list">
							<ul>
								<li>
									<div class="m_img">
										<a href="#"><img src="img/bb.png" width="164" height="164"/></a>
									</div>
									<div class="m_desc">
										<a href="#"><span>相恋跨越时空</span></a>
									</div>
								</li>
								<li>
									<div class="m_img">
										<a href="#"><img src="img/bb.png" width="164" height="164"/></a>
									</div>
									<div class="m_desc">
										<a href="#"><span>相恋跨越时空</span></a>
									</div>
								</li>
								<li>
									<div class="m_img">
										<a href="#"><img src="img/bb.png" width="164" height="164"/></a>
									</div>
									<div class="m_desc">
										<a href="#"><span>相恋跨越时空</span></a>
									</div>
								</li>
								<li class="mr0">
									<div class="m_img">
										<a href="#"><img src="img/bb.png" width="164" height="164"/></a>
									</div>
									<div class="m_desc">
										<a href="#"><span>相恋跨越时空</span></a>
									</div>
								</li>
								<li>
									<div class="m_img">
										<a href="#"><img src="img/bb.png" width="164" height="164"/></a>
									</div>
									<div class="m_desc">
										<a href="#"><span>相恋跨越时空</span></a>
									</div>
								</li>
								<li>
									<div class="m_img">
										<a href="#"><img src="img/bb.png" width="164" height="164"/></a>
									</div>
									<div class="m_desc">
										<a href="#"><span>相恋跨越时空</span></a>
									</div>
								</li>
								<li>
									<div class="m_img">
										<a href="#"><img src="img/bb.png" width="164" height="164"/></a>
									</div>
									<div class="m_desc">
										<a href="#"><span>相恋跨越时空</span></a>
									</div>
								</li>
								<li class="mr0">
									<div class="m_img">
										<a href="#"><img src="img/bb.png" width="164" height="164"/></a>
									</div>
									<div class="m_desc">
										<a href="#"><span>相恋跨越时空</span></a>
									</div>
								</li>
							</ul>
							<div style="clear: both;"></div>
						</div>
					</div>
					<!-- E 精选集-->
					
				</div>
				<!--end c_warpL-->
				
				<!--c_warpR start-->
				<div class="c_warpR">
					
					<!-- S 登录模块 -->
					<div class="c_logn opacity50">
						<div class="l_qlogn">
							<span>快速登陆</span>
							<ul>
								<li>
									<a href="#" class="weibo">
										<b class="icon"></b>
									</a>
								</li>
								<li>
									<a href="#" class="qq">
										<b class="icon"></b>
									</a>
								</li>
							</ul>
						</div>
						<div class="l_mlogin">
							<a href="#" class="ml">登录</a>	
							<a href="#" class="mz">免费注册</a>
						</div>
						<div class="l_wx">
							<img src="img/qrcode_for_gh_18fb7d77f14f_258.jpg"/>
							<span>关注爱音乐微信精彩内容同分享</span>
						</div>
					</div>
					<!-- E 登录模块 -->
					
					<!-- S 排行榜-->
					<div class="mis rankMis">
						<div class="m_title">
							<ul>
								<li><h2>排行榜</h2></li>
								<li>
									<a href="#">
										<span class="iconfont icon-play m_play"></span>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="iconfont icon-add m_add"></span>
									</a>
								</li>
							</ul>
							<div style="clear: both;"></div>
						</div>
						<div class="m_list">
							<ol>
								<li>
									<span class="rank_num_top">01.</span>
									<a href="#" title="心碎大道 (Live) (选择导师：刘欢)" class="rank_list_top">
										<img src="img/0040lYVF3dZDIV.jpg" width="50" height="50" alt="中国好歌曲第三季 第6期" title="中国好歌曲第三季 第6期"/>
										<span class="music_name sub10">心碎大道 (Live) (选择导师：刘欢)</span>
									</a>
									<span class="music_singer">
										<a href="#" title="朱婧汐">朱婧汐</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">02</span>
									<span class="music_name">
										<a href="#" title="当爱靠近" class="sub10">当爱靠近</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="林峯">林峯</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">03</span>
									<span class="music_name">
										<a href="#" title="当爱靠近" class="sub10">当爱靠近</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="林峯">林峯</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">04</span>
									<span class="music_name">
										<a href="#" title="封印（Excited）" class="sub10">封印（Excited）</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="鹿晗">鹿晗</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">05</span>
									<span class="music_name">
										<a href="#" title="当爱靠近" class="sub10">当爱靠近</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="林峯">林峯</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">06</span>
									<span class="music_name">
										<a href="#" title="心跳 (《女汉子真爱公式》电影主题曲)" class="sub10">心跳 (《女汉子真爱公式》电影主题曲)</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="汪苏泷">汪苏泷</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">07</span>
									<span class="music_name">
										<a href="#" title="当爱靠近" class="sub10">当爱靠近</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="林峯">林峯</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">08</span>
									<span class="music_name">
										<a href="#" title="当爱靠近" class="sub10">当爱靠近</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="林峯">林峯</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">09</span>
									<span class="music_name">
										<a href="#" title="真心话太冒险" class="sub10">真心话太冒险</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="TFBOYS">TFBOYS</a>
									</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<span class="rank_num">10</span>
									<span class="music_name">
										<a href="#" title="到不了 (《寻找爱的冒险》电视剧插曲)" class="sub10">到不了 (《寻找爱的冒险》电视剧插曲)</a>
									</span>
									<span class="music_singer ">
										<a href="#" title="陈翔">陈翔</a>
									</span>
									<div style="clear: both;"></div>
								</li>
							</ol>
						</div>
					</div>
					
					<div style="clear: both;"></div>
						
					<!-- E 排行榜-->
					
					<!-- S 热门歌手-->
					<div class="hotSinger">
						<div class="s_title">
							<h2>热门歌手</h2>
							<span>|</span>
							<a href="#" class="m_mo">更多</a>
						</div>
						<div class="s_list">
							<ul>
								<li>
									<div class="sin_img">
										<a href="#"><img src="img/0040lYVF3dZDIV.jpg" width="70" height="70"/></a>
									</div>
									<div class="sin_desc">
										<a href="#"><span>韩红</span></a>
									</div>
								</li>
								<li>
									<div class="sin_img">
										<a href="#"><img src="img/0040lYVF3dZDIV.jpg" width="70" height="70"/></a>
									</div>
									<div class="sin_desc">
										<a href="#"><span>韩红</span></a>
									</div>
								</li>
								<li class="mr0">
									<div class="sin_img">
										<a href="#"><img src="img/0040lYVF3dZDIV.jpg" width="70" height="70"/></a>
									</div>
									<div class="sin_desc">
										<a href="#"><span>韩红</span></a>
									</div>
								</li>
								<li>
									<div class="sin_img">
										<a href="#"><img src="img/0040lYVF3dZDIV.jpg" width="70" height="70"/></a>
									</div>
									<div class="sin_desc">
										<a href="#"><span>韩红</span></a>
									</div>
								</li>
								<li>
									<div class="sin_img">
										<a href="#"><img src="img/0040lYVF3dZDIV.jpg" width="70" height="70"/></a>
									</div>
									<div class="sin_desc">
										<a href="#"><span>韩红</span></a>
									</div>
								</li>
								<li class="mr0">
									<div class="sin_img">
										<a href="#"><img src="img/0040lYVF3dZDIV.jpg" width="70" height="70"/></a>
									</div>
									<div class="sin_desc">
										<a href="#"><span>韩红</span></a>
									</div>
								</li>
							</ul>
							<div style="clear: both;"></div>
						</div>
						<div class="sin_mo">
							<ul>
								<li><a href="#">华语男歌手</a></li>
								<li><a href="#">华语女歌手</a></li>
								<li class="mr0"><a href="#">华语组合</a></li>
								<li><a href="#">华语男歌手</a></li>
								<li><a href="#">华语女歌手</a></li>
								<li class="mr0"><a href="#">华语组合</a></li>
								<li><a href="#">华语男歌手</a></li>
								<li><a href="#">华语女歌手</a></li>
								<li class="mr0"><a href="#">华语组合</a></li>
								<li><a href="#">华语男歌手</a></li>
								<li><a href="#">华语女歌手</a></li>
								<li class="mr0"><a href="#">华语组合</a></li>
							</ul>
						</div>
					</div>
					<!-- E 热门歌手-->
				</div>
				<!--end c_warpR-->
				
			</div>
			<!--end w_content-->
		
			<%@include file="/WEB-INF/common/footer.jsp" %>
			
		</div>
		<!--end 外部盒子-->
		
		<script src="${basePath}/js/am_index.js" type="text/javascript" charset="utf-8"></script>
		<script src="${basePath}/js/am_login.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
