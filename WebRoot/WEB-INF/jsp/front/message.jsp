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
		<div class="container">
		<div class="contact-data">
			<h4 style="text-align:center;">欢迎留言。</h4>
		          <div class="contact-form">
					     <form action="${pageContext.request.contextPath}/message/add.action" method="post" class="left_form">
						    <div>
						    	<span><label>手机号</label></span>
						    	<span><input name="email"  type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>邮箱</label></span>
						    	<span><input name="mobile" type="text" class="textbox"></span>
						    </div>
					        <div>					    	
						    	<span><label>内容</label></span>
						    	<span><textarea id="doc-vld-name-2" name="content" maxlength="500" required style="width:100%;height:300px;"></textarea></span>
						    </div>
						   <div>
						   		<span></span>
						  </div>
						  <input type="submit" value="提交" class="myButton">
					    </form>
					    <div class="clear"></div>
				  </div>
			</div>
		</div>
	</div>

  <!--===========layout-footer================-->
	<%@ include file="../front/footer.jsp"%>
</div>
</body>
</html>
