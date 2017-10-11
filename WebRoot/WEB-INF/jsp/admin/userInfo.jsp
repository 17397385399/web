<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../admin/jsfile.jsp"></jsp:include>
	<div class="x-body">
		<form class="layui-form" method="post" action="${pageContext.request.contextPath}/admin/user/update.action">
          <input type="hidden" id="id" name="id" value="${userInfo.id}">
          <div class="layui-form-item">
              <label for="name" class="layui-form-label">
                  <span class="x-red"></span>用户名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="name" name="name" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${userInfo.name}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="loginname" class="layui-form-label">
                  <span class="x-red"></span>登录名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="loginname" name="loginname" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${userInfo.loginname}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_pass" class="layui-form-label">
                  <span class="x-red"></span>密码
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="password" name="password" required="" lay-verify="pass"
                  autocomplete="off" class="layui-input" value="${userInfo.password}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="phone" class="layui-form-label">
                  <span class="x-red"></span>手机
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="phone" name="phone" required="" lay-verify="phone"
                  autocomplete="off" class="layui-input" value="${userInfo.phone}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red"></span>邮箱
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="email" name="email" required="" lay-verify="email"
                  autocomplete="off" class="layui-input" value="${userInfo.email}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="sex" class="layui-form-label">
                  <span class="x-red"></span>性别
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="sex" name="sex" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${userInfo.sex}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="age" class="layui-form-label">
                  <span class="x-red"></span>年龄
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="age" name="age" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${userInfo.age}">
              </div>
          </div>
          <div class="layui-form-item" style="margin-left:100px;">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button type="submit"  class="layui-btn" lay-filter="add" lay-submit="">保&nbsp;&nbsp;存</button>
          </div>
      </form>
    </div>
    <script>
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form()
          ,layer = layui.layer;
        
          //自定义验证规则
          form.verify({
            nikename: function(value){
              if(value.length < 5){
                return '昵称至少得5个字符啊';
              }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#password').val()!=$('#password').val()){
                    return '两次密码不一致';
                }
            }
          });

          //监听提交
          form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
          });
          
        });
    </script>
 