package com.sweetinghub.aimusic.dao;

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
public interface UserDao{

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
	AmUser getUser(String account, String password);
}
