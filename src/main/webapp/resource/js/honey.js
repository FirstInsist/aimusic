/*
	备注：基本封装
	时间：2016-01-19
	作者：honey
*/

/*id选择器*/
function dom(id){
	return document.getElementById(id);
};
//谷歌浏览器控制台打印-代替alert
function println(message){
	console.log(message);
}

//获得随机颜色包括白色和黑色
function randomColor(){
	//0-255 
	var r = Math.floor(Math.random()*256);
	var g = Math.floor(Math.random()*256);
	var b = Math.floor(Math.random()*256);
	return "rgb("+r+","+g+","+b+")";//IE7不支出rgb
}

/*获得十六进制随机颜色*/
function randomColor16(){
	//0-255 
	var r = random(255).toString(16);
	var g = random(255).toString(16);
	var b = random(255).toString(16);
	//255的数字转换成十六进制
	if(r.length<2)r = "0"+r;
	if(g.length<2)g = "0"+g;
	if(b.length<2)b = "0"+b;
	return "#"+r+g+b;
};

/*0-num的随机数*/
function random(num){
    return Math.floor(Math.random()*(num+1));
};

/*start -end的范围随机数 */
/*function rangeRandom(start,end){
	return Math.floor(Math.random()*(end-start+1))+start;
};*/

/*begin -end的范围随机数 */
function randomRange(begin,end){
	return Math.floor(Math.random()*(end-begin))+begin;
};

/*将小写字母全部转换成大写字母*/
function uppercase(content){
	return content.toUpperCase();
};

/*将大写字母全部转换成小写字母*/
function lowercase(content){
	return content.toLowerCase();
};

/*判断空*/
function isEmpty(val) {
	if (val == null)
		return true;
	if (val == undefined || val == 'undefined')
		return true;
	if (val == "")
		return true;
	if (val.length == 0)
		return true;
	if (!/[^(^\s*)|(\s*$)]/.test(val))
		return true;
	return false;
};

/*判断非空*/
function isNotEmpty(val) {
	return !isEmpty(val);
};

/* 禁止窗体选中*/
function forbiddenSelect() {
	$(document).bind("selectstart", function() {
		return false;
	});
	document.onselectstart = new Function("event.returnValue=false;");
	$("*").css({
		"-moz-user-select" : "none"
	});
};

/* 窗体允许选中 */
function autoSelect() {
	$(document).bind("selectstart", function() {
		return true;
	});
	document.onselectstart = new Function("event.returnValue=true;");
	$("*").css({
		"-moz-user-select" : ""
	});
};

/*获取css中的样式的值，兼容IE678+*/
function getStyle(dom,attr){
	return window.getComputedStyle ? getComputedStyle(dom,false)[attr] : dom.currentStyle[attr];
};

/*简单混入*/
function mixin(obj,obj2){
	for(var k in obj2){
		if(obj2.hasOwnProperty(k)){
			obj[k] = obj2[k];
		}
	}
	return obj;
};

/*多对象混入*/
function mix(target,source){
	var arr = [];
	var args = arr.slice.call(arguments);	
	var i = 1;
	if(args.length==1){
		return target;
	};
	while((source = args[i++])){
		for(var key in source){
			if(source.hasOwnProperty(key)){
				target[key] = source[key];
			}
		}
	}
	return target;
};

/*获取鼠标的位置，兼容ie678*/
function getXY(e){
	var ev = e || window.event;
	var x=0,y=0;
	if(ev.pageX){
		x = ev.pageX;
		y = ev.pageY;
	}else{
		//拿到scrollTop 和 scrollLeft
		var sleft=0,stop=0;
		//解决存在滚动条的问题：document
		if(document.documentElement){
			//ie678
			stop = document.documentElement.scrollTop;
			sleft = document.documentElement.scrollLeft;
		}else{
			//ie9+谷歌
			stop = document.body.scrollTop;
			sleft = document.body.scrollLeft;
		}
		x = ev.clientX + sleft;
		y = ev.clientY + stop;
	}
	return {x:x,y:y};
};

/*元素基于浏览器居中 兼容ie678*/
function centerElement(id){
	var boxDom = dom(id);
	var sw = boxDom.offsetWidth;
	var sh = boxDom.offsetHeight;
	var dw = window.innerWidth;
	var dh = window.innerHeight;
	var cleft = (dw-sw)/2;
	var ctop = (dh-sh)/2;
	boxDom.style.left = cleft+"px";
	boxDom.style.top = ctop+"px";
	window.onresize = function(){
		centerElement(id);
	};
};

