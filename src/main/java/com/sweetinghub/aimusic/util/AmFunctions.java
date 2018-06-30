package com.sweetinghub.aimusic.util;

import com.sweetinghub.aimusic.util.ip.TmIpUtil;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * JSP函数自定义标签
 * 类名：AmFunctions
 * 创建人:zhongtian
 * 时间：2016年3月16日-下午6:28:15 
 * @version 1.0.0
 *
 */
public class AmFunctions {
	
	/**
	 * 日期具体的几秒钟以前
	 * 包名： com.am.util 
	 * 方法名：dateToString
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午6:28:25 
	 * @param startTime
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	public static String dateToString(String startTime){
		return TmDateUtil.getTimeFormat(startTime);
	}
	
	/**
	 * 日期具体的几秒钟以前
	 * 包名： com.am.util 
	 * 方法名：dateToString2
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午6:28:35 
	 * @param startTime
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	public static String dateToString2(Date startTime){
		return TmDateUtil.getTimeFormat(startTime);
	}

	
	/**
	 * 通过ip地址获取真实地址
	 * 包名： com.am.util 
	 * 方法名：ipAddress
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午6:28:45 
	 * @param ip
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	public static String ipAddress(String ip){
		return TmIpUtil.ipLocation(ip);
	}
	
	/**
	 * 格式化日期的自定义函数
	 * 包名： com.am.util 
	 * 方法名：dateFormat
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午9:45:19 
	 * @param dateString
	 * @param format
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 * System.out.println(dateFormat("2014-12-14 12:12:12", "yyyy"));年份
		System.out.println(dateFormat("2014-12-14 12:12:12", "MM"));月份
		System.out.println(dateFormat("2014-12-14 12:12:12", "dd"));天
		System.out.println(dateFormat("2014-12-14 12:12:12", "HH:mm:ss"));24小时制
		System.out.println(dateFormat("2014-12-14 12:12:12", "hh:mm:ss"));12小时制
		System.out.println(dateFormat("2014-12-14 12:12:12", "yyyy-MM-dd"));年月日
		System.out.println(dateFormat("2014-12-14 12:12:12", "yyyy-MM-dd HH:mm"));年月日 时分
		System.out.println(dateFormat("2014-12-14 12:12:12", "yyyy-MM-dd HH:mm:ss"));年月日 时分秒
	 */
	public static String dateFormat(String dateString,String format){
		if(TmStringUtils.isEmpty(dateString))return "";
		try {
			Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(dateString);
			String ds =  new SimpleDateFormat(format).format(date);
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	/**
	 * 
	 * 包名： com.am.util 
	 * 方法名：formateDate
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午9:45:07 
	 * @param date
	 * @param format
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	public static String formateDate(Date date,String format){
		if(date==null)return "";
		String ds =  new SimpleDateFormat(format).format(date);
		return ds;
	}
	
	/**
	 * 根据视频时长获取分：秒
	 * 包名： com.am.util 
	 * 方法名：mpstime
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午9:44:51 
	 * @param timeline
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	public static String mpstime(int timeline){
		int minute = timeline / 60;
		int second = timeline % 60;
		return (minute<10?"0"+minute:minute+"")+":"+(second<10?"0"+second:second+"");
	}
}
