<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/WEB-INF/tlds/am.tld" prefix="am"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>编辑专辑</title>
<!-- 字体图标库样式 -->
<link rel="stylesheet" type="text/css" href="http://at.alicdn.com/t/font_1457488505_9083552.css"/>
<!-- 爱音乐网站的页面样式 -->
<link href="${basePath}/css/index.css" rel="stylesheet" type="text/css">
<!-- css3动画样式 -->
<link href="${basePath}/css/animate.css" rel="stylesheet" type="text/css">
<!-- jquery库 -->
<script src="${basePath}/js/jquery-1.11.2.min.js" type="text/javascript" charset="utf-8"></script>
<!-- 自定义js -->
<script src="${basePath}/js/honey.js" type="text/javascript" charset="utf-8"></script>
<!-- 爱音乐公共js代码 -->
<script src="${basePath}/js/am_header.js" type="text/javascript" charset="utf-8"></script>
<link href="${basePath}/js/upload/upload.css" rel="stylesheet" type="text/css">
<style type="text/css">
.ml_icon{background-image:url(${basePath}/images/ml_icon.png);background-repeat:no-repeat}
a{text-decoration:none}
a:hover{text-decoration:none}
.wth682{width:682px}
.wth652{width:652px;padding:15px;background:#eaebec}
.wth622{width:622px;padding:0 15px 15px 45px;background:#eaebec}
.borderbot{border-bottom:1px solid #eaebec;padding-bottom:26px;padding-top:14px}
#p_label{height:30px}
#add_content{width:1000px;margin:0 auto;font-size:12px;padding-top:50px}
#add_content .con_bt{width:100%;padding-top:10px;padding-bottom:20px}
#add_content .con_bt a{display:block;width:100px;height:40px;margin-left:12px;background:#3b4047;color:#fff}
#add_content .con_bt a:hover{background:#28b779}
#add_content .con_bt span{display:block;width:14px;height:14px;background-position:-75px -27px;margin-left:10px;margin-top:13px;float:left}
#add_content .con_bt p{float:left;line-height:38px;padding-left:6px}
#add_content .con_left{width:220px;margin-left:12px;float:left}
#add_content .conl_nr{width:212px;height:230px;border:4px dotted #eaebec;-moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px;position:relative}
#add_content .conl_nr .pic_area{width:100%;height:230px;background:url(${basePath}
/images/pic_bg.png) no-repeat 33px 33px}
#add_content .conl_nr .up_btn{height:30px;position:absolute;bottom:20px;left:50%;margin-left:-45px;z-index:9}
#add_content .conl_nr .up_btn a{display:block;width:90px;height:30px;background:#28b779;color:#fff}
#add_content .conl_nr .up_btn a:hover{background:#1f989b}
#add_content .conl_nr .up_btn span{display:block;width:14px;height:14px;background-position:-58px -26px;margin-left:10px;margin-top:7px;float:left}
#add_content .conl_nr .up_btn p{line-height:30px;padding-left:6px;float:left}
#add_content .con_right{width:710px;margin-left:30px;float:left}
#add_content .conr_nr{width:100%;height:auto;margin-bottom:26px;color:#565656}
#add_content .conr_nr .text{background:#f7f7f7;border:1px solid #eaebec;text-indent:12px;float:left}
#add_content .conr_nr .text1{background:#fff;border:1px solid #ddd;text-indent:12px;float:left}
#add_content .conr_nr .kc_name{width:300px;height:36px}
#add_content .conr_nr .kc_infor{width:680px;height:168px}
#add_content .conr_nr .kc_infor1{width:652px;height:130px}
#add_content .conr_nr .kc_infor2{width:622px;height:130px}
#add_content .conr_nr span{display:block;float:left}
#add_content .conr_nr .star{padding-left:10px;padding-top:9px;color:#ff3000}
#add_content .conr_nr .choose{width:80px;height:30px;line-height:30px;background:#1f989b;color:#fff;text-align:center;float:left}
#add_content .conr_nr .star_all{padding-left:12px;padding-top:8px;float:left}
#add_content .conr_nr .star_all a{display:block;width:15px;height:14px;background-position:-131px -27px;margin-left:5px;float:left}
#add_content .conr_nr .star_all a.select{background-position:-178px 0}
#add_content .conr_nr .add_bar{display:block;height:30px;background:#3b4047;color:#fff;float:right}
#add_content .conr_nr .add_bar:hover{background:#28b779}
#add_content .conr_nr .add_bar span{display:block;width:14px;height:14px;background-position:-75px -27px;margin-left:10px;margin-top:8px;float:left}
#add_content .conr_nr .add_bar p{float:left;line-height:30px;padding-left:6px}
#add_content .conr_nr .zj_name{width:105px;height:36px}
#add_content .conr_nr .zj_smname{width:480px;height:36px}
#add_content .conr_nr .zj_smsmname{width:450px;height:36px}
#add_content .conr_nr .add_icon,#add_content .conr_nr .add_nr,#add_content .conr_nr .delet{display:block;width:36px;height:36px;background:silver;margin-left:4px;float:right}
#add_content .conr_nr .add_icon:hover{background:#28b779}
#add_content .conr_nr .add_icon span{display:block;width:14px;height:14px;background-position:-75px -27px;margin-left:12px;margin-top:11px}
#add_content .conr_nr .delet:hover{background:#ff3000}
#add_content .conr_nr .delet span{display:block;width:16px;height:17px;background-position:-92px -23px;margin-left:11px;margin-top:9px}
#add_content .conr_nr .add_nr:hover{background:#1f989b}
#add_content .conr_nr .add_nr span{display:block;width:17px;height:17px;background-position:-111px -23px;margin-left:10px;margin-top:9px}
#add_content .conr_nr .submit{width:80px;height:30px;border:0;background:#28b779;color:#fff;margin-right:12px;float:left;cursor:pointer}
#add_content .conr_nr .cancle:hover,#add_content .conr_nr .submit:hover{background:#3b4047}
#add_content .conr_nr .cancle{width:80px;height:30px;border:0;background:#f08c0a;color:#fff;float:left;cursor:pointer}
.pic_area img{width:100%;height:72%}
.wth682{margin-top:5px}

</style>
</head>

<body>
	<!-- 头部 -->
	
	
	
	<div id="add_content">
		<form id="album_form" method="post">
			<input type="hidden" id="album_id" value="${album.id}" name="id" />
			<div class="con_bt" style="visibility: hidden;">
				<a href="#"><span class="ml_icon"></span><p>编辑专辑</p></a>
			</div>
			<div class="con_left">
				<div class="conl_nr">
					<!-- 专辑图片 -->
					<div class="pic_area" data-img="${album.img}" id="album_img">
						<c:if test="${not empty album.img}">
							<img alt="" src="${basePath}/${album.img}">
						</c:if>
					</div>
					<!-- 专辑图片的地址 -->
					<input type="hidden" id="album_img_inp" value="${album.img}" name="img" />
					<!-- 上传专辑图片的按钮 -->
					<div class="up_btn">
						<span id="album_upload_img"></span>
					</div>
				</div>
			</div>

			<div class="con_right">
				<div class="conr_nr">
					<input type="text" class="text kc_name" name="title" id="album_title" value="${album.title}" placeholder="请输入专辑名称..." />
					<span class="star">*</span> 分类：<select style="padding: 6px;" name="musicType.id" id="album_type">
						<option value="1" ${album.musicType.id==1?"selected='selected'":""}>摇滚</option>
						<option value="2" ${album.musicType.id==2?"selected='selected'":""}>流行</option>
						<option value="3" ${album.musicType.id==3?"selected='selected'":""}>重金属</option>
					</select>
					<div class="clearfix"></div>
				</div>
				<div class="conr_nr">
					<textarea id="album_desc" class="text kc_infor" name="description"
						placeholder="请输入专辑描述...">${album.description}</textarea>
					<span class="star">*</span>
					<div class="clearfix"></div>
				</div>

				<div class="conr_nr">
					<div class="wth682 borderbot">
						<div class="choose">标签：</div>
						<div class="star_all" style="position: relative;top: -8px;">
							<input type="text" name="label" value="${album.label}"
								placeholder="请输入专辑标签..." id="album_label">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>

				<div class="conr_nr">
					<div class="wth682">
						<input name="" type="button" value="完成" data-opid="${peroid.id}" onclick="saveAlbum(this)" class="submit" />
						<c:if test="${not empty id}">
							<input name="" type="button" onclick="album_showview(this)" value="预览" class="cancle" />
						</c:if>
						<input name="" type="button" value="取消" style="margin-left: 10px" class="cancle" />
					</div>
				</div>
				
				<c:if test="${not empty id}">
					<!-- 上传专辑中的MP3文件的按钮 -->
					<div class="conr_nr">
						<div class="wth682 borderbot">
							<a href="#" class="add_bar"><span id="album_upload_mp3"></span></a>
							<div class="clearfix"></div>
						</div>
					</div>
					<!-- 显示上传的专辑中MP3文件列表 -->
					<div class="conr_nr" id="album_mp3box">
						<c:forEach items="${album.musics}" var="music">
							<div class="wth682 album_items" data-opid="${music.id}" data-sizestring="" data-size="${music.timelength}" data-url="${music.path}">
								<input name="m_name" onblur='album_updatemusic(this)' value="${music.title}" type="text" class="text zj_name" style="width: 202px" placeholder="音乐名称">
								<span class="star">*</span> 
								<input name="m_album" onblur="album_updatemusic(this)" value="${album.title}" type="text" class="text zj_name" placeholder="专辑">
								<span class="star">*</span> 
								<input name="m_singer" onblur='album_updatemusic(this)' value="${music.singer}" type="text" class="text zj_name" placeholder="演唱者" value="未知">
								<span class="star">*</span> 
								<input name="m_time" onblur='album_updatemusic(this)' value="${music.timer}" type="text" class="text zj_name" placeholder="时间">
								<span class="star">*</span> 
								<a href="javascript:void(0);" class="delet" data-opid="${music.id}" onclick="album_deletemusic(this)" title="删除"><span class="ml_icon"></span></a> 
								<a href="javascript:void(0);" class="add_nr" data-opid="${music.id}" onclick="album_parsemusic(this)" title="解析mp3"><span class="ml_icon"></span></a>
								<div class="clearfix"></div>
							</div>
						</c:forEach>
					</div>
				</c:if> 
			</div>
			<div class="clearfix"></div>
		</form>
	</div>

	<div style="height: 400px;width: 100%;background:#fff;"></div>

	<script type="text/javascript" src="${basePath}/js/upload/tz_upload.js"></script>
	<script type="text/javascript">
		$(function(){
			//上传专辑图片
			$.tmUpload({
				"params" : {"oldName" : $("#album_img").data("img").replace("tzmusic/", "")},
				"btnId" : "album_upload_img",
				"fileTypes" : "*.jpg",
				callback : function(data, file) {
					var jdata = eval("(" + data + ")");
					//显示刚才上传的专辑图片
					$("#album_img").data("img", jdata.url).html("<img src='/" + jdata.url + "?"+ new Date().getTime() + "'>");
					//设置专辑图片的地址
					$("#album_img_inp").val(jdata.url);
				}
			});
			
			//上传音乐
			$.tmUpload({"params" : {"dir" : "mp3"},"btnId" : "album_upload_mp3","fileTypes" : "*.mp3",callback : function(data, file) {
				var jdata = eval("(" + data + ")");
				var params = {
					"title" : jdata.name,// 音乐名称
					"singer" : "未知",//演唱者
					"timelength" : jdata.size,// 大小
					"album.id" : $("#album_id").val(),// 专辑id
					"path" : jdata.url// 音乐的路径
				};
				$.ajax({type : "post",url : "/music/save",data : params,success : function(data) {
					var cdata = eval("(" + data + ")");
					 $("#album_mp3box").append("<div class='wth682 album_items' data-opid='"+cdata.id+"' data-sizestring='"+jdata.sizeString+"'  data-size='"+jdata.size+"' data-url='"+jdata.url+"'>"
							+ "      <input name='m_name' onblur='album_updatemusic(this)' value='"
							+ jdata.name
							+ "' type='text' class='text zj_name' style='width: 202px' placeholder='音乐名称' /><span class='star'>*</span>"
							+ "      <input name='m_album' onblur='album_updatemusic(this)' value='' type='text' class='text zj_name' placeholder='专辑' /><span class='star'>*</span>"
							+ "      <input name='m_singer' onblur='album_updatemusic(this)' type='text' class='text zj_name' placeholder='演唱者' value='未知'/><span class='star'>*</span>"
							+ "      <input name='m_time' onblur='album_updatemusic(this)' type='text' class='text zj_name' placeholder='时间' /><span class='star'>*</span>"
							+ "		<a href='javascript:void(0);' class='delet' data-opid="
							+ cdata.id
							+ " onclick='album_deletemusic(this)' title='删除'><span class='ml_icon'></span></a> "
							+ "		<a href='javascript:void(0);' class='add_nr' data-opid="
							+ cdata.id
							+ " onclick='album_parsemusic(this)' title='解析mp3'><span class='ml_icon'></span></a>"
							+ "      <div class='clearfix'></div>"
							+ "</div>");
					} 
				});//ajax
			}});
		});
		
		//保存/修改专辑信息
		function saveAlbum(obj){
			var params = $("#album_form").serializeArray();
			var url = "/album/save";
			var message = "专辑保存成功!";
			var albumId = $("#album_id").val();
			if (isNotEmpty(albumId)) {
				url = "/album/update";
				message = "专辑修改成功!";
			}
			$.ajax({
				type : "post",
				url : url,
				data : params,
				success : function(data) {
					if (data && data != "logout") {
						alert(message);
						if (isEmpty(albumId)) {//如果是新增专辑，返回当前新增的专辑页面
							window.location.href = "/album/edit/"+ data.id;
						}
					} else {
						if (data == "logout") {
							window.location.href = "/login";
						} else {
							//loading("操作失败...",2);
						}
					}
				}
			});
		};
	
		//删除专辑中音乐列表里面的音乐
		function album_deletemusic(obj){
			var opid = $(obj).data("opid");
			$.ajax({
				type : "post",
				url : "/music/delete/" + opid,
				success : function(data) {
					if (data == "success") {
						$(obj).parents(".album_items").fadeOut("slow",function() {
							$(this).remove();
						});
					} else if (data == "fail") {
						//loading("删除失败...",2);
					} else if (data == "logout") {
						window.location.href = "/login";
					}
				}
			});
		};
	
		//更新音乐
		var timer = null;
		function album_updatemusic(obj) {
			var $parent = $(obj).parents(".album_items");
			var opid = $parent.data("opid");
			clearTimeout(timer);
			var title = $parent.find("input[name='m_name']").val();
			var singer = $parent.find("input[name='m_singer']").val();
			var timer = $parent.find("input[name='m_time']").val();
			var params = {
				"id" : opid,
				"title" : title,
				"singer" : singer,
				"timer" : timer
			};
			timer = setTimeout(function() {
				$.ajax({
					type : "post",
					data : params,
					url : "/music/update",
					success : function(data) {
						if (data == "success") {
							alert("音乐更新成功");
							//loading("更新成功!",2);
						} else if (data == "fail") {
							//loading("更新失败...",2);
						} else if (data == "logout") {
							window.location.href = "/login";
						}
					}
				});
			}, 200);
		};
	
		//解析MP3
		var ptimer = null;
		function album_parsemusic(obj) {
			var $parent = $(obj).parents(".album_items");
			var path = $parent.data("url");
			clearTimeout(ptimer);
			ptimer = setTimeout(function() {
				$.ajax({
					type : "post",
					data : {"path" : path},
					url : "/parse/mp3",
					success : function(data) {
						if (data && data != "logout") {
							//loading("解析成功...",1);
							$parent.find("input[name='m_name']").val(data.songTitle);
							//$parent.find("input[name='m_album']").val(data.albumTitle);
							$parent.find("input[name='m_singer']").val(data.artist);
							$parent.find("input[name='m_time']").val(data.timeLine);
							$parent.find("input[name='m_name']").trigger("blur");
						} else {
							if (data == "logout") {
								window.location.href = "/login";
							} else {
								//loading("操作失败...",2);
							}
						}
					}
				});
			}, 200);

		};
		
		function album_showview(obj) {
			var pid = $("#album_id").val();
			window.open("/album/" + pid);
		}
	
	</script>
</body>
</html>