package com.sweetinghub.aimusic.dao;

import com.sweetinghub.aimusic.model.AmAlbum;

import java.util.List;

/**
 * 专辑
 * 类名：AlbumDao
 * 创建人:zhongtian
 * 时间：2016年3月14日-上午11:10:18 
 * @version 1.0.0
 *
 */
public interface AlbumDao{
	
	/**
	 * 查询所有专辑列表
	 * 包名： com.am.dao 
	 * 方法名：findAlbums
	 * 创建人：zhongtian
	 * 时间：2016年3月22日-上午9:10:38 
	 * @param keyword
	 * @param typeId
	 * @return List<AmAlbum>
	 * @exception 
	 * @since  1.0.0
	 */
	List<AmAlbum> findAlbums(String keyword, Integer typeId);
	
	/**
	 * 通过id查询指定的专辑
	 * 包名： com.am.dao 
	 * 方法名：getAmAlbum
	 * 创建人：zhongtian
	 * 时间：2016年3月17日-下午6:11:20 
	 * @param id
	 * @return AmAlbum
	 * @exception 
	 * @since  1.0.0
	 */
	AmAlbum getAmAlbum(Integer id);
	
	/**
	 * 保存专辑
	 * 包名： com.am.dao 
	 * 方法名：saveAmAlbum
	 * 创建人：zhongtian
	 * 时间：2016年3月17日-下午6:13:27 
	 * @param album
	 * @return AmAlbum
	 * @exception 
	 * @since  1.0.0
	 */
	AmAlbum saveAmAlbum(AmAlbum album);
	
	/**
	 * 修改专辑
	 * 包名： com.am.dao 
	 * 方法名：updateAmAlbum
	 * 创建人：zhongtian
	 * 时间：2016年3月17日-下午6:13:37 
	 * @param album
	 * @return AmAlbum
	 * @exception 
	 * @since  1.0.0
	 */
	AmAlbum updateAmAlbum(AmAlbum album);

}