/**
 * 对Date的扩展，将 Date 转化为指定格式的String 
 * 月(M)、日(d)、12小时(h)、24小时(H)、分(m)、秒(s)、周(E)、季度(q)
 * 可以用 1-2 个占位符 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
 * eg: 
 * (new Date()).format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
 * (new  Date()).format("yyyy-MM-dd E HH:mm:ss") ==> 2009-03-10 二 20:09:04 
 * (new Date()).format("yyyy-MM-dd EE hh:mm:ss") ==> 2009-03-10 周二 08:09:04 
 * (new Date()).format("yyyy-MM-dd EEE hh:mm:ss") ==> 2009-03-10 星期二 08:09:04 
 * (new Date()).format("yyyy-M-d h:m:s.S") ==> 2006-7-2 8:9:4.18
 */
Date.prototype.format = function(fmt) {
	var o = {
		"M+" : this.getMonth() + 1,
		// 月份
		"d+" : this.getDate(),
		// 日
		"h+" : this.getHours() % 12 == 0 ? 12 : this.getHours() % 12,
		// 小时
		"H+" : this.getHours(),
		// 小时
		"m+" : this.getMinutes(),
		// 分
		"s+" : this.getSeconds(),
		// 秒
		"q+" : Math.floor((this.getMonth() + 3) / 3),
		// 季度
		"S" : this.getMilliseconds()
	// 毫秒
	};
	var week = {
		"0" : "/u65e5",
		"1" : "/u4e00",
		"2" : "/u4e8c",
		"3" : "/u4e09",
		"4" : "/u56db",
		"5" : "/u4e94",
		"6" : "/u516d"
	};
	if (/(y+)/.test(fmt)) {
		fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "")
				.substr(4 - RegExp.$1.length));
	}
	if (/(E+)/.test(fmt)) {
		fmt = fmt
				.replace(
						RegExp.$1,
						((RegExp.$1.length > 1) ? (RegExp.$1.length > 2 ? "/u661f/u671f"
								: "/u5468")
								: "")
								+ week[this.getDay() + ""]);
	}
	for ( var k in o) {
		if (new RegExp("(" + k + ")").test(fmt)) {
			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k])
					: (("00" + o[k]).substr(("" + o[k]).length)));
		}
	}
	return fmt;
};
//获取表单参数对象--反序列化
function deserialize(formObj){
	var params = formObj.serializeArray();
	var json = {};
	for(var i=0;i<params.length;i++){
		json[params[i].name]=params[i].value;
	}
	return json;
};
//获取表单参数及对应的元素数组对象
function deserializeDom(formObj){
	var params = formObj.serializeArray();
	var json = {};
	for(var i=0;i<params.length;i++){
		var ele = formObj.find("*[name='"+params[i].name+"']");
		json[params[i].name]=[params[i].value,ele];
	}
	return json;
};
//获取表单元素
function getFormElement(formObj,name){
	return formObj.find("*[name='"+name+"']");
};
//出来的效果,如果不传递index那么就随机效果
function animateIn(index){
	var animateIn = [];
	animateIn.push("animated bounce");//0--心跳效果
	animateIn.push("animated tada");//1
	animateIn.push("animated swing");//2
	animateIn.push("animated wobble");//3
	animateIn.push("animated flip");//4
	animateIn.push("animated flipInX");//5
	animateIn.push("animated flipInY");//6
	animateIn.push("animated fadeIn");//7
	animateIn.push("animated fadeInUp");//8
	animateIn.push("animated fadeInDown");//9
	animateIn.push("animated fadeInLeft");//10
	animateIn.push("animated fadeInRight");//11
	animateIn.push("animated fadeInUpBig");//12
	animateIn.push("animated fadeInDownBig");//13
	animateIn.push("animated fadeInLeftBig");//14
	animateIn.push("animated fadeInRightBig");//15
	animateIn.push("animated bounceIn");//16
	animateIn.push("animated bounceInUp");//17
	animateIn.push("animated bounceInDown");//18
	animateIn.push("animated bounceInLeft");//19
	animateIn.push("animated bounceInRight");//20
	animateIn.push("animated rotateIn");//21
	animateIn.push("animated rotateInUpLeft");//22
	animateIn.push("animated rotateInDownLeft");//23
	animateIn.push("animated rotateInUpRight");//24
	animateIn.push("animated rotateInDownRight");//25
	animateIn.push("animated rollIn");//26
	if(!index){
		var len = animateIn.length;
		var r = Math.floor(Math.random()*(len-1)+1);
		return animateIn[r];
	}else{
		return animateIn[index];
	}
};

