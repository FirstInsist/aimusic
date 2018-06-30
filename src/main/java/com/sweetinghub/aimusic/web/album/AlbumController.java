package com.sweetinghub.aimusic.web.album;

import com.sweetinghub.aimusic.dao.AlbumDao;
import com.sweetinghub.aimusic.model.AmAlbum;
import com.sweetinghub.aimusic.model.AmUser;
import com.sweetinghub.aimusic.util.TmStringUtils;
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
 * 专辑
 * 类名：AlbumController
 * 创建�?:zhongtian
 * 时间�?2016�?3�?17�?-下午6:31:38 
 * @version 1.0.0
 *
 */
@Controller
@RequestMapping("/album")
public class AlbumController {
	
	@Autowired
	private AlbumDao albumDao;
	
	/**
	 * 进入专辑列表页面
	 * 包名�? com.am.web.album 
	 * 方法名：index
	 * 创建人：zhongtian
	 * 时间�?2016�?3�?17�?-下午8:41:53 
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping()
	public String index(){
		System.out.println("---->进入专辑列表");
		return "album/album";
	}
	
	@RequestMapping(value="/template")
	public ModelAndView  template(HttpServletRequest request){
		String keyword = request.getParameter("keyword");
		String typeId = request.getParameter("typeId");
		ModelAndView modelAndView = new ModelAndView();
		List<AmAlbum> albums=  albumDao.findAlbums(keyword, TmStringUtils.isNotEmpty(typeId)?new Integer(typeId):null);
		modelAndView.addObject("albums", albums);
		modelAndView.setViewName("template/album/template");
		return modelAndView;
	}
	
	/**
	 * 进入添加专辑页面
	 * 包名�? com.am.web.album 
	 * 方法名：add
	 * 创建人：zhongtian
	 * 时间�?2016�?3�?17�?-下午8:42:06 
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping("/add")
	public String add(){
		System.out.println("---->进入添加专辑页面");
		return "album/edit";
	}

	/**
	 * 根据id获取指定的专�?
	 * 包名�? com.am.web 
	 * 方法名：music
	 * 创建人：zhongtian
	 * 时间�?2016�?3�?16�?-上午9:01:35 
	 * @param id
	 * @return ModelAndView
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping("/{id}")
	public ModelAndView music(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		AmAlbum album = albumDao.getAmAlbum(id);
		//设置跳转页面
		modelAndView.setViewName("album/albumDetailed");
		//等价于request.setAttribute("album",album);
		modelAndView.addObject("album",album);
		System.out.println("---->进入专辑详情�?");
		return modelAndView;
	}
	/**
	 * 进入编辑专辑页面
	 * 包名�? com.am.web.album 
	 * 方法名：music
	 * 创建人：zhongtian
	 * 时间�?2016�?3�?19�?-下午10:28:06 
	 * @param id
	 * @return ModelAndView
	 * @exception 
	 * @since  1.0.0
	 */
	@RequestMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable("id")Integer id){
		ModelAndView modelAndView = new ModelAndView();
		AmAlbum album = albumDao.getAmAlbum(id);
		//设置跳转页面
		modelAndView.setViewName("album/edit");
		modelAndView.addObject("album",album);
		System.out.println("---->进入编辑专辑页面");
		return modelAndView;
	}
	
	/**
	 * 保存专辑
	 * 包名�? com.am.web.album 
	 * 方法名：save
	 * 创建人：zhongtian
	 * 时间�?2016�?3�?17�?-下午6:23:41 
	 * @param album
	 * @param request
	 * @return AmAlbum
	 * @exception 
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public AmAlbum save(AmAlbum album,HttpServletRequest request){
		AmUser user = (AmUser) request.getSession().getAttribute("user");
		album.setMusicUser(user);//保存用户
		album.setStatus(1);//发布状�??1发布0未发�?
		album.setIsDelete(0);//删除状�??0为删�?1删除
		album.setHit(0);//点击�?
		AmAlbum amAlbum = albumDao.saveAmAlbum(album);
		System.out.println("---->保存专辑");
		if(amAlbum!=null){
			return amAlbum;
		}else{
			return null;
		}
	}
	
	/**
	 * 新增，修改，删除的时候一定引起重�?
	 * update xxx where id = 1 and user=id
	 * 包名�? com.am.web.album 
	 * 方法名：update
	 * 创建人：zhongtian
	 * 时间�?2016�?3�?17�?-下午6:25:57 
	 * @param album
	 * @param request
	 * @return AmAlbum
	 * @exception 
	 * @since  1.0.0
	 */
	@ResponseBody
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public AmAlbum update(AmAlbum album ,HttpServletRequest request){
		if(album!=null && album.getId()!=null){
			AmAlbum amAlbum = albumDao.updateAmAlbum(album);
			if(amAlbum!=null){
				return amAlbum;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
}
