<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html lang="en">
<head>
<title>个人网站</title>
<jsp:include page="../front/jsfile.jsp"></jsp:include>
<script type="text/javascript">
	new WOW().init();

	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type : 'inline',
			fixedContentPos : false,
			fixedBgPos : true,
			overflowY : 'auto',
			closeBtnInside : true,
			preloader : false,
			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});
	});
	$('.example1').wmuSlider();         

<!-- script-for-nav -->
		$( "span.menu" ).click(function() {
			$( ".head-nav ul" ).slideToggle(300, function() {
				// Animation complete.
			});
		});
<!-- script-for-nav --> 
</script>
</head>
<body>
<!-- header -->
<div class="wrap">
	<div class="header">
  	    <div class="container">
			<jsp:include page="head.jsp" />
			<%-- <div class="header-bottom">
				<div class="head-left">
					<p>+2  495  <span>134-27-72</span></p>
				</div>
					<div class="logo">
						<a href="index.html"><img src="${pageContext.request.contextPath}/res/images/logo.png" class="img-responsive" alt="" /></a>
					</div>
					<div class="head-right">
						<div class="search2">
					  <form>
						 <input type="text" value="YOUR QUESTION" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'YOUR QUESTION..';}">
					  </form>
					</div>
				</div>
					<div class="clearfix"> </div>
			</div> --%> 	
		</div> 
	</div> 
	<div class="banner">
		<div class="container">
		<div class="wmuSlider example1 section" id="section-1">
			   <article style="position: absolute; width: 100%; opacity: 0;"> 
			   	   	<div class="banner-info">
						<h1>Veil project</h1>
						<a href="#" class="meet wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">JOIN</a>
					</div>
				</article>
				 <article style="position: absolute; width: 100%; opacity: 0;"> 
			   	   	<div class="banner-info">
						<h1>Lorem Ipsum has been</h1>
						<a href="#" class="meet wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">JOIN</a>
					</div>
				</article>
				 <article style="position: absolute; width: 100%; opacity: 0;"> 
			   	   	<div class="banner-info">
						<h1>The point of using Lorem</h1>
						<a href="#" class="meet wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">JOIN</a>
					</div>
				</article>
				<ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="">2</a></li>
                </ul>
		  </div>		
	</div>
	</div>
<!-- header -->
<!-- types -->
	<div class="types">
		<div class="container">
			<h3>6 house types</h3>
			<div class="col-md-3 types-top wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<i class="aspen"></i>
				<h4>aspen</h4>
				<p>House area - 121.4 m2.Not a big compact and cozy house of wood. Gable roof. Second floor - attic. Space of the house clearly defined by function. To .... </p>
			</div>
			<div class="col-md-3 types-top wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<i class="heaven"></i>
				<h4>heaven</h4>
				<p>House area - 121.4 m2.Not a big compact and cozy house of wood. Gable roof. Second floor - attic. Space of the house clearly defined by function. To .... </p>
			</div>
			<div class="col-md-3 types-top wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<i class="Veil"></i>
				<h4>Veil</h4>
				<p>House area - 121.4 m2.Not a big compact and cozy house of wood. Gable roof. Second floor - attic. Space of the house clearly defined by function. To .... </p>
			</div>
			<div class="col-md-3 types-top wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<i class="Tower"></i>
				<h4>Tower</h4>
				<p>House area - 121.4 m2.Not a big compact and cozy house of wood. Gable roof. Second floor - attic. Space of the house clearly defined by function. To .... </p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- types -->
<!-- about -->
	<div class="abo">
		<div class="container">
			<h2>简介</h2>
			<p style="white-space: nowrap;overflow:hidden;text-overflow:ellipsis;">${introducelist.content}</p>
			<a href="${pageContext.request.contextPath}/introduce/main.action" class="meet-1">详情</a>
		</div>
	</div>
<!-- about -->
<!-- news -->
	<div class="news">
		<div class="container">
			<h3>相册</h3>
			<c:if test="${photoslist ne null}">
				<c:forEach items="${photoslist}" var="photos" varStatus="vs">
						<div class="col-md-4 news-1 wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;margin-bottom:20px;">
							<img style="width:350px;height:258px;" src="${pageContext.request.contextPath}${photos.url}" class="img-responsive" alt="" />
							<span class="arrow"> </span>
							<div class="news-top">
								<h6>18</h6>
								<p>june 2014</p>
							</div>
							<div class="news-bottom">
								<p>${photos.description}</p>
							</div>
						</div>
				</c:forEach>
			</c:if>
				<div class="clearfix"> </div>
		</div>
	</div>
<!-- news -->
<!-- gallery -->
	<div class="gallery">
		<div class="container">
			<h3>视频</h3>
				<div class="col-md-6 gallery-left">
					<img src="${pageContext.request.contextPath}/res/images/img4.jpg" class="img-responsive wow bounceIn animated" data-wow-delay="0.4s" alt="" style="visibility: visible; -webkit-animation-delay: 0.4s;" />
					<div class="gallery-data">
						<h6 class="gal-h">03</h6>
						<p class="gal-p">jan 2014</p>
						<div class="clearfix"> </div>
					</div>
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog"><span> </span></a>
				<div id="small-dialog" class="mfp-hide">
					<iframe src="//player.vimeo.com/video/59927361" width="" height="" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
				</div>

				</div>
				<div class="col-md-6 gallery-right">
					<div class="gallery-top">
						<img src="${pageContext.request.contextPath}/res/images/img5.jpg" class="img-responsive wow bounceIn animated" data-wow-delay="0.4s" alt="" style="visibility: visible; -webkit-animation-delay: 0.4s;" />
						<div class="gallery-data">
							<h6 class="gal-h">03</h6>
							<p class="gal-p">jan 2014</p>
								<div class="clearfix"> </div>
						</div>
					</div>
					<div class="gallery-bottom">
						<img src="${pageContext.request.contextPath}/res/images/img6.jpg" class="img-responsive wow bounceIn animated" data-wow-delay="0.4s" alt="" style="visibility: visible; -webkit-animation-delay: 0.4s;" />
							<div class="gallery-data">
								<h6 class="gal-h">03</h6>
								<p class="gal-p">jan 2014</p>
									<div class="clearfix"> </div>
							</div>
					</div>
				</div>
				<div class="clearfix"> </div>
		</div>
	</div>
<!-- gallery -->

<!-- new  -->
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
									<div style="-o-text-overflow:ellipsis;word-break:break-all;height:50px;width:850px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">${dynamic.content}</div>
								</div>
								<div class="news_right">
									<span>${dynamic.createdate}</span>
									<time>${dynamic.createtime}</time>
								</div>
							</li>
					</c:forEach>
				 </c:if>
			</ul>
		</div>
	</div>
<!-- new -->

  <!--===========layout-footer================-->
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>