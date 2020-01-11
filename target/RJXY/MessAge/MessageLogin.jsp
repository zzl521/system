<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/12/29
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html><head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html">

    <title>加盟平台</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style2.0.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layui.css">


<%--    <script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8">--%>
<%--        layui.use('layer', function(){ //独立版的layer无需执行这一句--%>
<%--            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句--%>

<%--            //触发事件--%>
<%--            var active = {--%>
<%--                setTop: function(){--%>
<%--                    var that = this;--%>
<%--                    //多窗口模式，层叠置顶--%>
<%--                    layer.open({--%>
<%--                        type: 2 //此处以iframe举例--%>
<%--                        ,title: '当你选择该窗体时，即会在最顶端'--%>
<%--                        ,area: ['390px', '260px']--%>
<%--                        ,shade: 0--%>
<%--                        ,maxmin: true--%>
<%--                        ,offset: [ //为了演示，随机坐标--%>
<%--                            Math.random()*($(window).height()-300)--%>
<%--                            ,Math.random()*($(window).width()-390)--%>
<%--                        ]--%>
<%--                        ,content: '//layer.layui.com/test/settop.html'--%>
<%--                        ,btn: ['继续弹出', '全部关闭'] //只是为了演示--%>
<%--                        ,yes: function(){--%>
<%--                            $(that).click();--%>
<%--                        }--%>
<%--                        ,btn2: function(){--%>
<%--                            layer.closeAll();--%>
<%--                        }--%>

<%--                        ,zIndex: layer.zIndex //重点1--%>
<%--                        ,success: function(layero){--%>
<%--                            layer.setTop(layero); //重点2--%>
<%--                        }--%>
<%--                    });--%>
<%--                }--%>
<%--                ,confirmTrans: function x(){--%>
<%--                    //配置一个透明的询问框--%>
<%--                    layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {--%>
<%--                        time: 20000, //20s后自动关闭--%>
<%--                        btn: ['明白了', '知道了', '哦']--%>
<%--                    });--%>
<%--                }--%>
<%--                ,notice: function(){--%>
<%--                    //示范一个公告层--%>
<%--                    layer.open({--%>
<%--                        type: 1--%>
<%--                        ,title: false //不显示标题栏--%>
<%--                        ,closeBtn: false--%>
<%--                        ,area: '300px;'--%>
<%--                        ,shade: 0.8--%>
<%--                        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出--%>
<%--                        ,btn: ['火速围观', '残忍拒绝']--%>
<%--                        ,btnAlign: 'c'--%>
<%--                        ,moveType: 1 //拖拽模式，0或者1--%>
<%--                        ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'--%>
<%--                        ,success: function(layero){--%>
<%--                            var btn = layero.find('.layui-layer-btn');--%>
<%--                            btn.find('.layui-layer-btn0').attr({--%>
<%--                                href: 'http://www.layui.com/'--%>
<%--                                ,target: '_blank'--%>
<%--                            });--%>
<%--                        }--%>
<%--                    });--%>
<%--                }--%>
<%--                ,offset: function(othis){--%>
<%--                    var type = othis.data('type')--%>
<%--                        ,text = othis.text();--%>

<%--                    layer.open({--%>
<%--                        type: 1--%>
<%--                        ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset--%>
<%--                        ,id: 'layerDemo'+type //防止重复弹出--%>
<%--                        ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'--%>
<%--                        ,btn: '关闭全部'--%>
<%--                        ,btnAlign: 'c' //按钮居中--%>
<%--                        ,shade: 0 //不显示遮罩--%>
<%--                        ,yes: function(){--%>
<%--                            layer.closeAll();--%>
<%--                        }--%>
<%--                    });--%>
<%--                }--%>
<%--            };--%>

<%--            $('#layerDemo .layui-btn').on('click', function(){--%>
<%--                var othis = $(this), method = othis.data('method');--%>
<%--                active[method] ? active[method].call(this, othis) : '';--%>
<%--            });--%>

<%--        });--%>
<%--    </script>--%>
</head>
    <style type="text/css">
        ul li{font-size: 30px;color:#2ec0f6;}
        .tyg-div{z-index:-1000;float:left;position:absolute;left:5%;top:20%;}
        .tyg-p{
            font-size: 14px;
            font-family: 'microsoft yahei';
            position: absolute;
            top: 135px;
            left: 60px;
        }
        .tyg-div-denglv{
            z-index:1000;float:right;position:absolute;right:3%;top:10%;
        }
        .tyg-div-form{
            background-color: #23305a;
            width:300px;
            height:auto;
            margin:120px auto 0 auto;
            color:#2ec0f6;
        }
        .tyg-div-form form {padding:10px;}
        .tyg-div-form form input[type="text"]{
            width: 270px;
            height: 30px;
            margin: 25px 10px 0px 0px;
        }

        .tyg-div-form form button {
            cursor: pointer;
            width: 270px;
            height: 44px;
            margin-top: 25px;
            padding: 0;
            background: #2ec0f6;
            -moz-border-radius: 6px;
            -webkit-border-radius: 6px;
            border-radius: 6px;
            border: 1px solid #2ec0f6;
            -moz-box-shadow:
                    0 15px 30px 0 rgba(255,255,255,.25) inset,
                    0 2px 7px 0 rgba(0,0,0,.2);
            -webkit-box-shadow:
                    0 15px 30px 0 rgba(255,255,255,.25) inset,
                    0 2px 7px 0 rgba(0,0,0,.2);
            box-shadow:
                    0 15px 30px 0 rgba(255,255,255,.25) inset,
                    0 2px 7px 0 rgba(0,0,0,.2);
            font-family: 'PT Sans', Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-weight: 700;
            color: #fff;
            text-shadow: 0 1px 2px rgba(0,0,0,.1);
            -o-transition: all .2s;
            -moz-transition: all .2s;
            -webkit-transition: all .2s;
            -ms-transition: all .2s;
        }
        .Absolute-Center{

            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;

        }
    </style>
<body>
<div class="tyg-div">
    <ul>
        <li>让</li>
        <li><div style="margin-left:20px;">书</div></li>
        <li><div style="margin-left:40px;">籍</div></li>
        <li><div style="margin-left:60px;">改</div></li>
        <li><div style="margin-left:80px;">变</div></li>
        <li><div style="margin-left:100px;">生</div></li>
        <li><div style="margin-left:120px;">活</div></li>
    </ul>
</div>
<div id="contPar" class="contPar">
    <div id="page1" style="z-index:1;">
        <div class="title0">智慧书城在线加盟平台</div>
        <div class="title1">线下书店、资源、方案、发展、做大做强</div>
        <div class="imgGroug">
            <ul>
                <img alt="" class="img0 png" src="${pageContext.request.contextPath}/images/page1_0.png">
                <img alt="" class="img1 png" src="${pageContext.request.contextPath}/images/page1_1.png">
                <img alt="" class="img2 png" src="${pageContext.request.contextPath}/images/page1_2.png">
            </ul>
        </div>
        <img alt="" class="img3 png" src="${pageContext.request.contextPath}/images/page1_3.jpg">
    </div>
</div>
<div class="tyg-div-denglv">
    <div class="tyg-div-form">
        <form action="${pageContext.request.contextPath}/Mes/getCode">
            <h2>登录</h2><p class="tyg-p">欢迎访问  智慧书城</p>
            <div style="margin:5px 0px;">
                <input type="text" name="phoneNumber" placeholder="请输入手机号">
            </div>
            <!--<div style="margin:5px 0px;">
                <input type="text" placeholder="请输入密码...">
            </div>-->
            <div style="margin:5px 0px;">
                <input type="text" style="width:150px;" placeholder="请输入验证码...">
                <input type="submit" onclick="funtion()" class="layui-btn layui-btn-sm layui-btn-normal" value="发送验证码">
            </div>
            <button type="submit">登<span style="width:20px;"></span>录</button>

        </form>
<%--        <button data-method="confirmTrans" class="layui-btn" onclick="x()">信息回显</button>--%>
    </div>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/com.js"></script>
<!--[if IE 6]>
<%--<!--<script language="javascript" type="text/javascript" src="./script/ie6_png.js"></script>-->--%>
<%--<!--<script language="javascript" type="text/javascript">-->--%>
<%--<!--    DD_belatedPNG.fix(".png");-->--%>
<%--<!--</script>-->--%>
<![endif]-->
<script type="text/javascript">
    function funtion() {
        alert("验证码发送成功!");
    }
</script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->


</body>
</html>