//出去的效果
function animateOut(index){
	var animateOut = [];
	animateOut.push("animated flipOutX");//0
	animateOut.push("animated flipOutY");//1
	animateOut.push("animated fadeOut");//2
	animateOut.push("animated fadeOutUp");//3
	animateOut.push("animated fadeOutDown");//4
	animateOut.push("animated fadeOutLeft");//5
	animateOut.push("animated fadeOutRight");//6
	animateOut.push("animated fadeOutUpBig");//7
	animateOut.push("animated fadeOutDownBig");//8
	animateOut.push("animated fadeOutLeftBig");//9
	animateOut.push("animated fadeOutRightBig");//10
	animateOut.push("animated bounceOut");//11
	animateOut.push("animated bounceOutUp");//12
	animateOut.push("animated bounceOutDown");//13
	animateOut.push("animated bounceOutLeft");//14
	animateOut.push("animated bounceOutRight");//15
	animateOut.push("animated rotateOut");//16
	animateOut.push("animated rotateOutUpLeft");//17
	animateOut.push("animated rotateOutDownLeft");//18
	animateOut.push("animated rotateOutDownRight");//19
	animateOut.push("animated rollOut");//21
//		animateOut.push("animated hinge");//20
	if(!index){
		var len = animateOut.length;
		var r = Math.floor(Math.random()*(len-1)+1);
		return animateOut[r];
	}else{
		return animateOut[index];
	}
};

/**
 * 时间：2016-01-11
 * 作者：honey
 * 动画移动函数:位移和折叠动画+淡入淡出
 * @param {Object} dom dom对象
 * @param {Object} json 实例：{width:100,height:100}
 * @param {Object} callback 回调函数
 */
function move(dom,json,callback){
	//让每一次动画都是全新的
	clearInterval(dom.timer);
	dom.timer = setInterval(function(){
		//所有元素执行完毕以后的状态
		var mark = true;
		//循环所有动画的属性
		for(var attr in json){	
			//获取传递的属性值
			var target = json[attr];
			var cur = null;//获取当前元素的属性值
			//如果是opacity的透明的动画
			if(attr == "opacity"){
				//获取已经产生的透明度
				cur = getStyle(dom,attr)*100;
				//取整，避免出现小数和动画不停止的现象
				cur = ((target-cur)>0 ? Math.ceil(cur): Math.floor(cur));
			}else{
				//获取已经执行的距离
				cur = parseInt(getStyle(dom,attr)) || 0;
			}
			//速度，*0.2是增加摩擦力
			var speed = (target-cur)*0.2;
			//取整，避免出现小数和动画不停止的现象（负数向下取整，正数向上取整）
			speed = (speed>0 ? Math.ceil(speed): Math.floor(speed));
			//条件判断：
			if(cur != target){
				mark = false;
				if(attr == "opacity"){
					dom.style.opacity = (cur+speed)/100;
					dom.style.filter = "alpha(opacity="+((cur+speed))+")";//浏览器兼容写法
				}else{
					dom.style[attr] = cur+speed+"px";
				}
			}
		}
		//如果执行完毕
		if(mark){
			//清除动画
			clearInterval(dom.timer);
			//执行回调函数，需先清除动画哦
			if(callback)callback.call(dom);
		};
	},30);//30指的是cpu执行回调函数的返回时间
};

//循环
function each(doms,callback){
	var liDoms = doms.children;
	var len = liDoms.length;
	for(var i=0;i<len;i++){
		if(callback)callback.call(liDoms[i],liDoms[i],i);
		//if(callback)callback.apply(liDoms[i],[i]);
	}
}

