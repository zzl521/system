<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>



<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>登入 - layuiAdmin</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/login.css" media="all">
  <script src="${pageContext.request.contextPath}/js/jquery.js"></script>  
</head>
<body>

  <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">

    <div class="layadmin-user-login-main">
      <div class="layadmin-user-login-box layadmin-user-login-header">
        <h2>登陆</h2>
        <p>管理系统</p>
      </div>
      <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="login-username"></label>
          <input type="text" name="username" id="login-username" lay-verify="required" placeholder="用户名" class="layui-input" value="${username}">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="login-password"></label>
          <input type="password" name="password" id="login-password" lay-verify="required" placeholder="密码" class="layui-input" value="${password}">
        </div>
        <div class="layui-form-item">
          <div class="layui-row">
            <div class="layui-col-xs7">
              <label class="layadmin-user-login-icon layui-icon layui-icon-vercode" for="LAY-user-login-vercode"></label>
              <input type="text" name="vercode" id="login-vercode" lay-verify="required" placeholder="图形验证码" class="layui-input">
            </div>
            <div class="layui-col-xs5">
              <div style="margin-left: 10px;">
                <img src="${pageContext.request.contextPath}/layuiadmin/verifyCode" id="code_img">
              </div>
            </div>
          </div>
        </div>
        <div class="layui-form-item" style="margin-bottom: 20px;">
          <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
          <!-- <a href="forget.html" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">忘记密码？</a> -->
        </div>
        <div class="layui-form-item">
          <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit">登 入</button>
        </div>
        <div class="layui-trans layui-form-item layadmin-user-login-other">
          <label>社交账号登入</label>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>
          
          <a id="code_img" href="${pageContext.request.contextPath}/WebSafty/safety.jsp" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">注册帐号</a>
        </div>
      </div>
    </div>
    
    <div class="layui-trans layadmin-user-login-footer">
      
      <p>© 2019 <a href="http://z.ahdy.top/" target="_blank">zi-long</a></p>
      <p> 
        <span><a href="http://ahdy.top/" target="_blank">前往官网</a></span>
      </p>
    </div>
     
  </div>

  <script src="${pageContext.request.contextPath}/layui/layui.js"></script>  
    <script> 
	$(document).ready(function () {  
	    if (window != top) {  
	        top.location.href = location.href;  
	    }  
	}); 
	</script> 
<script>
	$(function(){
	    $("#code_img").click(function(){
	    	$(this).attr("src","${pageContext.request.contextPath}/layuiadmin/verifyCode?id="+Math.random());
	    });
	});
	
  layui.use(['form', 'jquery'], function(){
	 $ = layui.jquery
	,layer = layui.layer  
    ,form = layui.form
    ,router = layui.router()
    ,search = router.search;
  
	 
    form.render();

    //提交
    form.on('submit(LAY-user-login-submit)', function(obj){ 
    	 $.ajax({  
             type : "POST",  //提交方式  
             dataType: 'json', 
             url : "${pageContext.request.contextPath}/layuiadmin/login",//路径  
             data : obj.field, //数据，这里使用的是Json格式进行传输  JSON.stringify(obj.field)
             success : function(res) {//返回数据根据结果进行相应的处理  
            	 if(res.msg=='1'){
     				location.href = "${pageContext.request.contextPath}/jsp/index.jsp";
     			}
     			if(res.msg=='2'){
     				layer.msg('用户名或密码错误', {icon:5, shade:[0.5, '#000000'], shadeClose:true});
     				 
     				return false;
     			}
     			if(res.msg=='3'){
     				layer.msg('验证码错误', {icon:5, shade:[0.5, '#000000'], shadeClose:true});
     				return false;
     			}
             }  
         });  
    	  
    }); 
    
  });
  </script>
</body>
</html>