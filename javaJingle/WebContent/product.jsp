<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title>叮咚有礼--叮咚一下</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="renderer" content="webkit">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
		<link rel="stylesheet" href="css/demo.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/fen.css" />
		<script type="text/javascript" src="js/jquery-2.2.0.min.js"></script>
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
					<a href="message.jsp"><li>留言板</li></a>s
				</ul>
			</div>
			<div class="hea_right">
				<p>
					<a href="register.jsp">注册</a>|<a class="login_btn">登录</a>
				</p>
				<a href="shop_car.jsp"><p>
						<i class="iconfont">&#xe600;</i>
						<span>0件</span>
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
				});
			</script>
		<div class="product">
			<ul>
				<a href="buy.jsp"><li>
					<img src="img/pro_pic1.png" />
					<div class="proli_bg">
						<div class="proli_bg_box">
							<div class="proli_top">
								<p>本周特推</p>
								<p>叮咚叮咚礼盒50G</p>
							</div>
							<p>99.00</p>
						</div>
					</div>
				</li></a>
				<a href="buy.jsp"><li>
					<img src="img/pro_pic2.png" />
					<div class="proli_bg">
						<div class="proli_bg_box">
							<div class="proli_top">
								<p>本周特推</p>
								<p>叮咚叮咚礼盒50G</p>
							</div>
							<p>99.00</p>
						</div>
					</div>
				</li></a>
				<a href="buy.jsp"><li>
					<img src="img/pro_pic3.png" />
					<div class="proli_bg">
						<div class="proli_bg_box">
							<div class="proli_top">
								<p>本周特推</p>
								<p>叮咚叮咚礼盒50G</p>
							</div>
							<p>99.00</p>
						</div>
					</div>
				</li></a>
				<a href="buy.jsp"><li>
					<img src="img/pro_pic4.png" />
					<div class="proli_bg">
						<div class="proli_bg_box">
							<div class="proli_top">
								<p>本周特推</p>
								<p>叮咚叮咚礼盒50G</p>
							</div>
							<p>99.00</p>
						</div>
					</div>
				</li></a>
				<a href="buy.jsp"><li>
					<img src="img/pro_pic3.png" />
					<div class="proli_bg">
						<div class="proli_bg_box">
							<div class="proli_top">
								<p>本周特推</p>
								<p>叮咚叮咚礼盒50G</p>
							</div>
							<p>99.00</p>
						</div>
					</div>
				</li></a>
				<a href="buy.jsp"><li>
					<img src="img/pro_pic4.png" />
					<div class="proli_bg">
						<div class="proli_bg_box">
							<div class="proli_top">
								<p>本周特推</p>
								<p>叮咚叮咚礼盒50G</p>
							</div>
							<p>99.00</p>
						</div>
					</div>
				</li></a>
			</ul>
		</div>
		<div class="login_bg">
			<div class="login">
				<img src="img/close.png" class="close"/>
				<img src="img/login.png" style="margin: 25px 0px;"/>
				<form action="" method="post">
					<p class="list">
						<img src="img/login_pic2.png"/>
						<input type="text" placeholder="请输入注册时的邮箱/手机号"/>
					</p>
					<p class="list">
						<img src="img/login_pic3.png"/>
						<input type="password" placeholder="请输入注册时的邮箱/手机号"/>
					</p>
					<a href="find.jsp">忘记密码?</a>
					<p>
						<a href="register.jsp">注册</a>
						<a>登录</a>
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