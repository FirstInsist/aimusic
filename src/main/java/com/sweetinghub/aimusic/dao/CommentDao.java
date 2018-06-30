package com.sweetinghub.aimusic.dao;

import com.sweetinghub.aimusic.model.AmComment;

import java.util.List;

/**
 * 评论
 * 类名：CommentDao
 * 创建人:zhongtian
 * 时间：2016年3月16日-上午11:20:00 
 * @version 1.0.0
 *
 */
public interface CommentDao{

	/**
	 * 分页查询专辑的所有的评论
	 * 包名： com.am.dao 
	 * 方法名：findComments
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午5:44:53 
	 * @param albumId
	 * @param pageNo
	 * @param pageSize
	 * @return List<AmComment>
	 * @exception 
	 * @since  1.0.0
	 */
	List<AmComment> findComments(Integer albumId, Integer pageNo, Integer pageSize);
	
	/**
	 * 查询评论的总条数
	 * 包名： com.am.dao 
	 * 方法名：countComments
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午10:38:57 
	 * @param albumId
	 * @return Integer
	 * @exception 
	 * @since  1.0.0
	 */
	Integer countComments(Integer albumId);
	
	/**
	 * 保存评论
	 * 包名： com.am.dao 
	 * 方法名：save
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-上午11:22:18 
	 * @param comment
	 * @return AmComment
	 * @exception 
	 * @since  1.0.0
	 */
	AmComment save(AmComment comment);
}
