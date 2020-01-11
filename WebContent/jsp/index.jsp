<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
  <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
 
</head>
<body class="layui-layout-body ">
<div class="layui-layout  layui-layout-admin">
  <div class="layui-header ">
    <div class="layui-logo">后台管理</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav  layui-layout-left"> 
      <li class="layui-nav-item"><a href="">普通用户</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="${pageContext.request.contextPath}/${sessionScope.user.picture}" class="layui-nav-img">
          ${sessionScope.user.username}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="${pageContext.request.contextPath}/jsp/userFaceEdit.jsp" target="option">基本资料</a></dd>
          <!-- <dd><a href="">安全设置</a></dd> -->
        </dl>
      </li>
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/layuiadmin/loginout">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree "  lay-filter="test">
      
        <li class="layui-nav-item">
        	<a href="javascript:;">用户管理</a>
         	<dl class="layui-nav-child">
            <dd data-name="edit"><a href="${pageContext.request.contextPath}/jsp/userEdit.jsp" target="option">修改信息</a></dd>
            <dd data-name="pwd"><a href="${pageContext.request.contextPath}/jsp/pwd.jsp" target="option">修改密码</a></dd> 
          </dl>

      </ul>
      <ul class="layui-nav layui-nav-tree "  lay-filter="test">

      <li class="layui-nav-item">
        <a  onclick="bookView()">图书管理</a>

    </ul>

      <ul class="layui-nav layui-nav-tree "  lay-filter="test">

        <li class="layui-nav-item">
          <a  onclick="tableView()">订单管理</a>

      </ul>

    </div>
  </div>
  
  <div class="layui-body" id="LAY_app_body">
    <!-- 内容主体区域 -->
   <div class="layadmin-tabsbody-item layui-show"></div>
   
   
    <div style="padding: 15px;height:100%">


        <iframe id="option" name="option" src="${pageContext.request.contextPath}/jsp/users.jsp" style="overflow: visible;" scrolling="no" frameborder="no"  width="100%" height="100%"></iframe>

			</div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © ahdy.top data 2019 By 软件183-赵子龙
  </div>
</div>

<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;

});
<%--子页面加载--%>
  function bookView() {
    document.getElementById("option").src="${pageContext.request.contextPath}/jsp/books.jsp";
  }
function tableView() {
  document.getElementById("option").src="${pageContext.request.contextPath}/jsp/table.jsp";
}
</script>
<%--子页面加载--%>

</body>
</html>