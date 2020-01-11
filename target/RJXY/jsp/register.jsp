<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>注册 - layuiAdmin</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/login.css" media="all">
  
</head>
<body>


  <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
    <div class="layadmin-user-login-main">
      <div class="layadmin-user-login-box layadmin-user-login-header">
        <h2>注册</h2>
        <p>管理系统</p>
      </div>
      <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
      
       <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-nickname"></label>
          <input type="text" name="username" id="LAY-user-login-nickname" lay-verify="username" placeholder="昵称" class="layui-input">
        </div>
   
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
          <input type="password" name="password" id="password" lay-verify="pass" placeholder="密码" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-repass"></label>
          <input type="password" name="repass" id="repass" lay-verify="required|repass" placeholder="确认密码" class="layui-input">
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
        
        
       
        <div class="layui-form-item">
          <input type="checkbox" name="agreement" lay-skin="primary" title="同意用户协议" checked>
        </div>
        <div class="layui-form-item">
          <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="user-reg-submit">注 册</button>
        </div>
        <div class="layui-trans layui-form-item layadmin-user-login-other">
          <label>社交账号注册</label>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
          <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>
          
          <a href="login.jsp" class="layadmin-user-jump-change layadmin-link layui-hide-xs">用已有帐号登入</a>
          <a href="login.jsp" class="layadmin-user-jump-change layadmin-link layui-hide-sm layui-show-xs-inline-block">登入</a>
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
  layui.use(['form', 'jquery'], function(){
	  $ = layui.jquery
		,layer = layui.layer  
	    ,form = layui.form
	    ,router = layui.router()
	    ,search = router.search;

    form.render();

  //自定义验证规则
    form.verify({
    	username : function(value, item){  
  		 var message=''; 
  		  $.ajax({          
  			  url: "${pageContext.request.contextPath}/layuiadmin/getUserName",       
  			  type: "post",                
  			  async: false,                   
  			  data: {          				
  				username:value                
  				  },                  
  			  dataType: "json",       
  			  success: function (data) {    
  				  if(data.code=='1'){
  					  message = '用户名已经存在！' 
  				  	} 
  				}   
  			});     
  		  return message;
  		 }
    
      ,pass: [/(.+){6,12}$/, '密码必须6到12位'] 
      ,repass: function(value){
      	var passwordValue = $('input[name=password]').val();
      	if(value != passwordValue){
      	return '两次输入的密码不一致!';
      	}
      	} 
    });
    
    //监听提交
    form.on('submit(user-reg-submit)', function(data){
      
      $.ajax({          
  			  url: "${pageContext.request.contextPath}/layuiadmin/regUser",       
  			  type: "post",                
  			  async: false,                   
  			  data: data.field,                  
  			  dataType: "json",       
  			  success: function (data) {  
	  				if(data.msg=='3'){
	     				layer.msg('验证码错误', {icon:5, shade:[0.5, '#000000'], shadeClose:true,time:2000});
	     				return false;
	     			}
	  				if(data.msg=='2'){
	     				layer.msg('未选择同意用户协议', {icon:5, shade:[0.5, '#000000'], shadeClose:true,time:2000}); 
	     				return false;
	     			}
  				  if(data.msg=='1'){ 
  					  layer.msg("注册成功,即将跳转登陆", {icon:1, shade:[0.5, '#000000'], shadeClose:true,time:2000}, function(text, index){
  					    layer.close(index);
  					    location.href = "${pageContext.request.contextPath}/layuiadmin/loginout"; 
  					  });  
  				  	} 
  				  if(data.msg=='0'){ 
  				    	layer.msg('注册失败', {icon:5, shade:[0.5, '#000000'], shadeClose:true,time:2000}); 
  				  	}
  				}   
  			});  
      return false;
    });
  });
  </script>
</body>
</html>