<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/layui/css/layui.css"
	media="all">
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
	<div class="layui-col-md12">
		<div class="layui-card">
			<div class="layui-card-header">修改密码</div>
			<div class="layui-card-body" pad15="">

				<form class="layui-form" action="">

					<div class="layui-form-item">
						<label class="layui-form-label">当前密码</label>
						<div class="layui-input-inline">
							<input name="oldPassword" lay-verify="required|oldPwd"
								lay-vertype="tips" class="layui-input" type="password">
						</div>
					</div>

					<div class="layui-form-item">
						<label class="layui-form-label">新密码</label>
						<div class="layui-input-inline">
							<input name="password" lay-verify="required|pass"
								lay-vertype="tips" id="LAY_password" class="layui-input"
								type="password">
						</div>
						<div class="layui-form-mid layui-word-aux">6到12个字符</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">确认新密码</label>
						<div class="layui-input-inline">
							<input name="repassword"
								lay-verify="required|repass" lay-vertype="tips"
								class="layui-input" type="password">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-submit="" lay-filter="pwdup">确认修改</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
<script>
layui.use(['form', 'layedit'] ,function(){
  var $ = layui.jquery
  ,form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit; 
  
  form.render();
  //自定义验证规则
  form.verify({
	 oldPwd : function(value, item){  
		 var message=''; 
		  $.ajax({          
			  url: "${pageContext.request.contextPath}/layuiadmin/getOldPwd",       
			  type: "post",                
			  async: false,                   
			  data: {          				
				 oldpwd:value                
				  },                  
			  dataType: "json",       
			  success: function (data) {     
				  if(data.msg!='1'){
					  message = '旧密码输入错误，请重新输入！'
				 		
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
  form.on('submit(pwdup)', function(data){
    /* layer.alert(JSON.stringify(data.field), {
      title: '最终的提交信息'
    }) */
    $.ajax({          
			  url: "${pageContext.request.contextPath}/layuiadmin/changePwd",       
			  type: "post",                
			  async: false,                   
			  data: data.field,                  
			  dataType: "json",       
			  success: function (data) {  
				  if(data.msg!='1'){ 
					  layer.alert("修改成功",{icon: 1,time:2000});
					  window.location.href = "${pageContext.request.contextPath}/layuiadmin/loginout"; 
				  	} else{
				  		layer.alert("修改失败");
				  	}
				}   
			});  
    return false;
  });
   
});
</script>
</body>
</html>