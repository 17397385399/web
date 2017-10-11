<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理系统</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/admin/css/font.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/admin/css/xadmin.css">
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/res/admin/js/xadmin.js"></script>
<script src="${pageContext.request.contextPath}/res/admin/lib/layui/layui.js"></script>

</head>
<body>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="./index.html">后台管理系统</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe699;</i>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">+新增</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
              <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
               <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
            </dl>
          </li>
        </ul>
        <ul class="layui-nav right" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">${username}</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('个人信息','${pageContext.request.contextPath}/admin/user/info.action',450,520)">个人信息</a></dd>
              <!-- <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd> -->
              <dd><a href="${pageContext.request.contextPath}/admin/login/userSignout.action">注销</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item to-index"><a href="${pageContext.request.contextPath}/index/main.action" target="_Blank">前台首页</a></li>
        </ul>
        
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
     <!-- 左侧菜单开始 -->
    <div class="left-nav">
      <div id="side-nav">
        <ul id="nav">
        <c:if test="${adminmenulist ne null}">
			<c:forEach items="${adminmenulist}" var="adminmenu" varStatus="vs">
					<c:if test="${adminmenu.ishasson == 0}">
						<li>
							<a _href="${pageContext.request.contextPath}${adminmenu.nodeurl}" target="iframeDiv">
	                    		<i class="iconfont">${adminmenu.iconfont}</i>
	                    		<cite>${adminmenu.showname}</cite>
	               			 </a>
						</li>
					</c:if>
					<c:if test="${adminmenu.ishasson == 1}">
					    <li>
			                <a href="javascript:;">
			                    <i class="iconfont">${adminmenu.iconfont}</i>
			                    <cite>${adminmenu.showname}</cite>
			                    <i class="iconfont nav_right">&#xe697;</i>
			                </a>
			                <ul class="sub-menu">
			                	<c:forEach items="${adminmenulist2[adminmenu.id]}" var="adminmenu2" >
									<li>
				                        <a _href="${pageContext.request.contextPath}${adminmenu2.nodeurl}" target="iframeDiv">
				                            <i class="iconfont">&#xe6a7;</i>
				                            <cite>${adminmenu2.showname}</cite>
				                        </a>
				                    </li >
		        				</c:forEach>
			                </ul>
			            </li>
					</c:if>
			</c:forEach>			
		</c:if>
        </ul>
      </div>
    </div>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
          <ul class="layui-tab-title">
            <li>我的桌面</li>
          </ul>
          <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe name="iframeDiv" src="${pageContext.request.contextPath}/admin/main/main.action" frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
          </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved</div>  
    </div>
    <!-- 底部结束 -->
</body>
</html>