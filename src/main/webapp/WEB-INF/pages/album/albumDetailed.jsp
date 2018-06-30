<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>专辑-爱音乐</title>
		<%@include file="/WEB-INF/common/common.jsp" %>
	</head>
	<body>
		<!-- S 外部盒子 -->
		<div class="warp">
			<%@include file="/WEB-INF/common/header.jsp" %>
			
			<!-- S 主要内容 -->
			<div class="w_content w1000 clearfix">
				<!-- 左边 -->
				<div class="album_del_left">
					<!-- S 专辑的详细信息 -->
					<div class="al_del_info">
						<img class="al_del_pic" src="${basePath}/${album.img}" width="300" height="300" alt="${album.title}" title="${album.title}"/>
						<div class="deltailbox">
							<div class="al_del_text">
								<h2>${album.title}</h2>
								<p>艺人：</p>
								<p>语言：日语</p>
								<p>唱片公司：</p>
								<p>发行时间：2016-02-03</p>
								<p>专辑类别：${album.musicType.name}</p>
								<p>专辑风格：</p>
							</div>
							<div class="music_counts" data-spm="6856593">
								<ul class="clearfix">
									<li class="line"><em id="play_count_num">6993729</em><span>试听</span></li>
									<li class="line">1840<span>收藏</span></li>
									<li><a href="#wall" title=""><i property="v:count">278</i><span>评论</span></a></li>
								</ul>
							</div>
							<div class="album_rank" id="album_rank" typeof="v:Rating">
								<p class="clearfix">
									<span style="width:94px;">总体评分</span>
									<em property="v:value">9.4</em>
									<span property="v:best">10</span>(<i property="v:votes">175</i>人评价)
								</p>
							</div>
							<div class="star_list">
								<ul>
									<li><span class="appraise4 rankico"><em>酷爱</em></span><span style="width:100px;" class="appraise_bg"></span>140</li>
									<li><span class="appraise3 rankico"><em>好听</em></span><span style="width:17.8571428571px;" class="appraise_bg"></span>25</li>
									<li><span class="appraise2 rankico"><em>能听</em></span><span style="width:2.14285714286px;" class="appraise_bg"></span>3</li>
									<li><span class="appraise1 rankico"><em>难听</em></span><span style="width:2.14285714286px;" class="appraise_bg"></span>3</li>
									<li><span class="appraise0 rankico"><em>噪音</em></span><span style="width:2.85714285714px;" class="appraise_bg"></span>4</li>
								</ul>
							</div>
						</div>
						<div style="clear: both;"></div>
					</div>
					<!-- E 专辑的详细信息 -->
					
					<!-- S 专辑的描述 -->
					<div class="al_del_description">
						<p>${album.description}</p>
                        <!--<p class="album_info_op">
                            <a class="btn_open" href="javascript:;" name="script_btn" id="detailBtn">详细<span class="icon_open"></span></a>
                            <a class="btn_close" style="display:none;" href="javascript:;" name="script_btn" id="closeBtn">收起<span class="icon_close"></span></a>
                        </p>-->
					</div>
					<!-- E 专辑的描述 -->
					
					<!-- S 曲目列表 -->
					<div class="al_del_list">
						<div class="title">
							<h3>曲目列表</h3>
							<a href="javascript:;" name="script_btn" class="btn_play" title="播放">播放</a>
							<a href="/album/edit/${album.id}" target="_blank" name="script_btn" class="btn_add" title="添加">添加</a>
							<a href="javascript:;" name="script_btn" class="btn_fav" title="收藏">收藏</a>
							<a href="/album/add" target="_blank" name="script_btn" class="btn_fav" title="新增专辑">新增专辑</a>
							<div style="clear: both;"></div>
						</div>
						<div class="content">
							<p>
		                        <input type="checkbox" checked="checked" id="checkbox" href="javascript:;" name="script_btn">
								<label for="checkbox">全选</label>
		                    </p>
		                    <div class="divsonglist" id="playlist">
		                    	<ol>
		                    		<c:forEach items="${album.musics}" var="music" varStatus="muiscindex">
										<li class="track-item">
											<div class="track-wrapper clearfix">	
												<a href="javascript:;" data-img='${music.img}' data-title='${music.title}' data-singer='${music.singer}' data-album='${music.album.title}' data-src='${basePath}/${music.path}' class="trackname playitems ">${muiscindex.index+1}. </a>
												<span class="artist btn-play ">${music.title}</span>
												<span class="">${music.timer}</span>
											</div>		
											<!--track-detail-wrapper end-->
											<!-- <div class="list_cp">
			                    				<a href="javascript:;" title="播放" class="btn_play" stat="">播放</a>
			                    				<a href="javascript:;" title="添加" class="btn_add" stat="">添加</a>
			                    				<a href="javascript:;" mid="003hDNEk3ZcHIQ" title="喜欢" class="btn_like" stat="">喜欢</a>
			                    				<a href="javascript:;" title="收藏到歌单" class="btn_fav" stat="">收藏到歌单</a>
			                    				<a href="javascript:;" title="分享" class="btn_share" stat="">分享</a>
			                    			</div> -->
										</li>	
									</c:forEach>
		                    	</ol>
		                    </div>
						</div>
					</div>
					<!-- E 曲目列表 -->
					
					<!-- S 评论 -->
					<div class="comments_wall">
						<!--<h3>我来说两句</h3>-->
						<div class="contentbox">
							<div class="editor rounded">
								<textarea class="t_content" placeholder="请输入评论长度少于200..." id="commentEditor"></textarea>
							</div>
							<div class="editorbtn">
								<span class="fl">同步到：腾讯，微博，网易。</span>
								<span class="fr"><a href="javascript:void(0);" id="submitcomment" data-albumid="${album.id}"  onclick="am_saveComment(this,event)" class="btn">发布</a></span>
							</div>
						</div>
						<div class="comment-list" id="comment-list"></div>
						<div style="clear:both;"></div>
					</div>
					<!-- E 评论 -->
				</div>
				
				<!-- 右边 -->
				<div class="album_del_right">
					<!-- S 听过这张专辑的人 -->
					<div class="al_user_list">
						<div class="title">
			                <h3>听过这张专辑的人</h3>
			            </div>
			            <div class="content">
			            	<ul>
                                <li>
                                	<a href="#" title="kanatalia">
                                		<img src="http://img.xiami.net/res/img/default/usr50.gif" alt="kanatalia">
                                	</a>
                                	<p><a href="#">kanatalia</a></p>
                                </li>
                                <li>
                                	<a href="#" title="kanatalia">
                                		<img src="http://img.xiami.net/res/img/default/usr50.gif" alt="kanatalia">
                                	</a>
                                	<p><a href="#">kanatalia</a></p>
                                </li>
                                <li>
                                	<a href="#" title="kanatalia">
                                		<img src="http://img.xiami.net/res/img/default/usr50.gif" alt="kanatalia">
                                	</a>
                                	<p><a href="#">kanatalia</a></p>
                                </li>
                                <li class="mr0">
                                	<a href="#" title="kanatalia">
                                		<img src="http://img.xiami.net/res/img/default/usr50.gif" alt="kanatalia">
                                	</a>
                                	<p><a href="#">kanatalia</a></p>
                                </li>
                                <li>
                                	<a href="#" title="kanatalia">
                                		<img src="http://img.xiami.net/res/img/default/usr50.gif" alt="kanatalia">
                                	</a>
                                	<p><a href="#">kanatalia</a></p>
                                </li>
                                <li>
                                	<a href="#" title="kanatalia">
                                		<img src="http://img.xiami.net/res/img/default/usr50.gif" alt="kanatalia">
                                	</a>
                                	<p><a href="#">kanatalia</a></p>
                                </li>
                                <li>
                                	<a href="#" title="kanatalia">
                                		<img src="http://img.xiami.net/res/img/default/usr50.gif" alt="kanatalia">
                                	</a>
                                	<p><a href="#">kanatalia</a></p>
                                </li>
                                <li class="mr0">
                                	<a href="#" title="kanatalia">
                                		<img src="http://img.xiami.net/res/img/default/usr50.gif" alt="kanatalia">
                                	</a>
                                	<p><a href="#">kanatalia</a></p>
                                </li>
                            </ul>
			            </div>
					</div>
					<!-- E 听过这张专辑的人 -->
					
					<!-- S TA的其他专辑 -->
					<div class="other_album">
						<div class="title">
			                <h3>TA的其他专辑</h3>
			            </div>
			            <div class="al_more">
			            	<a href="#" class="al_more_link">更多</a>
			            </div>
			            <div style="clear: both;"></div>
			            <div class="content">
			            	<ul>
								<li>
									<a title="" href="#" class="al_other_img">
										<img src="http://img.xiami.net/images/album/img2/63802/21002081801443513308_3.jpg" width="55" height="55" alt="">
									</a>
									<a href="#" title="芙蓉花开" class="al_other_title">芙蓉花开</a>
									<b><a href="javascript:void(0)" title="试听 芙蓉花开" class="al_other_st">试听</a></b>
									<span class="al_other_year">2015发行</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<a title="" href="#" class="al_other_img">
										<img src="http://img.xiami.net/images/album/img2/63802/21002081801443513308_3.jpg" width="55" height="55" alt="">
									</a>
									<a href="#" title="芙蓉花开" class="al_other_title">芙蓉花开</a>
									<b><a href="javascript:void(0)" title="试听 芙蓉花开" class="al_other_st">试听</a></b>
									<span class="al_other_year">2015发行</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<a title="" href="#" class="al_other_img">
										<img src="http://img.xiami.net/images/album/img2/63802/21002081801443513308_3.jpg" width="55" height="55" alt="">
									</a>
									<a href="#" title="芙蓉花开" class="al_other_title">芙蓉花开</a>
									<b><a href="javascript:void(0)" title="试听 芙蓉花开" class="al_other_st">试听</a></b>
									<span class="al_other_year">2015发行</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<a title="" href="#" class="al_other_img">
										<img src="http://img.xiami.net/images/album/img2/63802/21002081801443513308_3.jpg" width="55" height="55" alt="">
									</a>
									<a href="#" title="芙蓉花开" class="al_other_title">芙蓉花开</a>
									<b><a href="javascript:void(0)" title="试听 芙蓉花开" class="al_other_st">试听</a></b>
									<span class="al_other_year">2015发行</span>
									<div style="clear: both;"></div>
								</li>
								<li>
									<a title="" href="#" class="al_other_img">
										<img src="http://img.xiami.net/images/album/img2/63802/21002081801443513308_3.jpg" width="55" height="55" alt="">
									</a>
									<a href="#" title="芙蓉花开" class="al_other_title">芙蓉花开</a>
									<b><a href="javascript:void(0)" title="试听 芙蓉花开" class="al_other_st">试听</a></b>
									<span class="al_other_year">2015发行</span>
									<div style="clear: both;"></div>
								</li>
							</ul>
			            </div>
					</div>
					<!-- E TA的其他专辑 -->
				</div>
			</div>
			<!-- E 主要内容 -->
			
			<%@include file="/WEB-INF/common/footer.jsp" %>
		</div>
		<!-- E 外部盒子 -->
		
		<script src="${basePath}/js/am_login.js" type="text/javascript" charset="utf-8"></script>
		<script src="${basePath}/js/am_comment.js" type="text/javascript" charset="utf-8"></script>
		
	</body>
</html>
