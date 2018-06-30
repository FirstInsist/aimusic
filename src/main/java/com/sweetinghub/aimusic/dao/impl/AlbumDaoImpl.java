package com.sweetinghub.aimusic.dao.impl;

import com.sweetinghub.aimusic.dao.AlbumDao;
import com.sweetinghub.aimusic.model.AmAlbum;
import com.sweetinghub.aimusic.util.TmStringUtils;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * 专辑
 * 类名：AlbumDao
 * 创建人:zhongtian
 * 时间：2016年3月14日-上午11:10:18 
 * @version 1.0.0
 *
 */
@Repository
@Transactional
public class AlbumDaoImpl extends BaseDao<AmAlbum, Integer> implements AlbumDao {
	
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
	public List<AmAlbum> findAlbums(String keyword, Integer typeId) {
		String hql = "FROM AmAlbum where isDelete= 0  ";
		StringBuilder builder = new StringBuilder();
		builder.append(hql);
		if(TmStringUtils.isNotEmpty(keyword)){
			builder.append(" and title LIKE '%"+keyword+"%'");
		}
		if(typeId!=null){
			builder.append(" and amType.id = "+typeId);
		}
		List<AmAlbum> albums = getSession().createQuery(hql).list();
		return albums;
		
		/*DetachedCriteria criteria = DetachedCriteria.forClass(AmAlbum.class);
		if(TmStringUtils.isNotEmpty(keyword)){
			criteria.add(Restrictions.like("title", keyword,MatchMode.ANYWHERE));
		}
		if(typeId!=null){
			criteria.add(Restrictions.eq("amType.id", typeId));
		}
		criteria.add(Restrictions.eq("isDelete", 0));
		return criteria.getExecutableCriteria(getSession()).list();*/
	}
	
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
	public AmAlbum getAmAlbum(Integer id){
		//AmAlbum album = (AmAlbum) getSession().load(AmAlbum.class, id);
		AmAlbum album = (AmAlbum) getSession()
				.createQuery("from AmAlbum where id = ? and status = 1 and isDelete=0")
				.setLong(0,id)
				.uniqueResult();
		return album;
	}
	
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
	public AmAlbum saveAmAlbum(AmAlbum album) {
		try {
			getSession().save(album);
			return album;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
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
	public AmAlbum updateAmAlbum(AmAlbum album){
		try {
			updateDefault(album);
			return album;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
