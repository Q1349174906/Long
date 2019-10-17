<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>小米账号</title>
		<link rel="icon" href="images/（ICON 图像，16x16 像素）" type="image/x-icon">
		<link rel="stylesheet" href="css/Login.css" />
		<script src="js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="js/Login.js"></script>
		<script type="text/javascript">
			function login(){
				flag = false;
				var name = $("#zh2").val();//得到用户账号
				var pwd = $("#mm2").val();//得到用户密码
				//判断账号密码是否为空
				if(name != "" && pwd != ""){
					$.ajax({
						type:'post',
						url:'FrontLoginServlet',
						data:$("#form1").serialize()+"&flag=1",
						dataType:'text',
						async:false,//同步请求
						success:function(back){
							back = parseInt(back);
							if(back==0){
								flag = false;
								$("#spa").text("你的账号或者密码错误，请重新输入!");
							} else {
								flag = true;
							}
						}
					});
				}
				return flag;			
			}
		</script>

	</head>

	<body>
		<form id="form1" action="FrontLoginServlet?flag=2" method="post"
			onsubmit="return login()">
			<div>
				<div>
					<img src="images/头部.jpg">
				</div>
				<div id="divone" style="background-image: url(images/1.jpg);">
					<div id="tihuan">
						<div class="topLogin">
							<br />
							<a id="zhdl" href="javascript:void(0);">账号登陆</a>
							<span style=""> &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; </span>
							<a id="saoma" href="javascript:void(0);">扫码登录</a>
						</div>
						<div id="ewm" style="display: none;">
							<img src='images/小米登录的二维码.jpg'>
						</div>
						<div id="qb" style="background-color: #FFFFFF;">
							<div id="zh">
								<input id="zh2" type="text" placeholder="邮箱/手机号码/小米ID"
									id="zhanghao" name="userName" />
								<br>
							</div>
							<div id="mm">
								<input id="mm2" type="password" placeholder="密码" id="mima"
									name="userPwd" />
							</div>

							<div id="anniu" style="margin-left: 50px;">
								<span id="spa" style="color: darkorange;"></span>
								<input id="anniu2" type="submit" value="登录" />
								<br />
								<br />
								<a href="register.jsp" style="color: darkorange; text-decoration: none;">
									手机短信登录/注册 </a>
								<a id="zhucea" href="register.jsp" class="thesame">立即注册</a>
								<a href="javascript:void(0);" class="thesame">|</a>
								<a id="wangjia" href="javascript:void(0);" class="thesame">
									忘记密码？</a>
							</div>
							<div id="xiatu" style="height: 100px; width: 50px;">
								<img src="images/登录.jpg" />
							</div>
						</div>
					</div>
				</div>

				<div style="text-align: center;">
					<br />
					<br />
					<br />
					<a href="#" style="text-decoration: none; color: #B3B3B3;">简体|繁体|English|常见问题|隐私政策</a>
					<p class="nf-intro" style="color: #B3B3B3;">
						小米公司版权所有-京ICP备10046444-
						<a class="beian-record-link" href="#"
							style="text-decoration: none; color: #B3B3B3;"> <span><img
									src="images/保安.jpg"> </span>京公网安备11010802020134号</a>-京ICP证110507号
					</p>
				</div>
			</div>
		</form>
	</body>

</html>