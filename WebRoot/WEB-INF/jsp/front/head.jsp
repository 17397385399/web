<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<div class="head-nav">
				<span class="menu"> </span>
					<ul class="cl-effect-16">
						<li><a href="${pageContext.request.contextPath}/index/main.action" data-hover="首页">首页</a></li>
			              <c:if test="${menulist ne null}">
							<c:forEach items="${menulist}" var="menu" varStatus="vs">
								<c:if test="${menu.ishasson == 0}">
									<li><a href="${pageContext.request.contextPath}${menu.nodeurl}" data-hover="${menu.showname}">${menu.showname}</a></li>
								</c:if>
								<c:if test="${menu.ishasson == 1}">
									<li><a href="#">${menu.showname}</a>
										<ul>
											<c:forEach items="${menulist2[menu.id]}" var="menu2" >
												<li><a href="${pageContext.request.contextPath}${menu.nodeurl}" data-hover="${menu.showname}">${menu2.showname}</a></li>
											</c:forEach>
								        </ul>
									</li>
								</c:if>
							</c:forEach>
						  </c:if>
					<div class="clearfix"> </div>
					</ul>
			</div>