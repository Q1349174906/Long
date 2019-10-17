<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<title>叮咚有礼--BLOG</title>
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
					<a href="message.jsp"><li>留言板</li></a>
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
		<div class="bloglist">
			<a href="blog.jsp">返回博客列表</a>
			<p class="title">2016年1月15日 花束主题 | 感谢之意</p>
			<p class="date">2016/01/25</p>
			<p class="info">待客人们各自找到自己最舒适的位置，慢慢的喝着咖啡，我们再点上几只蜡烛，播上音乐。我们的感谢之意就这样开始了。想要坐到他们身边，
				看着他们的眼睛，问他们近况如何，听他们讲自己的生活，自己的爱人，自己的孩子，自己的小狗，自己的一切一切，我们就静静的听着就好。
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下一切，我们就静静的听着就好。
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下一切，我们就静静的听着就好。
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下一切，我们就静静的听着就好。
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下
				待客人们各自找到自己最舒适的位置，慢慢的喝着咖啡，我们再点上几只蜡烛，播上音乐。我们的感谢之意就这样开始了。想要坐到他们身边，
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下
				待客人们各自找到自己最舒适的位置，慢慢的喝着咖啡，我们再点上几只蜡烛，播上音乐。我们的感谢之意就这样开始了。想要坐到他们身边，
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下
				待客人们各自找到自己最舒适的位置，慢慢的喝着咖啡，我们再点上几只蜡烛，播上音乐。我们的感谢之意就这样开始了。想要坐到他们身边，
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下
				待客人们各自找到自己最舒适的位置，慢慢的喝着咖啡，我们再点上几只蜡烛，播上音乐。我们的感谢之意就这样开始了。想要坐到他们身边，
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下
				待客人们各自找到自己最舒适的位置，慢慢的喝着咖啡，我们再点上几只蜡烛，播上音乐。我们的感谢之意就这样开始了。想要坐到他们身边，
				就这样慢慢的聊下去，也不觉得时间将尽，我们一起看日落，一起看晚霞，直到夜幕降临。在漫天繁星下
				待客人们各自找到自己最舒适的位置，慢慢的喝着咖啡，我们再点上几只蜡烛，播上音乐。我们的感谢之意就这样开始了。想要坐到他们身边，
			</p>
			<p class="name">发表：XXXX</p>
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