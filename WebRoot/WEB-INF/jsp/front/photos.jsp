<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="en">
<head>
<title>个人网站</title>
<jsp:include page="../front/jsfile.jsp"></jsp:include>
</head>
<body>
<!-- header -->
<div class="wrap">
	<jsp:include page="head.jsp" />
	<div class="main">
		<div class="container">
			<h2>图片</h2>
			<div class="services">
					<c:if test="${photoslist ne null}">
						<c:forEach items="${photoslist}" var="photos" varStatus="vs">
								<div class="grid_1_of_4 images_1_of_4">
									<a href="${pageContext.request.contextPath}${photos.url}" class="b-link-stripe b-animate-go  thickbox swipebox" title="${photos.name}"><div class="b-line b-line1"></div><div class="b-line b-line2"></div><div class="b-line b-line3"></div><div class="b-line b-line4"></div><div class="b-line b-line5"></div>
								    <img src="${pageContext.request.contextPath}${photos.url}" alt=""><span class="zoom-icon"></span> </a>
									<h4>${photos.name}</h4>
									<p>${photos.description}</p>
					            </div>
						</c:forEach>
					</c:if>
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
	</div>
  <!--===========layout-footer================-->
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>