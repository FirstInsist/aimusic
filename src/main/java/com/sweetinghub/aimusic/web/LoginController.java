package com.sweetinghub.aimusic.web;

import com.sweetinghub.aimusic.dao.UserDao;
import com.sweetinghub.aimusic.model.AmUser;
import com.sweetinghub.aimusic.util.TmStringUtils;
import com.sweetinghub.aimusic.util.ip.TmIpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 登录
 * 类名：LoginController
 * 创建人:zhongtian
 * 时间：2016年3月13日-下午6:03:31 
 * @version 1.0.0
 *
 */
@Controller
public class LoginController {
	
	@Autowired
	private UserDao userDao;

	/**
	 * 跳转到登录页面
	 * 包名： com.am.web 
	 * 方法名：login
	 * 创建人：zhongtian
	 * 时间：2016年3月13日-下午6:02:37 
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	/**
	 * 登录请求验证：限制post提交
	 * 包名： com.am.web 
	 * 方法名：logined
	 * 创建人：zhongtian
	 * 时间：2016年3月13日-下午6:05:04 
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/logined/{account}/{password}",method=RequestMethod.POST)
	public AmUser logined(@PathVariable("account")String account, @PathVariable("password")String password,
						  HttpServletRequest request) {
		try{
			//用户名和密码都不为空
			if(TmStringUtils.isNotEmpty(account) && TmStringUtils.isNotEmpty(password)){
				//根据账号和密码判断是否存在
				AmUser amUser = userDao.getUser(account, TmStringUtils.md5Base64(password));
				System.out.println(amUser);
				if(amUser != null){
					//将登陆的用户信息保存在session中
					//获取当前的ip地址
					String address =  TmIpUtil.ipLocation(request);
					amUser.setAddress(address);
					request.getSession().setAttribute("user", getSessionUser(amUser));
					request.getSession().setAttribute("address", address);
					return amUser;
				}else{
					return null;
				}
			}else{
				return null;
			}
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 前台日期，
	 * userid
	 * 方法名：getSessionUser
	 * 创建人：xuchengfei 时间：2015年3月24日-下午11:51:16 
	 * @param user
	 * @return TzMusicUser
	 * @exception 
	 * @since  1.0.0
	 */
	public AmUser getSessionUser(AmUser user){
		AmUser amUser = new AmUser();
		amUser.setId(user.getId());
		amUser.setAccount(user.getAccount());
		amUser.setUsername(user.getUsername());
		amUser.setHeaderPic(user.getHeaderPic());
		return amUser;
	}
	
	/**
	 * 退出登录
	 * 包名： com.am.web 
	 * 方法名：logout
	 * 创建人：zhongtian
	 * 时间：2016年3月17日-下午1:14:18 
	 * @param request
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping("/logout")
	@ResponseBody
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "success";
	}
}
