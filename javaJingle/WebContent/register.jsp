<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>叮咚有礼--注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="renderer" content="webkit">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
		<link rel="stylesheet" href="css/demo.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/fen.css" />
		<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="js/jquery-2.2.0.min.js"></script>
		<script type="text/javascript" src="js/Login.js"></script>
		<script type="text/javascript">
			$(function(){
			$("#inp1").keyup(function(){
				var name=$("#inp1").val();
				//把参数传入servlet
				$.ajax({
					type:'post',//请求方式
					url:'CustomerRegister2Servlet',//请求路径
					data:'name='+name,//参数
					dataType:'html',//返回值类型
					success:function(back){
						$("#sp").html(back);
					}
				});
			});	
			
			});
		</script>
			<script src="js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="js/Login.js"></script>
	<script type="text/javascript"></script>
<script type="text/javascript">
	function login() {
		flag = false;
		var name = $("#ctmid").val();//得到用户账号
		var pwd = $("#psw").val();//得到用户密码
		//判断账号密码是否为空
		if (name != "" && pwd != "") {
			$.ajax({
				type : 'post',
				url : 'CustomerLoginServlet',
				data : $("#form1").serialize() + "&flag=1",
				dataType : 'text',
				async : false,//同步请求
				success : function(back) {
					back = parseInt(back);
					if (back == 0) {
						flag = false;
						$("#spa").text("你的账号或者密码错误，请重新输入!");
					} else {
						flag = true;
						//		var name1 = $("#userName").text();//得到标签中内容
						//		alert(name1);
						//给标签内容赋值
						//		$("#userName").html(name);
						//		$("#tc").html("退出");
					}
				}
			});
		}
		return flag;
	}
	</script>
	</head>

	<body>
		<div class="header">
			<div class="hea_nav">
				<a href="index.jsp"><img src="img/logo.png" class="logo"/></a>
				<ul>
					<a href="index.jsp"><li>首页</li></a>
					<a href="product.jsp"><li>叮咚一下</li></a>
					<a href="blog.jsp"><li>BLOG</li></a>
					<a href="personal.jsp"><li>个人中心</li></a>
					<a href="message.jsp"><li>留言板</li></a>
				</ul>
			</div>
			<div class="hea_right">
				<p>
					<c:if test="${customer.cusLoginName!=null&&customer.cusPwd!=null}">
						<!-- 需要判断用户是否登录，如果已登录显示退出及他的用户名标签
						否则，显示登录和注册按钮	 -->
						<!-- 个人名片 -->
						<a href="个人名片" id="info">${customer.cusName}</a>|
							<!--退出功能  href="CustomerExitServlet" -->
						<a href="CustomerExitServlet" id="exit" onclick="return exit();">退出</a>
					</c:if>
					<c:if test="${customer.cusLoginName==null&&customer.cusPwd==null}">
						<a href="register.jsp" id="register">注册</a>|
							<a class="login_btn" id="login">登录</a>
					</c:if>
				</p>
				<a href="shop.jsp"><p>
						<i style="color: white; font-size: 16px;">购物车</i>
					</p>
					</a>
					
			</div>
		</div>
		<div class="header2">
				<img src="img/phone_meau.png" class="meau"/>
				<a href="index.jsp"><img src="img/logo.png" class="logo"/></a>
				<a href="shop_car.jsp"><i class="iconfont">&#xe600;</i><span>1</span></a>
				<ul class="meau_box">
					<a href="index.jsp"><li>首页</li></a>
					<a href="product.jsp"><li>叮咚一下</li></a>
					<a href="blog.jsp"><li>BLOG</li></a>
					<a href="personal.jsp"><li>个人中心</li></a>
					<a href="message.jsp"><li>留言板</li></a>
					<p style="border-right:1px #fff solid;" class="login_btn">登录</p>
					<a href="register.jsp"><p>注册</p></a>
				</ul>
			</div>
			<script>
				$(function(){
					$(".meau").on("click", function(e) {
					$(".meau_box").slideToggle();
					$(document).one("click", function() {
						$(".meau_box").slideUp();
					});
					e.stopPropagation();
				});
				$(".meau").on("click", function(e) {
					e.stopPropagation();
				});
				//该用户名已存在
				$("#inp1").keyup(function(){
					var name=$("#inp1").val();
					//把参数传入servlet
					$.ajax({
						type:'post',//请求方式
						
						url:'CustomerRegisterServlet',//请求路径
						data:'name='+name,//参数
						dataType:'html',//返回值类型
						success:function(back){
							//alert(back);
							$("#sp").html(back);
						}
					});
				});	
				//
				$("#inp3").keyup(function(){
					var inp2=$("input[id='inp2']").val();
					var inp3=$("input[id='inp3']").val();
					if (inp2==inp3) {
						$("#sp3").html("");
					}else{
						$("#sp3").html("输入密码不一致");
					}
				});	
				});
				
				
			</script>
		<div class="register">
			<p class="res_title"  >用户注册</p>
			<div class="res_box"style="height:550px;">
				<ul class="res_nav">
					<li class="active">
						<i class="iconfont">&#xe602;</i>
						<span>手机注册</span>
					</li>
					<li>
						<i class="iconfont">&#xe603;</i>
						<span>邮箱注册</span>
					</li>
					<li>
						<i class="iconfont">&#xe604;</i>
						<span>用户名注册</span>
					</li>
				</ul>
				<div class="res_form" >
					<form action="" method="post">
						<p class="res_list">
							<span>手机号码</span>
							<input type="tel" />
						</p>
						<p class="tip">仅支持中国大陆地区手机号码！</p>
						<p class="res_list" style="margin-top: 0px;">
							<span>手机验证码</span>
							<input type="text" style="width: 70px;"/>
							<span class="yan_code">获取验证码</span>
						</p>
						<p class="res_list">
							<span>设置密码</span>
							<input type="password" />
						</p>
						<p class="res_list">
							<span>确认密码</span>
							<input type="password" />
						</p>
						<p class="res_btn">注册</p>
					</form>
					<p>已有账号？请<a style="color: #AE191B;" class="login_btn">直接登录</a></p>
				</div>
				<div class="res_form" style="padding-top: 40px;display: none;">
					<form action="" method="post">
						<p class="res_list">
							<span>邮箱地址</span>
							<input type="email" />
						</p>
						<p class="res_list">
							<span>设置密码</span>
							<input type="tel" />
						</p>
						<p class="res_list">
							<span>确认密码</span>
							<input type="tel" />
						</p>
						<input class="res_btn" type="submit" value="注册" />
					</form>
					<p>已有账号？请<a style="color: #AE191B;" class="login_btn">直接登录</a></p>
				</div>
				<div class="res_form" style="padding-top: 0px;display: none;height:450px;">
					<form action="CustomerRegisterServlet" method="post" id="form2" >
						<p class="res_list">
							<span>用户名</span>
							<input type="tel" name="name1" id ="inp1"/><span id="sp" style="color:red"></span>
						</p>
						<p class="tip">4-16个字符，允许数字、字母、汉字、下划线，<br />以字母或汉字开头</p>
						<p class="res_list">
							<span>设置密码</span>
							<input type="tel" name="psw1" id="inp2" />
						</p>
						<p class="res_list">
							<span>确认密码</span>
							<input type="tel" name="psw2" id="inp3" />
							<span id="sp3" style="color:red"></span>
						</p>
						<br/>
						<p class="res_list">
							<span>姓名</span>
							<input type="tel" name="cname" />
						</p>
						<p class="res_list">
							<span>地址</span>
							<input type="tel" name="adr" />
						</p>
						<p class="res_list">
							<span>电话</span>
							<input type="tel" name="pho" />
						</p>
						<input class="res_btn" type="submit" value="注册"/>
					</form>
					<p>已有账号？请<a style="color: #AE191B;" class="login_btn">直接登录</a></p>
				</div>
			</div>
		</div>
		<div class="login_bg">
			<div class="login">
				<img src="img/close.png" class="close"/>
				<img src="img/login.png" style="margin: 25px 0px;"/>
			<form action="CustomerLoginServlet?flag=2" method="post" id="form1"
				onclick="return login();">
				<p class="list">
					<img src="img/login_pic2.png" /> <input id="ctmid" type="text"
						name="ctmid" placeholder="请输入注册时的邮箱/手机号" />
				</p>
				<p class="list">
					<img src="img/login_pic3.png" /> <input id="psw" type="password"
						name="psw" placeholder="请输入注册时的邮箱/手机号" />
				</p>
				<span id="spa" style="color: darkorange;"></span><a href="find.jsp">忘记密码?</a>
				<p>
					<a href="register.jsp">注册</a> <a href="index.jsp">登录</a>
				</p>
			</form>
			</div>
		</div>
		<script type="text/javascript">
			$(function(){
				$(".close").click(function(){
					$(".login_bg").fadeOut();
				});
				$(".login_btn").click(function(){
					$(".login_bg").slideDown();
					$(".meau_box").slideUp();
				});
			});
		</script>
		<script type="text/javascript">
			$(function(){
				$(".res_nav").children("li").click(function(){
					$(".res_nav").children("li").stop().removeClass("active");
					$(this).stop().addClass("active");
					$(".res_form").stop().slideUp();
					$(".res_form").eq($(".res_nav").children("li").index(this)).stop().slideDown();
				});
			});
		</script>
		<div class="footer">
			<div class="footer_con">
				<p>享有 | enjoy</p>
				<img src="img/footer.png" />
			</div>
			<div class="footer_con2">
				<p>© 2015 dingdongyouli.com All rights reserved.</p>
				<img src="img/footer_p2.jpg" />
			</div>
		</div>
	</body>

</html>