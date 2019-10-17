<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>叮咚有礼--订单</title>
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
					<a href="register.jsp">注册</a>|<a>登录</a>
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
				<a href="shop_car.jsp"><i class="iconfont">&#xe600;</i></a>
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
		<div class="order">
			<p class="p1">填写并确认订单</p>
			<div class="order_b1">
				<p class="title">收货人信息</p>
				<div class="old_add">
					<div class="info">
						<p>张明</p>
						<p>成都市某县区某地方某个街道成都市某县区某 地方某个街道4-1-301</p>
						<p>15281082255</p>
						<!--<img src="img/order_p1.png" />-->
					</div>
					<div class="add" id="add">
						<img src="img/order_p2.png" />
					</div>
				</div>
				<div class="new_add" style="display: none;">
					<p class="p1">新增地址</p>
					<img src="img/close.png" class="close"/>
					<form action="" method="post">
						<p>
							<span class="tl"><font color="#D70000" style="margin-right: 5px;">*</font>收货人</span>
							<input type="text" />
						</p>
						<p>
							<span class="tl"><font color="#D70000" style="margin-right: 5px;">*</font>所在地区</span>
							<select name="">
								<option value="">请选择省份</option>
							</select>
							<select name="">
								<option value="">请选择市</option>
							</select>
							<select name="">
								<option value="">请选择区</option>
							</select>
						</p>
						<p>
							<span class="tl"><font color="#D70000" style="margin-right: 5px;">*</font>详细地址</span>
							<input type="text" style="width: 500px;"/>
						</p>
						<p>
							<span class="tl"><font color="#D70000" style="margin-right: 5px;">*</font>联系电话</span>
							<input type="tel" />
						</p>
						<p>
							<span class="tl">邮编</span>
							<input type="text" />
						</p>
						<p>
							<input type="checkbox" />
							<span class="tl" style="width: 90px;">设为常用地址</span>
						</p>
						<p class="add_btn">保存</p>
					</form>
				</div>
			</div>
			<div class="order_b1">
				<p class="title">对TA说</p>
				<!--没有保存的-->
				<div class="say">
					<a href="message2.jsp"><div class="say_box">
						<img src="img/order_p3.jpg" />
						<img src="img/order_p1.png" class="img2" />
					</div></a>
					<a href="message.jsp"><p class="say_btn">在线预览</p></a>
				</div>
				<!--没有保存的-->
				<!--保存之后出现二维码-->
				<div class="say" style="display: none;">
					<div class="" style="float: left;">
						<a href="message2.jsp">
							<div class="say_box" style="float: none;">
								<img src="img/order_p3.jpg" />
								<img src="img/order_p1.png" class="img2" />
							</div>
						</a>
						<a href="message.jsp">
							<p class="say_btn" style="float: none;margin-left: 12px;margin-top: 18px;">在线预览</p>
						</a>
					</div>
					<p style="float: right;">
						<img src="img/erwei.png" style="height: 109px;"/>
						<span style="display: block;margin-top: 15px;">专属码：cc520</span>
					</p>
				</div>
				<!--保存之后出现二维码-->
				<p class="say_info">文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明文字说明</p>
			</div>
			
			<div class="order_b1">
				<p class="title">支付方式</p>
				<div class="pay active">
					<img src="img/pay_way1.png" style="margin-top: 3px;"/>
					<img src="img/order_p1.png" class="img2" style="display:block;"/>
				</div>
				<div class="pay">
					<img src="img/pay_way2.png" style="margin-top: 10px;"/>
					<img src="img/order_p1.png" class="img2" />
				</div>
			</div>
			<script>
					$(function(){
						$("#add").click(function(){
							$(".old_add").hide();
							$(".new_add").fadeIn();
						});
						$(".add_btn").click(function(){
							$(".new_add").hide();
							$(".old_add").fadeIn();
						});
						$(".close").click(function(){
							$(".new_add").hide();
							$(".old_add").fadeIn();
						});
						$(".pay").click(function(){
							$(".pay").removeClass("active");
							$(".pay").find(".img2").hide();
							$(this).addClass("active");
							$(this).find(".img2").show();
						});
					});
				</script>
			<div class="order_b1">
				<p class="title">商品与配送方式<a href="shop_car.jsp" style="color:#474747;">[返回购物车]</a></p>
				<div class="song">
					<p class="pic"><img src="img/order_pic5.jpg"/></p>
					<p class="name">泉立方防串染色母片</p>
					<p class="num"><font color="#3CA5F1">￥49</font>*1</p>
					<p class="totle">￥49</p>
				</div>
			</div>
			
			<div class="order_b1">
				<p class="title">使用优惠券</p>
				<p class="conpou1">可用优惠券(5)</p>
				<!--没有可用优惠券-->
				<!--<p class="conpou2">无可用优惠券</p>-->
				<!--没有可用优惠券-->
				<p class="can">
					<span class="dq">50元优惠卷</span>
					<img src="img/yhq.png"/>
					<span class="more">30元优惠卷</span>
					<span class="more">40元优惠卷</span>
					<span class="more">60元优惠卷</span>
					<span class="more">20元优惠卷</span>
				</p>
			</div>
			<script type="text/javascript">
				$(function(){
					var bool=true;
					$(".dq").click(function(){
						if(bool){
							$(this).parent(".can").children(".more").fadeIn().css("display","block");
							$(this).parent(".can").children("img").css("transform","rotate(90deg)");
							bool=false;
							var bb=true;
							$(this).parent(".can").children(".more").click(function(){
								if(bb){
									$(this).css("border","#000000 1px solid");
								    bb=false;
								}else{
									$(this).css("border","none");
									bb=true;
								}
								
							});
						}else{
							$(this).parent(".can").children(".more").fadeOut();
							$(this).parent(".can").children("img").css("transform","rotate(0deg)");
							bool=true;
						}
						
					});
				});
			</script>
			<div class="order_b2">
				<p>1件商品，共计： 	￥49</p>
				<p>总运费： 	￥0</p>
				<p>优惠共计：	-￥0</p>
			</div>
			<p class="order_b3">
				<span>订单总计：<font color="#de0000" style="font-size: 28px;">￥49</font></span>
				<span>提交订单</span>
			</p>
		</div>
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