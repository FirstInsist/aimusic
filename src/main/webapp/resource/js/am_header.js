$(function(){
	/**********************************************头部导航切换***********************************************/
	$("#h_nav>li>a").mouseenter(function(){
	    $(this).addClass('active').siblings().removeClass('active');
	    $(this).append('<div class="Parrow"></div>');
	    $(this).siblings('a').find('.Parrow').remove();
	    var index=$(this).index();
	    $('#nav_down').find('li').eq(index).removeClass('hide');
	    $('#nav_down').find('li').eq(index).siblings('li').addClass('hide');
	});
	$("#h_nav>li>.down").each(function() {
        if($(this).hasClass('active')){
            $(this).append('<div class="Parrow"></div>');
        }
    });
	$('#nav_down').find('a').each(function() {
       $(this).click(function(){
          $(this).addClass('active').siblings('a').removeClass('active');
       }); 
    });
	/**********************************************头部导航切换***********************************************/
	
	/**********************************************置顶***********************************************/
	$("#dynamic-to-top").click(function(){
		var $this = $(this);
		$("html,body").animate({scrollTop:0},1000,function(){
			$this.stop(true, true).fadeOut(300);
		});
	});
	$(window).scroll(function(){
		var top = $(this).scrollTop();
		if(top>=100){
			$("#dynamic-to-top").fadeIn("slow");
		}else{
			$("#dynamic-to-top").stop(true, true).fadeOut(300);
		}
	});
	/**********************************************置顶***********************************************/
});
/**********************************************头部导航切换***********************************************/
//用户信息获取--封装
function getUserInfo(){
	var $user = $("#userinfo");
	var img = $user.attr("src");
	var account = $user.attr("account");
	var username = $user.attr("title");
	var address = $user.data("address");
	var data = {
		img:img,
		username:username,
		address:address,
		account:account
	};
	return data;
};

