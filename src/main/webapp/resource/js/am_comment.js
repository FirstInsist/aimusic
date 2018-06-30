/**********************************************专辑评论的保存和分页展示评论列表***********************************************/
var pageNo = 0;
var pageSize = 10;
//展示评论列表
am_loadComments(pageNo,pageSize);

//加载评论列表
function am_loadComments(pageNo,pageSize){
	var sessionCommentData = sessionStorage.getItem("commentDatas");
	if(!sessionCommentData){
		var albumid = $("#submitcomment").data("albumid");
		$("#comment-list").load("http://localhost/comment/template/"+albumid+"/"+pageNo+"/"+pageSize,function(data){
			if(isEmpty(data)){
				$(this).html("<h1>暂无评论...</h1>");
			}
			//在浏览器上缓存评论列表数据
			sessionStorage.setItem("commentDatas",$("#comment-list").html());
		});
	}else{
		$("#comment-list").html(sessionCommentData);
	}
};

//保存评论
function am_saveComment(obj,e){
	stopBubble(e);
	//保存评论之前先判断是否登录
	var user = getUserInfo();
	if(isEmpty(user.img)){
		//弹出登录框
		amLogin.template();
		amLogin.login();
		return;
	}
	var albumId = $("#submitcomment").data("albumid");
	var content = $("#commentEditor").val();
	if(isEmpty(albumId)){
		//loading("没有找到对应的专辑！！！",1);
		return false;
	}
	if(isEmpty(content)){
		//loading("请输入评论...",3,true);
		$("#commentEditor").select();
		return false;
	}
	if(isNotEmpty(content) && content.length>200){
		//loading("评论的长度不能超过200个字符...",2);
		$("#commentEditor").focus();
		return false;
	}
	var message = content;
	$("#commentEditor").val("");
	//控制用户重复提交
	$(obj).text("提交中...").removeAttr("onclick");
	$.ajax({
		type:"post",
		data:{"content":message},
		beforeSend:function(){
			//loading("请稍后，数据提交中...");
		},
		error:function(){
			//loading("remove",1);
			$(obj).text("提交").attr("onclick","am_saveComment(this)");
		},
		url:"/comment/save/"+albumId,
		success:function(data){
			var jdata = $.trim(data);
			if(jdata == "logout"){
				//弹出登录框
				amLogin.template();
			}else if(jdata == "fail"){
				//loading("保存失败！！！",1);
			}else if(jdata == "success"){
				$(obj).text("提交").attr("onclick","am_saveComment(this)");
				//loading("添加成功",1);
				$("#commentEditor").val("");
				var user = getUserInfo();
				$("#comment-list").prepend("<div class='item animated rollIn'>"+
				"		<a href='javascript:void(0);' class='avatar-wrapper' >"+
				"			<img src='"+user.img+"' alt='BLACK8' class='avatar rounded'>"+
				"		</a>"+
				"		<div class='item-wrapper'>"+
				"			<p class='helper'>"+
				"				<a href='javascript:void(0);' class='username' target='_blank'>"+user.username+"</a>"+
				"			</p>"+
				"			<div class='comment-ct'>"+
				"				<p class='the-comment'>"+content+"</p>"+
				"			</div>"+
				"			<div class='helper clearfix'>"+
				"				1秒前"+
				"				&nbsp;&nbsp;来自："+user.address+
				"				&nbsp;&nbsp;"+
				"				<a href='javascript:;' class='btn-reply btn-action-reply'>回复</a>&nbsp;&nbsp;"+
				"				<a class='btn-vote btn-action-vote' href='javascript:;'><span>赞</span></a>"+
				"			</div>"+
				"		</div>"+
				"	</div>");
			};
		}
	});
};
/**********************************************专辑评论的保存和分页展示评论列表***********************************************/

/**********************************************滚动加载评论***********************************************/
var albumid = $("#submitcomment").data("albumid");
var pageNo = 0;
var pageSize = 10;
var loaded = true;//控制滚动的开关

$(window).scroll(function () {
	//获取条总数
    var totalCount = $(".item").eq(0).data("itemcount");
  //如果总数都小于当前显示的数量，代表只有一页
    if(totalCount <= pageSize){
    	loaded = false;
    	//在浏览器上缓存评论列表数据
		sessionStorage.setItem("commentDatas",$("#comment-list").html());
    	return;
    }
    //总页数
    var totalPage = Math.ceil(totalCount / pageSize); 
	if(pageNo >= totalPage){
		loaded =false;
		//在浏览器上缓存评论列表数据
		sessionStorage.setItem("commentDatas",$("#comment-list").html());
		return ;
	}  
		
	var bot = 10; //bot是底部距离的高度
	
    if (loaded && (bot + $(window).scrollTop()) >= ($(document).height() - $(window).height())) {
       //当底部基本距离+滚动的高度〉=文档的高度-窗体的高度时；
        //我们需要去异步加载数据了
        loaded = false;
        pageNo++;
        //loading("评论努力加载中....");
        $.ajax({
    		type:"post",
    		url:"/comment/template/"+albumid+"/"+(pageNo * pageSize)+"/"+pageSize,
    		error:function(){
    			loaded=true;
    			//loading("remove");
    		},
    		success:function(jdata){
    			//loading("评论加载成功...",1);
    			loaded = true;
    			$("#comment-list").append(jdata);
    		}
        });
    }
});
/**********************************************滚动加载评论***********************************************/