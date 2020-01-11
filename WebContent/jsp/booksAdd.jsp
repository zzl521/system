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
                <input name="id"  readonly="" autocomplete="off" class="layui-input" type="hidden" value=0>
                <div class="layui-form-item">

                    <div class="layui-inline">
                        <label class="layui-form-label">书籍名</label>
                        <div class="layui-input-inline">
                            <input name="name" lay-verify="required" autocomplete="off" class="layui-input" type="text">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">作者</label>
                        <div class="layui-input-inline">
                            <input name="writer" lay-verify="required" autocomplete="off" class="layui-input" type="text">
                        </div>
                    </div>
                </div>

                <div class="layui-inline">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-inline">
                        <input name="price" lay-verify="required" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">出版社</label>
                    <div class="layui-input-inline">
                        <input name="company" lay-verify="required" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">图片URL</label>
                    <div class="layui-input-inline">
                        <input name="picture" lay-verify="required" autocomplete="off" class="layui-input" type="text">
                    </div>
                </div>
                <div class="layui-inline">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit="" lay-filter="addBook">添加</button>
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
        var index = parent.layer.getFrameIndex(window.name);
        form.render();
        //监听提交
        form.on('submit(addBook)', function(data){

            $.ajax({
                url: "${pageContext.request.contextPath}/books/addBook",
                type: "post",
                //async: false,
                data: data.field,
                dataType: "json",
                success: function (data) {
                    if(data.msg!='0'){
                        layer.alert("添加成功",{icon: 1,time:1000},function () {
                            layer.close(layer.index);
                            window.parent.location.reload();
                        });
                    } else{
                        layer.alert("添加失败",{icon: 2,time:2000});
                    }
                }
            });
            return false;
        });

    });
</script>
</body>
</html>