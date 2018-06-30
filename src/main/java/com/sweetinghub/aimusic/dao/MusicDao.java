package com.sweetinghub.aimusic.dao;

import com.sweetinghub.aimusic.model.AmMusic;

/**
 * 音乐数据层
 * 类名：MusicDao
 * 创建人:zhongtian
 * 时间：2016年3月19日-下午8:06:05 
 * @version 1.0.0
 *
 */
public interface MusicDao{

	/**
	 * 保存音乐
	 * 包名： com.am.dao 
	 * 方法名：save
	 * 创建人：zhongtian
	 * 时间：2016年3月19日-下午8:07:04 
	 * @param music
	 * @return AmMusic
	 * @exception 
	 * @since  1.0.0
	 */
	AmMusic save(AmMusic music);
	
	/**
	 * 修改音乐
	 * 包名： com.am.dao 
	 * 方法名：update
	 * 创建人：zhongtian
	 * 时间：2016年3月19日-下午8:07:36 
	 * @param music
	 * @return AmMusic
	 * @exception 
	 * @since  1.0.0
	 */
	AmMusic update(AmMusic music);
	
	/**
	 * 删除音乐
	 * 包名： com.am.dao 
	 * 方法名：delete
	 * 创建人：zhongtian
	 * 时间：2016年3月19日-下午8:08:07 
	 * @param id
	 * @return boolean
	 * @exception 
	 * @since  1.0.0
	 */
	boolean delete(Integer id);
}
