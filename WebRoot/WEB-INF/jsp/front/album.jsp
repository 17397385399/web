<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="en">
<head>
<title>个人网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../front/jsfile.jsp"></jsp:include>
</head>
<body>
    <!--===========layout-header================-->
	<jsp:include page="head.jsp" />

	<div class="news">
		<div class="container">
			<h3>相册</h3>
			<c:if test="${albumlist ne null}">
				<c:forEach items="${albumlist}" var="album" varStatus="vs">
						<div class="col-md-4 news-1 wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;margin-bottom:20px;">
							<a href="${pageContext.request.contextPath}/photos/main.action?albumid=${album.id}&start=0"><img style="width:350px;height:258px;" src="${pageContext.request.contextPath}${album.url}" class="img-responsive" alt="" /></a>
							<span class="arrow"> </span>
							<div class="news-top">
								<h6>18</h6>
								<p>june 2014</p>
							</div>
							<div class="news-bottom">
								<p>${album.description}</p>
							</div>
						</div>
				</c:forEach>
			</c:if>
				<div class="clearfix"> </div>
		</div>
	</div>
	<div style="text-align:center">
		    <a href="?start=0">首  页</a>
		    <c:if test="${start != 0}">
		    	|<a href="?start=${start-count}">上一页</a>
		    </c:if>
		    <c:if test="${(start+count) != last}">
		    	|<a href="?start=${start+count}">下一页</a>
		    </c:if>
		    |<a href="?start=${last-count}">末  页</a>
	</div>
  <!--===========layout-footer================-->
	<jsp:include page="footer.jsp" />
</body>
</html>
