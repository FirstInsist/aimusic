package com.sweetinghub.aimusic.web.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 用户中心
 * 类名：UserCenterController
 * 创建人:zhongtian
 * 时间：2016年3月15日-下午9:59:14 
 * @version 1.0.0
 * 备注：这个类里面的方法都必须先登录才能访问
 */
@Controller
@RequestMapping("/user")
public class UserCenterController {

	@RequestMapping("/index")
	public String index(HttpServletRequest request){
		System.out.println("---->进入用户中心");
		return "user/index";
	}
}
