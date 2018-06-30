package com.sweetinghub.aimusic.web.comment;

import com.sweetinghub.aimusic.dao.CommentDao;
import com.sweetinghub.aimusic.model.AmAlbum;
import com.sweetinghub.aimusic.model.AmComment;
import com.sweetinghub.aimusic.model.AmUser;
import com.sweetinghub.aimusic.util.ip.TmIpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 评论
 * 类名：CommentController
 * 创建人:zhongtian
 * 时间：2016年3月15日-下午11:24:51 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	private CommentDao commentDao;
	
	/**
	 * 保存评论信息
	 * 包名： com.am.web.comment 
	 * 方法名：save
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午1:20:31 
	 * @param albumId
	 * @param comment
	 * @param request
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/save/{id}",method=RequestMethod.POST)
	public String save(@PathVariable("id")Integer albumId, AmComment comment, HttpServletRequest request){
		AmUser user = (AmUser) request.getSession().getAttribute("user");
		if(user != null && comment != null){
			comment.setUser(user);
			comment.setAlbum(new AmAlbum(albumId));
			comment.setIp(TmIpUtil.getIpAddr(request));
			comment.setStatus(1);
			comment.setIsDelete(0);
			commentDao.save(comment);
			System.out.println("---->专辑详情页保存评论");
			return "success";
		}else{
			return "fail";
		}
	}
	
	/**
	 * 用模板分页加载评论
	 * 包名： com.am.web.comment 
	 * 方法名：template
	 * 创建人：zhongtian
	 * 时间：2016年3月16日-下午10:34:07 
	 * @param albumId
	 * @param pageNo
	 * @param pageSize
	 * @return ModelAndView
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping("/template/{albumId}/{pageNo}/{pageSize}")
	public ModelAndView comment(@PathVariable("albumId")Integer albumId,@PathVariable("pageNo")Integer pageNo,@PathVariable("pageSize")Integer pageSize){
		ModelAndView modelAndView = new ModelAndView();
		List<AmComment> comments = commentDao.findComments(albumId, pageNo, pageSize);
		Integer totalCount = commentDao.countComments(albumId);//总数
		//设置跳转页面
		modelAndView.setViewName("template/comment/template");
		//设置返回的数据
		modelAndView.addObject("comments",comments);
		modelAndView.addObject("totalCount", totalCount);
		System.out.println("---->进入专辑详情页：分页显示评论");
		return modelAndView;
	}
	
}
