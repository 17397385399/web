<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="en">
<head>
<title>个人网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../front/jsfile.jsp"></jsp:include>
</head>
<body>
<div class="wrap">
	<jsp:include page="head.jsp" />  
  <!-- header -->
	<div class="main">
	<div class="home_news">
		<div class="news_con">
			<div class="top_tit">
				<span class="span1"><a href="#">动态</a></span><br />
				<span class="span2">NEWS</span>
			</div>
			<ul>
				<c:if test="${dynamiclist ne null}">
					<c:forEach items="${dynamiclist}" var="dynamic" varStatus="vs">
							<li class="clearfix wow bounceIn">
								<div class="news_left">
									<a href="${pageContext.request.contextPath}/dynamic/detail.action?id=${dynamic.id}">${dynamic.title}</a>
									<p>${dynamic.content}</p>
								</div>
								<div class="news_right">
									<span>05.25</span>
						<time>2016</time>
								</div>
							</li>
					</c:forEach>
				 </c:if>
			</ul>
		</div>
	</div>
</div>
  <!--===========layout-footer================-->
	<%@ include file="../front/footer.jsp"%>
</div>
</body>
</html>