//自定义委托1
function on(id,eventType,callback,type){
	var obj = dom(id);
	obj.addEventListener(eventType,function(e){
		//事件类型兼容写法
		var ev = e || window.event;
		//当前目标元素
		var currentTarget = ev.currentTarget;
		//鼠标停留的元素
		var target = ev.target || ev.srcElement;
		//类型栏判断是不是委托
		if(type){
			if(target.tagName.toLowerCase() === type){
				if(callback)callback.call(target);
			};
		}else{
			if(callback)callback.call(currentTarget);
		};
		
	},false);
}
//自定义委托2
function onOpts(opts){
	var obj = dom(opts.id);
	obj.addEventListener(opts.eventType,function(e){
		//事件类型兼容写法
		var ev = e || window.event;
		//当前目标元素
		var currentTarget = ev.currentTarget;
		//鼠标停留的元素
		var target = ev.target || ev.srcElement;
		//类型栏判断是不是委托
		if(opts.type){
			if(target.tagName.toLowerCase() === opts.type){
				if(opts.callback)opts.callback.call(target);
			};
		}else{
			if(opts.callback)opts.callback.call(currentTarget);
		};
		
	},false);
};
//获取元素的索引
function getIndex(doms,dom){
	var index = -1;
	var domArr = Array.prototype.slice.call(doms);
	domArr.forEach(function(obj,i){
		if(obj==dom){
			index = i;
			return false;
		}
	});
	return index;
}
/*
	作用：对象参数的继承和覆盖
	用法: var opts = extend(target,json1,json2,json3....,mark);
	mark的默认值是:true.代表的是,后面具有相同属性值会进行合并/覆盖,
	如果false代表target对象里值追加
*/
function extend(target,source){
	//arguments是一个动态参数转换成一个数组
	var args = Array.prototype.slice.call(arguments);
	//删除最后一个元素并弹出
	var mark = typeof args[args.length-1] ==="boolean"?args.pop():true;
	var i = 1;
	if(args.length===1){
		i = -1;
	}
	//循环覆盖里面对象
	while((source = args[i++])){
		for(var key in source){
			if(mark  || !(callback in target)){
				target[key] = source[key];
			}
		}
	}
	return target;
};
/*
	插件名称：弹出层 
	@author honey
	@date:2015-07-29 01:46
	描述：封装一个弹出层
	弹出层的三要素:定位(position:fixed) left top
	弹出层有规则:如果你元素高度>520 position:absolute;否则fixed
	掌握的知识:dom的添加添加和事件，参数传递规则
	延伸技术:闭包，回调函数 this,call apply
	call(this,1,2,3,4)
	apply(this,[1,2,3,4])
	动态扩展：传递对象
	写插件----动态把元素添加到dom节点中
*/
var dialog = (function(){
	var dialog = {
		defaults :{
			title:"标题",
			content:"我是内容哦!!!",
			color:"#111111",
			sure:"确定",
			cancle:"取消"
		},
		template:function(opts){
			opts = extend(this.defaults,opts);
			//追加弹出层到dom节点中
			var bodyDom = document.body;
			var dialogDom = document.createElement("div");
			dialogDom.id = "dialog";
			dialogDom.style.background = opts.color; 
			dialogDom.style.border = "2px solid "+opts.color;
			dialogDom.innerHTML = "	<div class='header'>"+
			"			<h1 class='title'>"+opts.title+"</h1>"+
			"		</div>"+
			"		<a href='javascript:void(0);' class='close'>x</a>"+
			"		<div class='content'>"+opts.content+
			"		</div>"+
			"		<div class='buttons'>"+
			"			<a href='javascript:void(0);' class='btns sure'>"+opts.sure+"</a>"+
			"			<a href='javascript:void(0);' class='btns cancle'>"+opts.cancle+"</a>"+
			"		</div>";
			var overDom = document.createElement("div");
			overDom.className = "overlay";
			bodyDom.appendChild(dialogDom);
			bodyDom.appendChild(overDom);
			return dialogDom;
		},
		
		alert:function(opts){
			var dialogDom = this.template(opts);//初始化
			var buttonDom = dialogDom.getElementsByClassName("buttons")[0];
			var cancleDom =  buttonDom.getElementsByClassName("cancle")[0];
			buttonDom.removeChild(cancleDom);
			centerElement("dialog");
		},
		confirm:function(opts){
			var dialogDom = this.template(opts);//初始化
			 centerElement("dialog");			
		}
	};

	return dialog;
})();

/**
 * 阻止事件冒泡
 * 
 * @param e
 */
function stopBubble(e) {
	// 如果提供了事件对象，则这是一个非IE浏览器
	if (e && e.stopPropagation)
		// 因此它支持W3C的stopPropagation()方法
		e.stopPropagation();
	else
		// 否则，我们需要使用IE的方式来取消事件冒泡
		window.event.cancelBubble = true;
};