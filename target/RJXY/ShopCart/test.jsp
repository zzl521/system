<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/12/24
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
    <title>订单信息录入</title>

    <link type="text/css" href="${pageContext.request.contextPath}/css/style2.css" rel="stylesheet" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
    <script language="javascript">
        $(function(){
            function test(func){
                var start = new Date().getTime();
                func();
                var end = new Date().getTime();
                return (end - start)+"ms";
            }
            $('.form').inform();
        });
    </script>

</head>
<body style="text-align: center;">

<div class="form">
    <form action="Pass/reliable" method="post" enctype="multipart/form-data">
        <div class="item">
            <span>姓名:&nbsp;&nbsp;&nbsp;&nbsp;</span>
            <label><input type="text" name="username"  class="width" placeholder="请输入您的称呼" /></label>
        </div>
        <div class="item">
            <span>电话号码:</span>
            <label><input type="password" class="width" name="password" placeholder="电话号" /></label>
        </div>
        <div class="item">
            <span>收获地址:</span>
            <label><input type="address" class="width" name="password" placeholder="请填写致区域单位" /></label>
        </div>


        <div class="item">
            <span>备　注:</span>
            <label><textarea name="bbs" class="width" placeholder="备注"></textarea></label>
        </div>
        <div class="item">
            <span></span>
            <label><button type="submit">提交</button></label>
            <label><button type="reset">重置</button></label>
        </div>
    </form>
</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
    <p>一本好书，为你打开世界之窗！</p>
    <p>来源：<a href="http://sc.chinaz.com/" target="_blank">素材地址</a></p>
</div>
</body>
</html>
