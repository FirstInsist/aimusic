package com.sweetinghub.aimusic.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.struts2.json.annotations.JSON;

/**
 * 音乐实体类
 * AmMusic
 * 创建人:zhongtian
 * 时间：2016年3月13日-下午3:23:47 
 * @version 1.0.0
 *
 */
@Entity
@Table(name = "am_music", catalog = "aimusic")
public class AmMusic implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	// 音乐id
	private Integer id;
	// 音乐名称
	private String title;
	//演唱者
	private String singer;
	// 专辑id
	private AmAlbum album;
	// 出版时间
	private Date publicationTime;
	// 时长
	private String timer;
	// 音乐的路径
	private String path;
	// 大小
	private Integer timelength;
	// 格式
	private String pattern;
	//歌词路径
	private String labelPath;
	// 封面图片
	private String img;
	// 点击量
	private Integer hit;
	// 排序
	private Integer sort;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// 删除状态0未删除1删除
	private Integer isDelete;
	// 发布状态0未发布1发布
	private Integer status;

	public AmMusic() {
	}
	
	public AmMusic(Integer id) {
		this.id = id;
	}

	/** minimal constructor */
	public AmMusic(String title, Date createTime) {
		this.title = title;
		this.createTime = createTime;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}
	

	public AmMusic(Integer id, String title, String singer, AmAlbum album,
			Date publicationTime, String timer, String path,
			Integer timelength, String pattern, String labelPath, String img,
			Integer hit, Integer sort, Date createTime, Date updateTime,
			Integer isDelete, Integer status) {
		super();
		this.id = id;
		this.title = title;
		this.singer = singer;
		this.album = album;
		this.publicationTime = publicationTime;
		this.timer = timer;
		this.path = path;
		this.timelength = timelength;
		this.pattern = pattern;
		this.labelPath = labelPath;
		this.img = img;
		this.hit = hit;
		this.sort = sort;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.isDelete = isDelete;
		this.status = status;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "title", nullable = false, length = 100)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@ManyToOne
	@JoinColumn(name = "album_id")
	@JSON(serialize=false)
	public AmAlbum getAlbum() {
		return this.album;
	}

	public void setAlbum(AmAlbum album) {
		this.album = album;
	}
	
	@Column(name = "publication_time", length = 0)
	public Date getPublicationTime() {
		return publicationTime;
	}

	public void setPublicationTime(Date publicationTime) {
		this.publicationTime = publicationTime;
	}

	@Column(name = "timer", length = 10)
	public String getTimer() {
		return this.timer;
	}

	public void setTimer(String timer) {
		this.timer = timer;
	}

	@Column(name = "path", length = 100)
	public String getPath() {
		return this.path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Column(name = "timelength")
	public Integer getTimelength() {
		return this.timelength;
	}

	public void setTimelength(Integer timelength) {
		this.timelength = timelength;
	}

	@Column(name = "pattern", length = 10)
	public String getPattern() {
		return this.pattern;
	}

	public void setPattern(String pattern) {
		this.pattern = pattern;
	}

	@Column(name = "label_path", length = 100)
	public String getLabelPath() {
		return this.labelPath;
	}

	public void setLabelPath(String labelPath) {
		this.labelPath = labelPath;
	}

	@Column(name = "img", length = 100)
	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Column(name = "sort")
	public Integer getSort() {
		return this.sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", length = 0,columnDefinition="timestamp")
	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Column(name = "update_time", length = 0)
	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	@Column(name = "is_delete")
	public Integer getIsDelete() {
		return this.isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "hit")
	public Integer getHit() {
		return this.hit;
	}

	public void setHit(Integer hit) {
		this.hit = hit;
	}

	@Column(name = "singer",length = 60)
	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}
	
}