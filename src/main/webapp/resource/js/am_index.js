/**********************************************截取***********************************************/
var subDom = document.getElementsByClassName("sub10");//IE8及以下不支持
var i = 0,len = subDom.length;
for(;i<len;i++){
	if(subDom[i].innerText.length>10){
		subDom[i].innerText = subDom[i].innerText.substring(0,10)+"...";
	};
};
/**********************************************截取***********************************************/


/**********************************************轮播图***********************************************/

var timer = null;
//轮播索引
var nindex = 0;
var pindex = 0;

var imgDoms = null;
var olLiDoms = null;
var len = 0;
var height = 0;
var ollen = 0;
if(dom("imgbox")){
	//拿到所有的图片li
	imgDoms = dom("imgbox").children;
	//获取图片的总张数
	len = imgDoms.length;
	//获取图片的高度
	height = imgDoms[0].offsetHeight;
}
if(dom("numol")){
	//拿到所有的数字li
	olLiDoms = dom("numol").children;
	ollen = olLiDoms.length;
}

//数字li循环
for(var i=0;i<ollen;i++){
	//设置当前的数字图标
	olLiDoms[i].index = i;
	//鼠标移动到数字图标上的事件
	olLiDoms[i].onmouseover = function(){
		for(var i=0;i<ollen;i++)	{
			//清除所有的数字li的样式
			olLiDoms[i].className = "";
		}
		//给当前的数字图标加样式
		this.className = "active";
		nindex = this.index;
		pindex = this.index;
		//设置ul的top值
		move(dom("imgbox"),{top:-height*this.index});
	};
}
//2s播放一次
timer = setInterval(playBanner,2000);
//播放动画
function playBanner(){
	if(nindex == 0){
		imgDoms[0].style.position = "static";
		imgDoms[0].style.top = 0;
		dom("imgbox").style.top = 0;
		pindex = 0;
	}
	if(nindex==(len-1)){
		nindex=0;
		imgDoms[0].style.position = "relative";
		imgDoms[0].style.top = len*height+"px";
	}else {
		nindex++;
	}
	pindex++;
	//清除数字图标样式
	for(var i=0;i<ollen;i++)	{
		olLiDoms[i].className = "";
	}
	//给当前的图标加样式
	olLiDoms[nindex].className = "active";
	//设置ul的top值
	move(dom("imgbox"),{top:-height*pindex});
};

//鼠标移到图片上停止动画
dom("bannerbox").onmouseover = function(){
	clearInterval(timer);
};

//鼠标移出图片
dom("bannerbox").onmouseout = function(){
	clearInterval(timer);
	timer = setInterval(playBanner,2000);
};


/**********************************************轮播图***********************************************/
