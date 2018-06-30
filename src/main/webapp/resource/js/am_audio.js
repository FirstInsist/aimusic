/** ******************************音乐播放器******************************************* */
// 定义一个音乐播放器
var amAudio = function(options) {
	// 控制播放器的隐藏和展示
	this.controls = options.controls || "";
	// 指定播放器加载的位置
	this.targetId = "audioProxy";
	// 自动播放
	this.autoPlay = "autoPlay";
	//是否为单曲循环 1顺序播放 2 单曲循环 3 随机播放 4	其他
	this.loop = 1;
	// 默认音量
	this.volume = 0.4;
	// 参数
	this.options = options;
	// 创建一个audio对象
	this.audioDom = document.createElement("audio");
	//缓存音量
	this.audioDom.setAttribute("audioVolume",this.volume);
};
// 音乐初始化
amAudio.prototype.init = function(src,volume) {
	var $this = this;
	$audioDom = $this.audioDom;
	//设置音乐播放地址：一定要死网络的MP3的播放地址
	$audioDom.src = src;
	$audioDom.controls = $this.controls;
	$audioDom.autoPlay = $this.autoPlay;
	$audioDom.volume = $this.volume;// 声音的范围是[0.1-1]
	document.getElementById($this.targetId).appendChild($this.audioDom);
	/** ****事件监听：主要监听一些动态改变的事件**** */
	// loadedmetadata / loadeddata：监听成功获取资源文件的长度后执行回调方法
	$audioDom.addEventListener("loadedmetadata",function(e) {
		// 视频的总时长（单位：s）
		var totalTime = $audioDom.duration;
		// 分钟
		var m = Math.floor(totalTime / 60);
		// 秒
		var s = Math.floor(totalTime % 60);
		// 格式化时间
		var totalMS = (m < 10 ? ("0" + m) : m) + ":"+ (s < 10 ? ("0" + s) : s);
		// 执行回调函数
		if ($this.options.timecallback)
			$this.options.timecallback($audioDom, totalTime, totalMS);
	});
	// timeupdate：监听正在播放的事件
	$audioDom.addEventListener("timeupdate", function(e) {
		// 当前播放的时长（单位：秒 ）
		var currentTime = $audioDom.currentTime;
		// 分钟
		var m = Math.floor(currentTime / 60);
		// 秒
		var s = Math.floor(currentTime % 60);
		// 总时长（单位：秒 ）
		var totalTime = $audioDom.duration;
		// 剩余时间
		var surplusTime = totalTime - currentTime;
		// 分钟
		var mm = Math.floor(surplusTime / 60);// 分钟
		// 秒
		var ss = Math.floor(surplusTime % 60);// 秒
		// 格式化当前时间
		var currentMS = (m < 10 ? ("0" + m) : m) + ":"+ (s < 10 ? ("0" + s) : s);
		// 格式化剩余时间
		var surplusMS = (mm < 10 ? ("0" + mm) : mm) + ":"+ (ss < 10 ? ("0" + ss) : ss);
		// 进度
		var percent = (currentTime / totalTime) * 100;
		// 执行回调函数
		if ($this.options.timeupdatecallback)
			$this.options.timeupdatecallback($this,$audioDom,currentMS, surplusMS, percent);
	});
};
// 更改音乐播放路径
amAudio.prototype.playLink = function(src) {
	// 当音乐在播放时先暂停
	if (this.audioDom.played)
		this.audioDom.pause();
	// 当前播放时间置0
	this.currentTime = 0;
	// 重新初始化
	this.init(src);
	// 播放音乐
	this.play();
};
//更改音量
amAudio.prototype.changeVolume = function(volume) {
	this.volume = volume;
	this.audioDom.setAttribute("audiovolume",volume);
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
// 音乐播放
amAudio.prototype.play = function() {
	this.audioDom.play();
};
// 音乐暂停
amAudio.prototype.pause = function() {
	this.audioDom.pause();
};
/** ******************************音乐播放器******************************************* */
// 参数
var audioOptions = {
	src : $("#playlist").find(".track-item").find(".playitems").data("src"),
	// 资源文件加载完毕后执行的回调方法
	timecallback : function($audioDom, totalTime, totalMS) {
		$("#time").html(totalMS);
		//播放进度调节
		$(".load").mousedown(function(e) {
			// 鼠标点击的x轴的位置
			var x = e.clientX;
			// 当前元素的left值
			var left = $(this).offset().left;
			// 当前元素的宽度
			var w = $(this).width();
			// 计算百分比值
			var nl = (x - left) / w;
			// 百分比
			var percent = nl * 100;
			// 显示进度条
			/*$(this).next().width(percent + "%");
			alert($(this).next().width());*/
			// 显示当前时间
			$audioDom.currentTime = totalTime * nl;
			// 触发播放音乐
			/*$("#play").trigger("click");*/
		});

		//音量的调节
		$(".m_volume_load").mousedown(function(e){
			var x = e.clientX;
			var left = $(this).offset().left;
			var w = x - left;
			var tw =  $(this).width();
			var percent = w  / tw ;
			$(this).next().width((percent * 100)+"%");
			//改变音量
			audio.changeVolume(percent<0.01?0:percent);
		});
	},
	timeupdatecallback : function(audioobj,$audioDom,currentMS, surplusMS, percent) {
		$("#stime").html(surplusMS);
		$("#ctime").html(currentMS);
		$("#percent").width(percent + "%");
		if(percent>=100){//顺序播放
			if(audioobj.loop == 1){
				$("#next").trigger("click");
			}else if(audioobj.loop==2){
				//单曲循环或者随机播放(产生一个随机数(0-length))
				$audioDom.currentTime = 0;
				$("#percent").width("0%");
			}else if(audioobj.loop==3){
				//单曲循环或者随机播放(产生一个随机数(0-length))
				
			}
		}
	}
};
// 实例化一个播放器
var audio = new amAudio(audioOptions);