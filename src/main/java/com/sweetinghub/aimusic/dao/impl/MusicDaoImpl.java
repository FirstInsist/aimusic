package com.sweetinghub.aimusic.dao.impl;

import com.sweetinghub.aimusic.dao.MusicDao;
import com.sweetinghub.aimusic.model.AmMusic;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

/**
 * 音乐数据层
 * 类名：MusicDao
 * 创建人:zhongtian
 * 时间：2016年3月19日-下午8:06:05 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class MusicDaoImpl extends BaseDao<AmMusic, Integer> implements MusicDao {

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
	public AmMusic save(AmMusic music){
		try {
			getSession().save(music);
			return music;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
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
	public AmMusic update(AmMusic music){
		try {
			updateDefault(music);
			return music;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
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
	public boolean delete(Integer id){
		try {
			AmMusic tzMusic= (AmMusic) getSession().load(AmMusic.class, id);
			getSession().delete(tzMusic);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
