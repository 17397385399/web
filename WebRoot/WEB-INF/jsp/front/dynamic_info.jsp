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
  <!-- news -->
	<div class="news" style="background:#fff;">
		<div class="container">
			<h3>动态</h3>
			<c:if test="${dynamicinfo ne null}">
				<c:forEach items="${dynamicinfo}" var="info" varStatus="vs">
							<header class="article--header">
				              <h1 class="article--title" style="text-align:center;">${info.title}</h1>
				              <ul class="article--meta" style="text-align:center;">
				                <li class="article--meta_item" style="list-style-type:none;"><i class="am-icon-calendar"></i> ${info.createdate}  ${info.createtime}</li>
				              </ul>
				            </header>
				            <div class="article--content" style="white-space: pre-wrap;word-wrap: break-word;">
				              ${info.content}
				            </div>
				</c:forEach>
			  </c:if>
				<div class="clearfix"> </div>
		</div>
	</div>
<!-- news -->
  <!--===========layout-footer================-->
	<%@ include file="../front/footer.jsp"%> 
</div>
</body>
</html>
