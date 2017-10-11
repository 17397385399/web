<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="en">
<head>
<title>个人网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../front/jsfile.jsp"></jsp:include>
<style type="text/css">
	.m{float:left; width: 400px;height:300px; margin-top: 200px;margin-left:10px; }
</style> 
</head>
<body>
<div class="wrap">
	<jsp:include page="head.jsp" />

	<div class="news">
		<div class="container">
			<h3>视   频</h3>
			<c:if test="${videolist ne null}">
				<c:forEach items="${videolist}" var="video" varStatus="vs">
						<div class="col-md-4 news-1 wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
							<video poster="vs.png" controls>
							  <source src="${pageContext.request.contextPath}${video.url}" type="video/mp4">
							  <!-- <source src="path/to/video.webm" type="video/webm">-->
							  <!-- Captions are optional -->
							</video>
							<script>plyr.setup();</script>
							<span class="arrow"> </span>
							<div class="news-top">
								<!-- <h6>18</h6> -->
								<p>${video.name}</p>
							</div>
							<div class="news-bottom">
								<p>${video.description}</p>
							</div>
						</div>
				</c:forEach>
			</c:if>
				<div class="clearfix"> </div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>
