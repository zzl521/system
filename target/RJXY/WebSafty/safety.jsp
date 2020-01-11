<%--
  Created by IntelliJ IDEA.
  User: Zzl
  Date: 2019/11/24
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>权限验证</title>
    <script>

            var x;
            var safetycode=9527
            var person=prompt("请输内部代码以验证您是否有权限注册","请在此输入");
            if (person==safetycode){
                alert("验证成功");
                location.href="../jsp/register.jsp";
             }
            else {
                alert("您的权限验证码有误，您无法注册超级管理员账号！")
                location.href="../jsp/login.jsp";
            }
    </script>

</head>
<body>

</body>
</html>
