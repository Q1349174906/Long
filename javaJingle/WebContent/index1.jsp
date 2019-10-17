<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<title>叮咚有礼</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<meta name="viewport"content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
	<link rel="stylesheet" href="css/demo.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/fen.css" />
	<script type="text/javascript" src="js/jquery-2.2.0.min.js"></script>
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
	<style type="text/css">
		* {
			margin: 0;
			padding: 0;
		}
		
		.no {
			list-style: none;
		}
		
		.no li {
			position: relative;
			float: left;
			text-align: center;
		}
		
		.no li:hover ul {
			display: block;
		}
		
		.a {
			width: 80px;
			text-decoration: none;
			color: white;
			display: block;
		}
		
		.a:hover {
			background-color: pink;
		}
		
		.no li .ab {
			position: absolute;
			display: none;
			background-color: gray;
		}
		
		.no li .ab li {
			line-height: 40px;
			margin-left: -1px;
		}
	</style>
	<script src="js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="js/Login.js"></script>
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
						$("#spa").text("你的账号或者密码错误，请重新输入!");
						flag = false;
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
	function exit() {
		//获取 选择状态
		var chd = document.getElementById("exit").checked;
		//全选 删除  alter prompt confirm确认框
		var result = confirm("确认退出？");
		if (result) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
	<div class="box1">
		<div class="header">
			<div class="hea_nav">
				<a href="index.jsp"><img src="img/logo.png" class="logo" /></a>
				<ul class="no">
					<a href="index.jsp">
						<li>首页</li>
					</a>
					<a href="product.jsp">
						<li>叮咚一下</li>
					</a>
					<a href="blog.jsp">
						<li>BLOG</li>
					</a>
					<li><a href="personal.jsp" class="a">个人中心</a>
						<ul class="ab">
							<li><a href="personal.jsp" class="a">我的订单</a></li>
							<li><a href="personal.jsp" class="a">基本信息</a></li>
							<li><a href="personal.jsp" class="a">我的优惠卷</a></li>
							<li><a href="personal.jsp" class="a">我的留言</a></li>
							<li><a href="personal.jsp" class="a">密码修改</a></li>
						</ul></li>
					<a href="message.jsp">
						<li>留言板</li>
					</a>
					
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
					</p> </a>

			</div>
		</div>
		<div class="header2">
			<img src="img/phone_meau.png" class="meau" /> <img
				src="img/logo3.png" class="logo" /> <a href="shop_car.jsp"><i
				class="iconfont">&#xe600;</i><span>1</span></a>
			<ul class="meau_box">
				<a href="index.jsp">
					<li>首页</li>
				</a>
				<a href="product.jsp">
					<li>叮咚一下</li>
				</a>
				<a href="blog.jsp">
					<li>BLOG</li>
				</a>
				<a href="personal.jsp">
					<li>个人中心
						<ul class="ab">
							<li><a href="" class="a">我的订单</a></li>
							<li><a href="" class="a">基本信息</a></li>
							<li><a href="" class="a">我的优惠卷</a></li>
							<li><a href="" class="a">我的留言</a></li>
							<li><a href="" class="a">密码修改</a></li>
						</ul>
					</li>
				</a>
				<a href="message.jsp">
					<li>留言板</li>
				</a>
				<p style="border-right: 1px #fff solid;" class="login_btn">登录</p>
				<a href="register.jsp">
					<p>注册</p>
				</a>
			</ul>
		</div>
		<img src="img/PC_h.jpg" class="pc_h" /> <img src="img/mobile_h.jpg"
			class="mobile_h" />
		<!--定位1-->
		<div class="ding"></div>
	</div>
	<div class="conpou">
		<div class="conpou_box">
			<img src="img/close.png" class="gb" /> <img src="img/code_pic.png" />
			<input type="text" placeholder="请输入专属吗码,例：CC520" /> <a
				href="message.jsp">查看模版案例>></a>
			<p>确定</p>
		</div>
	</div>

	<div class="img_box">
		<img src="img/PC.jpg" class="pc" /> <img src="img/mobile.jpg"
			class="mobile" />
		<!--定位2-->
		<a href="product.jsp">
			<div class="ding2"></div>
		</a>
	</div>

	<div class="login_bg">
		<div class="login">
			<img src="img/close.png" class="close" /> <img src="img/login.png"
				style="margin: 25px 0px;" />
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
		$(function() {
			$(".ding").click(function() {
				$(".conpou").fadeIn();
			});
			$(".gb").click(function() {
				$(".conpou").fadeOut();
			});
			$(".close").click(function() {
				$(".login_bg").fadeOut();
			});
			$(".login_btn").click(function() {
				$(".login_bg").slideDown();
				$(".meau_box").slideUp();
			});
			$(".meau").on("click", function(e) {
				$(".meau_box").slideToggle();
				$(document).one("click", function() {
					$(".meau_box").fadeOut();
				});
				e.stopPropagation();
			});
			$(".meau").on("click", function(e) {
				e.stopPropagation();
			});
		});
	</script>
</body>
</html>