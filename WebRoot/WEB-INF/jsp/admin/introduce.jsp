<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../admin/jsfile.jsp"></jsp:include>

        <form action="${pageContext.request.contextPath}/admin/adminintroduce/update.action" method="post" autocomplete="off" draggable="false">
          <div class="col-md-12" style="height:600px;">
            <blockquote class="layui-elem-quote" style="margin-top: 10px;">简介</blockquote>
            <button style="float:right;margin-right:10px;background-image:url(${pageContext.request.contextPath}/res/images/save.png);height:32px;width:32px;background-color:#f2f2f2;border:0px;margin-top:-52px;" type="submit"></button>
            <div class="add-article-box" style="height:600px;">
              <div class="add-article-box-content" style="height:600px;">
				<input name="id" type="hidden" value="${introducelist.id}">
				<textarea style="height:540px;width:100%;" class="form-control" name="content" rows="4" autocomplete="off">${introducelist.content}</textarea>
              </div>
            </div>
          </div>
        </form>

