<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/WEB-INF/tlds/am.tld" prefix="am" %>
<c:forEach items="${albums}" var="album">
	<li>
		<a href="/album/${album.id}" target="_blank">
			<img src="${basePath}/${album.img}" alt="${album.title}" title="${album.title}" width="150" height="150">
			<span class="icon_play" title="播放"></span>
		</a>
		<h5><a href="/album/${album.id}" title="${album.title}" target="_blank">${album.title}</a></h5>
		<%-- <p><a href="#" title="SHE'S"> ${album.}</a></p> --%>
	</li>
</c:forEach>