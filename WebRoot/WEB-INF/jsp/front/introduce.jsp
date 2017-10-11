<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="en">
<head>
<title>个人网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="../front/jsfile.jsp"></jsp:include>
</head>
<body>
<!-- header -->
<div class="wrap">
			<jsp:include page="head.jsp" />
<!-- news -->
	<div class="news" style="background:#fff;">
		<div class="container">
			<h3>简介</h3>
				<div class="cont" style="margin-top: 10px;">
					<p style="color: #000; font-family:宋体; font-size: 24px;font-weight:100;">
						<label style="white-space: pre-wrap;word-wrap: break-word;">${introducelist.content}</label>
					</p>
				</div>
				<div class="clearfix"> </div>
		</div>
	</div>
<!-- news -->

  <!--===========layout-footer================-->
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>
