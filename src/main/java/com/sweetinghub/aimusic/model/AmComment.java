package com.sweetinghub.aimusic.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.struts2.json.annotations.JSON;

/**
 * 评论实体类
 * 类名：AmComment
 * 创建人:zhongtian
 * 时间：2016年3月16日-上午10:41:50 
 * @version 1.0.0
 *
 */
@Entity
@Table(name = "am_comment", catalog = "aimusic")
public class AmComment implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	//评论id
	private Integer id;
	//评论的内容
	private String content;
	//评论的时间
	private Date createTime;
	//更新评论的时间
	private Date updateTime;
	//评论的状态 0不显示1显示
	private Integer status;
	//评论是否删除0未删除1删除
	private Integer isDelete;
	//评论者的ip地址
	private String ip;

	// 如果进行ajax查询就可不配置期刊那边对应的评论字段
	private AmAlbum album;
	// 用户和评论关系:1:N
	private AmUser user;

	// Constructors

	/** default constructor */
	public AmComment() {
	}

	public AmComment(Integer id) {
		this.id = id;
	}

	/** minimal constructor */
	public AmComment(Date createTime) {
		this.createTime = createTime;
	}

	public AmComment(Integer id, String content, Date createTime,
			Date updateTime, Integer status, Integer isDelete, String ip,
			AmAlbum album, AmUser user) {
		super();
		this.id = id;
		this.content = content;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.status = status;
		this.isDelete = isDelete;
		this.ip = ip;
		this.album = album;
		this.user = user;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "content", length = 65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	@JSON(serialize=false)
	public AmUser getUser() {
		return user;
	}

	public void setUser(AmUser user) {
		this.user = user;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "is_delete")
	public Integer getIsDelete() {
		return this.isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "album_id", referencedColumnName = "id")
	@JSON(serialize=false)
	public AmAlbum getAlbum() {
		return album;
	}

	public void setAlbum(AmAlbum album) {
		this.album = album;
	}

	@Column(name = "ip", length = 20)
	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

}