layui.use(['laypage', 'layer', 'table', 'element', 'slider'], function(){
    var $ = layui.jquery
        ,laypage = layui.laypage //分页
        ,layer = layui.layer //弹层
        ,table = layui.table //表格
        ,element = layui.element //元素操作
        ,slider = layui.slider //滑块
        ,tableObj = table.render({});

//监听头工具栏事件
    table.on('toolbar(test)', function(obj){
        var checkStatus = table.checkStatus(obj.config.id)
            ,data = checkStatus.data //获取选中的数据
            ,editList=[];
        for(var i=0;i<data.length;i++){
            $.each(data[i],function(name,value) {
                editList.push(value);
            }); }

        console.info(checkStatus);
        switch(obj.event){
            case 'add':
                layer.msg('添加');
                //脚本编辑弹出层
                var name = encodeURIComponent(data.toolName);
                // console.log(data.toolName);
                layer.open({
                    type: 2,
                    title: '添加书籍信息',
                    // title:data.to,
                    shadeClose: true,
                    shade: 0.8,
                    maxmin: true,
                    area: ['70%', '70%'],
                    content: 'booksAdd.jsp?toolSceneId='+data.toolSceneId+'&'+'id='+data.id,
                    success: function(layero, index){
                        var body = layer.getChildFrame('body', index);
                        var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();

                    }

                });
                break;
            case 'update':
                if(data.length === 0){
                    layer.msg('请选择一行');
                } else if(data.length > 1){
                    layer.msg('只能同时编辑一个');
                } else {
                    //脚本编辑弹出层
                    var name = encodeURIComponent(data.toolName);
                    // console.log(data.toolName);
                    layer.open({
                        type: 2,
                        title: '编辑书籍信息',
                        shadeClose: true,
                        shade: 0.8,
                        maxmin: true,
                        area: ['70%', '70%'],
                        content: 'booksEdit.jsp?toolSceneId='+data.toolSceneId+'&'+'id='+data.id,
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
                break;
            case 'delete':
                if(data.length === 0){
                    layer.msg('请选择一行');
                } else {
                    layer.confirm('真的删除行么', function(index){

                        //向服务端发送删除指令
                        $.ajax({
                            type: "get",
                            url: "../students/del",
                            dataType:'json',
                            // async: false,
                            data: "id="+editList[0],
                            dataType: "json",
                            success: function (data) {
                                var message = data.msg;
                                if(data.msg === '0'){
                                    //obj.del();
                                    layer.close(index);
                                    layer.alert("删除成功",{icon: 1,time:2000});
                                    tableObj.reload({
                                        url:'${pageContext.request.contextPath}/books/book'
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
                }
                break;
        };
    });



});

