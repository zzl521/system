<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/12/30
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="refresh" content="4;url='${pageContext.request.contextPath}/index.jsp';"> //CSS 3 动态面跳转
    <title>用户注册</title>
    <style type="text/css">
        body {
            background: #555
        }
        .loading {
            -webkit-animation: fadein 2s;
            -moz-animation: fadein 2s;
            -o-animation: fadein 2s;
            animation: fadein 2s
        }
        @-moz-keyframes fadein {
            from {
                opacity: 0
            }
            to {
                opacity: 1
            }
        }
        @-webkit-keyframes fadein {
            from {
                opacity: 0
            }
            to {
                opacity: 1
            }
        }
        @-o-keyframes fadein {
            from {
                opacity: 0
            }
            to {
                opacity: 1
            }
        }
        @keyframes fadein {
            from {
                opacity: 0
            }
            to {
                opacity: 1
            }
        }
        .spinner-wrapper {
            position: absolute;
            top: 0;
            left: 0;
            z-index: 300;
            height: 100%;
            min-width: 100%;
            min-height: 100%;
            background: rgba(255,255,255,0.93)
        }
        .spinner-text {
            position: absolute;
            top: 45%;
            left: 30%;
            margin-left: 0px;
            margin-top: 2px;     //调整文字的位置
        color: #000;
            letter-spacing: 1px;
            font-size: 20px;
            font-family: Arial
        }
        .spinner {
            position: absolute;
            top: 45%;
            left: 50%;
            display: block;
            margin-left: -100px;
            width: 1px;
            height: 1px;     //调整转圈的位置
        border: 30px solid rgba(255,0,0,1);
            -webkit-border-radius: 50px;
            -moz-border-radius: 50px;
            border-radius: 50px;
            border-left-color: transparent;
            border-right-color: transparent;
            -webkit-animation: spin 1.5s infinite;
            -moz-animation: spin 1.5s infinite;
            animation: spin 1.5s infinite
        }
        @-webkit-keyframes spin {
            0%,100% {
                -webkit-transform: rotate(0deg) scale(1)
            }
            50% {
                -webkit-transform: rotate(720deg) scale(0.6)
            }
        }
        @-moz-keyframes spin {
            0%,100% {
                -moz-transform: rotate(0deg) scale(1)
            }
            50% {
                -moz-transform: rotate(720deg) scale(0.6)
            }
        }
        @-o-keyframes spin {
            0%,100% {
                -o-transform: rotate(0deg) scale(1)
            }
            50% {
                -o-transform: rotate(720deg) scale(0.6)
            }
        }
        @keyframes spin {
            0%,100% {
                transform: rotate(0deg) scale(1)
            }
            50% {
                transform: rotate(720deg) scale(0.6)
            }
        }
    </style>
    <script>
        var count = 2;
        var interval = window.setInterval("timeout()",1000);
        function timeout() {
            var s=document.getElementById("spinner");
            s.innerHTML="恭喜您成功完成用户注册！页面将在"+count+"秒后刷新";      //定时器控制跳转
            count--;

        }
    </script>
</head>
<body>
<div class="loading">
    <div class="spinner-wrapper">
        <span class="spinner-text" ><h2 id="spinner">恭喜您付款成功！页面将在2秒后刷新</h2></span>
        <span class="spinner"></span>
    </div>
</div>
</body>