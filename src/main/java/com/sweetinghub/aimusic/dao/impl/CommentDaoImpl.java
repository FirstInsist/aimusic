package com.sweetinghub.aimusic.dao.impl;

import com.sweetinghub.aimusic.dao.CommentDao;
import com.sweetinghub.aimusic.model.AmComment;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * 评论
 * 类名：CommentDao
 * 创建人:zhongtian
 * 时间：2016年3月16日-上午11:20:00 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class CommentDaoImpl extends BaseDao implements CommentDao {

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
	@SuppressWarnings("unchecked")
	public List<AmComment> findComments(Integer albumId, Integer pageNo, Integer pageSize){
		//查询出已发布且未删除的评论按创建时间降序排序
		String hql = "from AmComment where album.id = ? and isDelete = 0 and status = 1 order by createTime desc";
		List<AmComment> comments = getSession().createQuery(hql)
				.setInteger(0, albumId).setFirstResult(pageNo).setMaxResults(pageSize).list();
		return comments;
	}
	
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
	public Integer countComments(Integer albumId){
		//查询出已发布的并且未删除的评论
		String countSql = "select count(1) from AmComment where album.id = ? and isDelete = 0 and status = 1";
		Number number   = (Number)getSession().createQuery(countSql).setInteger(0, albumId).uniqueResult();
		return number!=null?number.intValue():0;
	}
	
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
	public AmComment save(AmComment comment){
		try{
			getSession().save(comment);
			return comment;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
