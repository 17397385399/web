<%@page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../admin/jsfile.jsp"></jsp:include>
 <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">动态管理</a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so">
          <input class="layui-input" placeholder="开始日" name="start" id="start">
          <input class="layui-input" placeholder="截止日" name="end" id="end">
          <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
          <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      <xblock>
        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="x_admin_show('添加用户','./admin-add.html')"><i class="layui-icon"></i>添加</button>
        <span class="x-right" style="line-height:40px">共有数据：88 条</span>
      </xblock>
      <table class="layui-table" style="table-layout:fixed;"> 
        <thead>
          <tr>
            <th style="width:80px;">
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>标题</th>
            <th>摘要</th>
            <th>日期</th>
            <th style="width:80px;">状态</th>
            <th>操作</th>
        </thead>
        <tbody>
          <c:if test="${dynamiclist ne null}">
				<c:forEach items="${dynamiclist}" var="dynamic" varStatus="vs">
					<tr>
				        <td>
			              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
			            </td>
				        <td>${dynamic.title}</td>
				        <td style="white-space: nowrap;overflow:hidden;text-overflow:ellipsis;">${dynamic.content}</td>
				        <td>${dynamic.createdate}   ${dynamic.createtime}</td>
			            <td class="td-status">
			              <span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span></td>
			            <td class="td-manage">
			              <a onclick="member_stop(this,'10001')" href="javascript:;"  title="启用">
			                <i class="layui-icon">&#xe601;</i>
			              </a>
			              <a title="编辑"  onclick="x_admin_show('编辑','admin-edit.html')" href="javascript:;">
			                <i class="layui-icon">&#xe642;</i>
			              </a>
			              <a title="删除" onclick="member_del(this,'${dynamic.id}')" href="javascript:;">
			                <i class="layui-icon">&#xe640;</i>
			              </a>
			            </td>
				    </tr>
				</c:forEach>
		 </c:if>
        </tbody>
      </table>
      <div class="page">
        <div>
          <a href="?start=0">首  页</a>
          <a class="prev" href="?start=${start-count}">&lt;&lt;</a>
<!--           <a class="num" href="">1</a>
          <span class="current">2</span>
          <a class="num" href="">3</a>
          <a class="num" href="">489</a> -->
          <a class="next" href="?start=${start+count}">&gt;&gt;</a>
          <a href="?start=${last-count}">末  页</a>
        </div>
      </div>

    </div>
    <script>
      layui.use('laydate', function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

       /*停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              $.ajax({
       		   type: "POST",
       		   url: "delete.action?id="+id,
       		   success: function(){
       		   }
       		  }); 
              $(obj).parents("tr").remove();  
 			  layer.msg('已删除!',{icon:1,time:1000});
          });
      }

      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
