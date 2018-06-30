package com.sweetinghub.aimusic.core.interceptor;

import com.sweetinghub.aimusic.model.AmUser;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * springmvc 登录拦截器
 * 类名：LoginInterceptor
 * 创建人:zhongtian
 * 时间：2016年3月15日-下午10:50:03 
 * @version 1.0.0
 *
 */
public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object object, Exception exception)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object object, ModelAndView modelAndView) throws Exception {
		
	}

	/**
	 * 登录拦截
	 * preHandle
	 * 创建人:zhongtian
	 * 时间：2016年3月15日-下午11:11:59 
	 * @version 1.0.0
	 *
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {
		AmUser user = (AmUser) request.getSession().getAttribute("user");
		//告诉：是一个ajax请求 XMLHttpRequest
		String requestType = request.getHeader("X-Requested-With");
		if (user == null) {
			if (requestType != null && requestType.equals("XMLHttpRequest")) {
				response.getWriter().print("logout");
			}else{
				response.sendRedirect("/login");// 跳转到登陆页去
			}
			return false;
		} else {
			return true;// 让下一个拦截器去执行
		}
	}

}
