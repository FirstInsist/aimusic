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
			<div class="w_content w1000 w_album">
				<!-- S 专辑筛选-->
				<div class="choosebox">
					<div class="choo_title">专辑筛选</div>
					<div class="choo_language">
						<span class="li_title">按语言：</span>
						<ul>
							<li><a href="javascript:;" title="全部">全部</a></li>
							<li><a href="javascript:;" title="国语">国语</a></li>
							<li><a href="javascript:;" title="粤语">粤语</a></li>
							<li><a href="javascript:;" title="英语">英语</a></li>
							<li><a href="javascript:;" title="韩语">韩语</a></li>
							<li><a href="javascript:;" title="日语">日语</a></li>
							<li><a href="javascript:;" title="法语">法语</a></li>
							<li><a href="javascript:;" title="西班牙语">西班牙语</a></li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					<div class="choo_genres">
						<span class="li_title">按流派：</span>
						<ul>
							<li><a href="javascript:;" title="全部">全部</a></li>
							<li><a href="javascript:;" title="国语">国语</a></li>
							<li><a href="javascript:;" title="粤语">粤语</a></li>
							<li><a href="javascript:;" title="英语">英语</a></li>
							<li><a href="javascript:;" title="韩语">韩语</a></li>
							<li><a href="javascript:;" title="日语">日语</a></li>
							<li><a href="javascript:;" title="法语">法语</a></li>
							<li><a href="javascript:;" title="西班牙语">西班牙语</a></li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					<div class="choo_years">
						<span class="li_title">按年代：</span>
						<ul>
							<li><a href="javascript:;" title="全部">全部</a></li>
							<li><a href="javascript:;" title="国语">国语</a></li>
							<li><a href="javascript:;" title="粤语">粤语</a></li>
							<li><a href="javascript:;" title="英语">英语</a></li>
							<li><a href="javascript:;" title="韩语">韩语</a></li>
							<li><a href="javascript:;" title="日语">日语</a></li>
							<li><a href="javascript:;" title="法语">法语</a></li>
							<li><a href="javascript:;" title="西班牙语">西班牙语</a></li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					<div class="choo_prices">
						<span class="li_title">按价格：</span>
						<ul>
							<li><a href="javascript:;" title="全部">全部</a></li>
							<li><a href="javascript:;" title="免费">免费</a></li>
							<li><a href="javascript:;" title="付费">付费</a></li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					<div class="choo_category">
						<span class="li_title">按类别：</span>
						<ul>
							<li><a href="javascript:;" title="全部">全部</a></li>
							<li><a href="javascript:;" title="免费">免费</a></li>
							<li><a href="javascript:;" title="付费">付费</a></li>
						</ul>
						<div style="clear: both;"></div>
					</div>
					<div class="choo_company">
						<span class="li_title">按唱片公司：</span>
						<ul>
							<li><a href="javascript:;" title="全部">全部</a></li>
							<li><a href="javascript:;" title="免费">免费</a></li>
							<li><a href="javascript:;" title="付费">付费</a></li>
						</ul>
						<div style="clear: both;"></div>
					</div>
				</div>
				<!-- E 专辑筛选-->
				
				<!-- S 专辑主要内容-->
				<div class="albumbox">
					<div class="sortTag">
						<p>
							<a href="javascript:;" class="current">最新</a>
							<a href="javascript:;">最热</a>
						</p>
					</div>
					<div class="albumList">
						<ul id="albumListBox">
							<!-- <li>
								<a href="/album/1">
									<img src="http://i.gtimg.cn/music/photo/mid_album_150/C/4/001CZpfc46waC4.jpg" alt="She’ll be fine" title="She’ll be fine">
									<span class="icon_play" title="播放"></span>
								</a>
								<h5><a href="#" title="She’ll be fine">She’ll be fine</a></h5>
								<p><a href="#" title="SHE'S"> SHE'S </a></p>
							</li> -->
						</ul>
						<div style="clear: both;"></div>
					</div>
				</div>
				<!-- E 专辑主要内容-->
				
				<!-- S 专辑分页-->
				<div class="albumPage">
					<a href="javascrit:void(0);">上一页</a>
					<a href="javascrit:void(0);">1</a>
					<a href="javascrit:void(0);">2</a>
					<a href="javascrit:void(0);">下一页</a>
				</div>
				<!-- E 专辑分页 -->
			</div>
			<!-- E 主要内容 -->
			
			<%@include file="/WEB-INF/common/footer.jsp" %>
		</div>
		<!-- E 外部盒子 -->
		
		
		<script type="text/javascript">
			$(function(){
		  		$("#albumListBox").load("/album/template");
		  	});
		</script>
	</body>
</html>

