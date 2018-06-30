package com.sweetinghub.aimusic.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.struts2.json.annotations.JSON;
import org.hibernate.annotations.Where;

/**
 * 专辑实体类
 * 类名：AmAlbum
 * 创建人:zhongtian
 * 时间：2016年3月14日-上午11:09:59 
 * @version 1.0.0
 *
 */
@Entity
@Table(name = "am_album")
public class AmAlbum implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	// 主键
	private Integer id;
	// 标题
	private String title;
	// 封面图片
	private String img;
	// 描述
	private String description;
	// 状态 0 未发布 1发布
	private Integer status;
	// 状态 0 未删除 1删除
	private Integer isDelete;
	// 创建时间
	private Date createTime;
	// 更新时间
	private Date updateTime;
	// 点击数
	private Integer hit;
	// 标签
	private String label;
	// 用户ID
	private AmUser amUser;
	// 音乐类型
	private AmType amType;
	
	/*一个专辑有多个音乐
	 * 0：为了节约内存
	 * 返回的类型一定是List<>，不能是ArrayList<>，hibernate内置对象的时候已经设置了级联对象的返回类型为List<>
	 * */
	private List<AmMusic> musics = new ArrayList<AmMusic>(0);
	
	/*一个专辑有多个评论*/
	private List<AmComment> comments = new ArrayList<AmComment>(0);

	public AmAlbum() {

	}

	public AmAlbum(Integer id) {
		this.id = id;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "title", length = 100, nullable = false)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "img", length = 100)
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Lob
	@Column(name = "description")
	@Basic(fetch = FetchType.LAZY)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "status", length = 1)
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "is_delete", length = 1)
	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", columnDefinition = "TIMESTAMP")
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Column(name = "update_time", columnDefinition = "datetime")
	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	@Column(name = "hit")
	public Integer getHit() {
		return hit;
	}

	public void setHit(Integer hit) {
		this.hit = hit;
	}

	@Column(name = "label", length = 80)
	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	public AmUser getMusicUser() {
		return amUser;
	}

	public void setMusicUser(AmUser amUser) {
		this.amUser = amUser;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "type_id")
	public AmType getMusicType() {
		return amType;
	}

	public void setMusicType(AmType amType) {
		this.amType = amType;
	}
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="album")
	@Where(clause="is_delete = 0")
	public List<AmMusic> getMusics() {
		return musics;
	}

	public void setMusics(List<AmMusic> musics) {
		this.musics = musics;
	}
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="album")
	public List<AmComment> getComments() {
		return comments;
	}

	public void setComments(List<AmComment> comments) {
		this.comments = comments;
	}
}
