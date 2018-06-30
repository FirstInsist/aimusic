package com.sweetinghub.aimusic.web.music;

import com.sweetinghub.aimusic.dao.MusicDao;
import com.sweetinghub.aimusic.model.AmMusic;
import com.sweetinghub.aimusic.web.upload.TmFileUtil;
import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 音乐业务层
 * 类名：MusicController
 * 创建人:zhongtian
 * 时间：2016年3月19日-下午8:06:27 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/music")
public class MusicController {
	
	@Autowired
	private MusicDao musicDao;

	@RequestMapping(value="/add")
	public String add(){
		return "music/add";
	}
	
	@RequestMapping(value="/list")
	public String list(){
		return "music/list";
	}
	
	@RequestMapping(value="/upload")
	public String upload(){
		return "music/upload02";
	}
	
	
	/**
	 * 保存音乐
	 * 包名： com.am.web.music 
	 * 方法名：save
	 * 创建人：zhongtian
	 * 时间：2016年3月19日-下午8:35:23 
	 * @param music
	 * @return
	 * @throws JSONException String
	 * @exception 
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(AmMusic music){
		music.setPattern(TmFileUtil.getExtNoPoint(music.getPath()));
		music.setLabelPath(null);
		music.setSort(0);
		music.setIsDelete(0);//删除状态0为删除1删除
		music.setHit(0);//点击数
		music.setStatus(0);// 发布状态0未发布1发布
		music = musicDao.save(music);
		System.out.println("---->保存音乐");
		String result = null;
		try {
			result = JSONUtil.serialize(music,null,null,false,true);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 修改音乐
	 * 包名： com.am.web.music 
	 * 方法名：update
	 * 创建人：zhongtian
	 * 时间：2016年3月19日-下午10:43:27 
	 * @param music
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String update(AmMusic music){
		try {
			musicDao.update(music);
			System.out.println("---->修改音乐");
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}
	
	/**
	 * 删除音乐
	 * 包名： com.am.web.music 
	 * 方法名：update
	 * 创建人：zhongtian
	 * 时间：2016年3月19日-下午10:43:58 
	 * @param id
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping(value="/delete/{id}",method=RequestMethod.POST)
	@ResponseBody
	public String update(@PathVariable("id")Integer id){
		try {
			AmMusic music = new AmMusic(id);
			music.setIsDelete(1);
			musicDao.update(music);
			//musicDao.delete(id);
			System.out.println("---->删除音乐");
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}
}
