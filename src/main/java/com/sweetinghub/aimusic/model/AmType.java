package com.sweetinghub.aimusic.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 音乐类别实体类
 * AmMusicType
 * 创建人:zhongtian
 * 时间：2016年3月13日-下午3:57:22 
 * @version 1.0.0
 *
 */
@Entity
@Table(name = "am_type", catalog = "aimusic")
public class AmType implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	// 类别id
	private Integer id;
	// 类别名称
	private String name;
	// 添加者
	private Integer userId;
	// 排序
	private Integer sort;
	// 状态
	private Integer status;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// Constructors

	/** default constructor */
	public AmType() {
	}

	/** minimal constructor */
	public AmType(Date createTime) {
		this.createTime = createTime;
	}

	/** full constructor */
	public AmType(String name, Integer userId, Integer sort,
			Integer status, Date createTime, Date updateTime) {
		this.name = name;
		this.userId = userId;
		this.sort = sort;
		this.status = status;
		this.createTime = createTime;
		this.updateTime = updateTime;
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

	@Column(name = "name", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "user_id")
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "sort")
	public Integer getSort() {
		return this.sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
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

}