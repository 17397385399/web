<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理系统</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/admin/css/font.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/admin/css/xadmin.css">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/res/admin/images/icon/icon.png">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/res/admin/images/icon/favicon.ico">
<script src="${pageContext.request.contextPath}/res/admin/js/xadmin.js"></script>
<script src="${pageContext.request.contextPath}/res/admin/lib/layui/layui.js"></script>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
</head>
<body class="login-bg">
    <div class="login">
        <div class="message">管理员登录</div>
        <div id="darkbannerwrap"></div>
        
        <form action="${pageContext.request.contextPath}/admin/login/userLogin.action" class="layui-form" >
            <input name="loginname" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>
</body>
</html>