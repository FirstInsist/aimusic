<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/WEB-INF/tlds/am.tld" prefix="am" %>
<c:forEach items="${comments}" var="comment">
	<div class="item animated rollIn" data-itemcount="${totalCount}">
		<a href="javascript:void(0);" class="avatar-wrapper"> <img
			src="${comment.user.headerPic}"
			alt="BLACK8" class="avatar rounded">
		</a>
		<div class="item-wrapper">
			<p class="helper">
				<a href="javascript:void(0);" class="username" target="_blank">${comment.user.username}</a>
			</p>
			<div class="comment-ct">
				<p class="the-comment">${comment.content}</p>
			</div>
			<div class="helper clearfix" title="${am:formateDate(comment.createTime,'yyyy-MM-dd HH:mm:ss')}">
				${am:dataString(comment.createTime)}&nbsp;&nbsp; 来自：${am:ipAddress(comment.ip)}&nbsp;&nbsp;<a href="javascript:;"
					class="btn-reply btn-action-reply">回复</a>&nbsp;&nbsp; <a
					class="btn-vote btn-action-vote" href="javascript:;"><span>赞</span></a>
			</div>
		</div>
	</div>
</c:forEach>
