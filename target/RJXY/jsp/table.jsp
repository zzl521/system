<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/11/24
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>layui在线调试</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <style>
        body{margin: 10px;}
        .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
</head>
<body>

<table class="layui-hide" id="demo" lay-filter="test"></table>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/tabletool.js"></script>
<script>

    layui.use(['laydate', 'laypage', 'layer', 'table', 'element', 'slider'], function(){
        var $ = layui.jquery
            ,laydate = layui.laydate //日期
            ,laypage = layui.laypage //分页
            ,layer = layui.layer //弹层
            ,table = layui.table //表格
            ,element = layui.element //元素操作
            ,slider = layui.slider //滑块
            ,tableObj = table.render({});



        //执行一个 table 实例
        table.render({
            elem: '#demo'
            ,height: 420
            ,url: '${pageContext.request.contextPath}/table/table' //数据接口
            ,limit:5
            //,page:true(自带的这个要注掉)
            ,page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']//自定义分页布局
                ,limits:[5,10,15]
                ,first: false //不显示首页
                ,last: false //不显示尾页

            }
            ,title: '订单表'
            ,toolbar: 'default' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            // ,totalRow: true //开启合计行
            ,cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                ,{field: 'id', title: 'ID', width:150, sort: true, fixed: 'left', totalRowText: '合计：'}
                ,{field: 'name', title: '用户名', width:200}
                ,{field: 'phone', title: '电话', width:200}
                ,{field: 'address', title: '地址', width:200}
                ,{field: 'bbs', title: '留言', width: 200}
                ,{fixed: 'right', width: 220, align:'center', toolbar: '#barDemo'}
            ]]

        });


        //监听行工具事件
        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                ,layEvent = obj.event //获得 lay-event 对应的值
                ,editList=[];
            $.each(data,function(name,value) {
                editList.push(value);
            });
            if(layEvent === 'detail'){
                //脚本编辑弹出层
                var name = encodeURIComponent(data.toolName);
                // console.log(data.toolName);
                layer.open({
                    type: 2,
                    title: '订单信息',
                    shadeClose: true,
                    shade: 0.8,
                    maxmin: true,
                    area: ['70%', '70%'],
                    content: '${pageContext.request.contextPath}/jsp/tableInfo.jsp?toolSceneId='+data.toolSceneId+'&'+'id='+data.id,
                    success: function(layero, index){
                        var body = layer.getChildFrame('body', index);
                        var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                        var inputList = body.find("input");
                        for (var i = 0; i < inputList.length; i++ ) {
                            $(inputList[i]).val(editList[i]);
                        }
                    }
                });

            } else if(layEvent === 'del'){
                layer.confirm('真的删除行么', function(index){

                    //向服务端发送删除指令
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/table/del",
                        dataType:'json',
                        // async: false,
                        data: "id="+data.id,
                        dataType: "json",
                        success: function (data) {
                            var message = data.msg;
                            if(data.msg === '0'){
                                obj.del();
                                layer.close(index);
                                layer.alert("删除成功",{icon: 1,time:2000});
                                tableObj.reload({
                                    url:'${pageContext.request.contextPath}/table/table'
                                });
                            } else {
                                layer.alert("删除失败", {
                                    icon: 2,title:'提示'
                                });
                                return;
                            }
                        },
                        error: function () {
                        }

                    });
                });
            } else if(layEvent === 'edit'){
                //脚本编辑弹出层
                var name = encodeURIComponent(data.toolName);
                // console.log(data.toolName);
                layer.open({
                    type: 2,
                    title: '编辑订单信息',
                    shadeClose: true,
                    shade: 0.8,
                    maxmin: true,
                    area: ['70%', '70%'],
                    content: '${pageContext.request.contextPath}/jsp/tableEdit.jsp?toolSceneId='+data.toolSceneId+'&'+'id='+data.id,
                    success: function(layero, index){
                        var body = layer.getChildFrame('body', index);
                        var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                        var inputList = body.find("input");
                        for (var i = 0; i < inputList.length; i++ ) {
                            $(inputList[i]).val(editList[i]);
                        }
                    }
                });

            }
        });

    });
</script>
</body>
</html>

