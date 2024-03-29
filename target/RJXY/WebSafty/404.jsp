<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/11/23
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>故障公告页</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/global.css">
    <style>
        .notice{width: 600px; margin: 30px auto; padding: 30px 15px; border-top: 5px solid #009688; line-height: 30px;  text-align: center; font-size: 16px; font-weight: 300; background-color: #f2f2f2;}

        @media screen and (max-width: 750px) {
            html body{margin-top: 0;}
            .notice{width: auto; margin: 20px 15px; padding: 30px 0;}
        }
    </style>
</head>

<body>

<div class="fly-none" style="min-height: 0; padding: 0;">
    <i class="iconfont icon-tishilian"></i>
</div>

<div class="notice layui-text">
    非常抱歉，未知的错误发生了
</div>

</body>
</html>