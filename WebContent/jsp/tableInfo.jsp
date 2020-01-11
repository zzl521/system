<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/11/25
  Time: 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/layui/css/layui.css"
          media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-header"></div>
        <div class="layui-card-body" pad15="">

            <form class="layui-form" action="">

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">id</label>
                        <div class="layui-input-inline">
                            <input name="id" lay-verify="required" readonly="" readonly="" autocomplete="off" class="layui-input" type="text">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">用户名</label>
                        <div class="layui-input-inline">
                            <input name="name" lay-verify="required" readonly=""  autocomplete="off" class="layui-input" type="text">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">电话号</label>
                        <div class="layui-input-inline">
                            <input name="writer" lay-verify="required" readonly=""  autocomplete="off" class="layui-input" type="text">
                        </div>
                    </div>

                    <div class="layui-inline">
                        <label class="layui-form-label">地址</label>
                        <div class="layui-input-inline">
                            <input name="price" lay-verify="required" readonly=""  autocomplete="off" class="layui-input" type="text">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">留言</label>
                        <div class="layui-input-inline">
                            <input name="company" lay-verify="required" readonly=""  autocomplete="off" class="layui-input" type="text">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    layui.use(['form', 'layedit'] ,function(){
        var $ = layui.jquery
            ,form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit;

        form.render();

    });
</script>
</body>
</html>