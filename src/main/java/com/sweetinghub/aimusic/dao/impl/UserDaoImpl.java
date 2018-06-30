package com.sweetinghub.aimusic.dao.impl;

import com.sweetinghub.aimusic.dao.UserDao;
import com.sweetinghub.aimusic.model.AmUser;
import org.springframework.stereotype.Repository;

/**
 * 用户数据层
 * 类名：UserDao
 * 创建人:zhongtian
 * 时间：2016年3月13日-下午6:19:48 
 * @version 1.0.0
 *
 */
@Repository
public class UserDaoImpl extends BaseDao implements UserDao {

	/**
	 * 根据用户账号和密码查询用户
	 * 包名： com.am.dao 
	 * 方法名：getUser
	 * 创建人：zhongtian
	 * 时间：2016年3月13日-下午6:38:09 
	 * @param account
	 * @param password
	 * @return AmUser
	 * @exception 
	 * @since  1.0.0
	 */
	public AmUser getUser(String account, String password){
		//hql语句的写法，是面向对象的查询
		AmUser amUser = (AmUser) getSession()
				.createQuery("from AmUser where account = ? and password = ? and isDelete=0")
				.setString(0,account).setString(1, password)
				.uniqueResult();
		
		//sql
		/*AmUser amUser2 = (AmUser) getSession()
				.createSQLQuery("select * from am_user where account = ? and password = ? and is_delete=0")
				.addEntity(AmUser.class)
				.setString(0,account).setString(1, password)
				.uniqueResult();
		
		//qbc ,面向对象
		DetachedCriteria criteria = DetachedCriteria.forClass(AmUser.class);
		criteria.add(Restrictions.eq("account",account));
		criteria.add(Restrictions.eq("password",password));
		criteria.add(Restrictions.eq("isDelete",0));
		AmUser amUser3= (AmUser) criteria.getExecutableCriteria(getSession()).uniqueResult();
		*/
		return amUser;
	}
}
