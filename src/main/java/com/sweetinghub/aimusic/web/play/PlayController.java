package com.sweetinghub.aimusic.web.play;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 音乐播放
 * 类名：PlayController
 * 创建人:zhongtian
 * 时间：2016年3月22日-上午10:15:04 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/play")
public class PlayController {

	@RequestMapping()
	public String index(){
		return "play/music_play";
	}
}
