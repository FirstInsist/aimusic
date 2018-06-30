package com.sweetinghub.aimusic.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页
 * IndexController
 * 创建人:zhongtian
 * 时间：2016年3月13日-下午5:59:10 
 * @version 1.0.0
 *
 */
@Controller
public class IndexController {
	@RequestMapping("/")
	public String index(){
		System.out.println("---->进入首页");
		return "index";
	}
	
}
