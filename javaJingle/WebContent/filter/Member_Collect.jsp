<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="../css/style.css" />
    <!--[if IE 6]>
    <script src="../js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->
        
    <script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="../js/menu.js"></script>    
        
	<script type="text/javascript" src="../js/select.js"></script>
        
    
<title>尤洪</title>
</head>
<body>  
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
    	<!--Begin 所在收货地区 Begin-->
    	<span class="s_city_b">
        	<span class="fl">送货至：</span>
            <span class="s_city">
            	<span>四川</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
        <!--End 所在收货地区 End-->
        <span class="fr">
        	<span class="fl">你好,
        	<a href="../MyInfoServlet">${user.userName}&nbsp;</a><a href="../OutServlet"><span style="color:red">退出</span></a>&nbsp;
        	<a href="../Regist.jsp" style="color:#ff4e00;">免费注册</a>&nbsp;|&nbsp;<a href="../OrderServlet">我的订单</a>&nbsp;|</span>
        	<span class="ss">
            	<div class="ss_list">
                	<a href="../Index.jsp">收藏夹</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="../Index.jsp">我的收藏夹</a></li>
                                <li><a href="../Index.jsp">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>     
                </div>
                <div class="ss_list">
                	<a href="../Index.jsp">客户服务</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="../Index.jsp">客户服务</a></li>
                                <li><a href="../Index.jsp">客户服务</a></li>
                                <li><a href="../Index.jsp">客户服务</a></li>
                            </ul>
                        </div>
                    </div>    
                </div>
                <div class="ss_list">
                	<a href="../Index.jsp">网站导航</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="../Index.jsp">网站导航</a></li>
                                <li><a href="../Index.jsp">网站导航</a></li>
                            </ul>
                        </div>
                    </div>    
                </div>
            </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="../Index.jsp" class="sh1">新浪</a><a href="../Index.jsp" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="../Index.jsp">手机版&nbsp;<img src="../images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<div class="m_top_bg">
    <div class="top">
        <div class="m_logo"><a href="Index.jsp"><img src="../images/logo1.png" /></a></div>
        <div class="m_search">
            <form>
                <input type="text" value="" class="m_ipt" />
                <input type="submit" value="搜索" class="m_btn" />
            </form>                      
            <span class="fl"><a href="../Index.jsp">咖啡</a><a href="../Index.jsp">iphone 6S</a><a href="../Index.jsp">新鲜美食</a><a href="../Index.jsp">蛋糕</a><a href="../Index.jsp">日用品</a><a href="../Index.jsp">连衣裙</a></span>
        </div>
        <div class="i_car">
            <div class="car_t">购物车 [ <span>3</span> ]</div>
            <div class="car_bg">
                <!--Begin 购物车未登录 Begin-->
                <div class="un_login"><c:if test="${user==null }">你好,您还未登录！<a href="../Login.jsp" style="color:#ff4e00;">马上登录</a></c:if>
        			<c:if test="${user!=null }">你好,<a href="MyInfoServlet">${user.userName}~  </a></c:if><a href="BuyCar.jsp"> 查看我的购物车！</a>         
            	</div>
                <!--End 购物车未登录 End-->
                <!--Begin 购物车已登录 Begin-->
                <ul class="cars">
                    <li>
                        <div class="img"><a href="../Index.jsp"><img src="../images/car1.jpg" width="58" height="58" /></a></div>
                        <div class="name"><a href="../Index.jsp">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                        <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                    </li>
                    <li>
                        <div class="img"><a href="../Index.jsp"><img src="../images/car2.jpg" width="58" height="58" /></a></div>
                        <div class="name"><a href="../Index.jsp">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                        <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                    </li>
                    <li>
                        <div class="img"><a href="../Index.jsp"><img src="../images/car2.jpg" width="58" height="58" /></a></div>
                        <div class="name"><a href="../Index.jsp">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                        <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                    </li>
                </ul>
                <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>1058</span></div>
                <div class="price_a"><a href="BuyCar.jsp">去购物车结算</a></div>
                <!--End 购物车已登录 End-->
            </div>
        </div>
    </div>
</div>
<!--End Header End--> 
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<div class="m_left">
        	<div class="left_n">管理中心</div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">订单中心</div>
                <ul>
                	<li><a href="../OrderServlet">我的订单</a></li>
                    <li><a href="Member_Address.jsp">收货地址</a></li>
                    <li><a href="../Index.jsp">缺货登记</a></li>
                    <li><a href="../Index.jsp">跟踪订单</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg2">会员中心</div>
                <ul>
                	<li><a href="../MyInfoServlet">用户信息</a></li>
                    <li><a href="Member_Collect.jsp" class="now">我的收藏</a></li>
                    <li><a href="Member_Msg.jsp">我的留言</a></li>
                    <li><a href="Member_Links.jsp">推广链接</a></li>
                    <li><a href="../Index.jsp">我的评论</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg3">账户中心</div>
                <ul>
                	<li><a href="Member_Safe.jsp">账户安全</a></li>
                    <li><a href="Member_Packet.jsp">我的红包</a></li>
                    <li><a href="Member_Money.jsp">资金管理</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg4">分销中心</div>
                <ul>
                	<li><a href="../MyInfoServlet">我的会员</a></li>
                    <li><a href="Member_Results.jsp">我的业绩</a></li>
                    <li><a href="Member_Commission.jsp">我的佣金</a></li>
                    <li><a href="Member_Cash.jsp">申请提现</a></li>
                </ul>
            </div>
        </div>
		<div class="m_right">
            <p></p>
            <div class="mem_tit">
            	<span class="fr" style="font-size:12px; color:#55555; font-family:'宋体'; margin-top:5px;">共发现4件</span>我的收藏
            </div>
           	<table border="0" class="order_tab" style="width:930px;" cellspacing="0" cellpadding="0">
              <tr>                                                                                                                                       
                <td align="center" width="420">商品名称</td>
                <td align="center" width="180">价格</td>
                <td align="center" width="270">操作</td>
              </tr>
              <tr>
                <td style="font-family:'宋体';">
                	<div class="sm_img"><img src="../images/simg.jpg" width="48" height="48" /></div>法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只
                </td>
                <td align="center">￥456.00</td>
                <td align="center"><a href="../Index.jsp">关注</a>&nbsp; &nbsp; <a href="../Index.jsp" style="color:#ff4e00;">加入购物车</a>&nbsp; &nbsp; <a href="../Index.jsp">删除</a></td>
              </tr>
              <tr>
                <td style="font-family:'宋体';">
                	<div class="sm_img"><img src="../images/simg.jpg" width="48" height="48" /></div>法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只
                </td>
                <td align="center">￥456.00</td>
                <td align="center"><a href="../Index.jsp">关注</a>&nbsp; &nbsp; <a href="../Index.jsp" style="color:#ff4e00;">加入购物车</a>&nbsp; &nbsp; <a href="../Index.jsp">删除</a></td>
              </tr>
              <tr>
                <td style="font-family:'宋体';">
                	<div class="sm_img"><img src="../images/simg.jpg" width="48" height="48" /></div>法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只
                </td>
                <td align="center">￥456.00</td>
                <td align="center"><a href="../Index.jsp">关注</a>&nbsp; &nbsp; <a href="../Index.jsp" style="color:#ff4e00;">加入购物车</a>&nbsp; &nbsp; <a href="../Index.jsp">删除</a></td>
              </tr>
              <tr>
                <td style="font-family:'宋体';">
                	<div class="sm_img"><img src="../images/simg.jpg" width="48" height="48" /></div>法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只
                </td>
                <td align="center">￥456.00</td>
                <td align="center"><a href="../Index.jsp">关注</a>&nbsp; &nbsp; <a href="../Index.jsp" style="color:#ff4e00;">加入购物车</a>&nbsp; &nbsp; <a href="../Index.jsp">删除</a></td>
              </tr>
            </table>


            
        </div>
    </div>
	<!--End 用户中心 End--> 
    <!--Begin Footer Begin -->
    <div class="b_btm_bg b_btm_c">
        <div class="b_btm">
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="../images/b1.png" width="62" height="62" /></td>
                <td><h2>正品保障</h2>正品行货  放心购买</td>
              </tr>
            </table>
			<table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="../images/b2.png" width="62" height="62" /></td>
                <td><h2>满38包邮</h2>满38包邮 免运费</td>
              </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="../images/b3.png" width="62" height="62" /></td>
                <td><h2>天天低价</h2>天天低价 畅选无忧</td>
              </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr>
                <td width="72"><img src="../images/b4.png" width="62" height="62" /></td>
                <td><h2>准时送达</h2>收货时间由你做主</td>
              </tr>
            </table>
        </div>
    </div>
    <div class="b_nav">
    	<dl>                                                                                            
        	<dt><a href="../Index.jsp">新手上路</a></dt>
            <dd><a href="../Index.jsp">售后流程</a></dd>
            <dd><a href="../Index.jsp">购物流程</a></dd>
            <dd><a href="../Index.jsp">订购方式</a></dd>
            <dd><a href="../Index.jsp">隐私声明</a></dd>
            <dd><a href="../Index.jsp">推荐分享说明</a></dd>
        </dl>
        <dl>
        	<dt><a href="../Index.jsp">配送与支付</a></dt>
            <dd><a href="../Index.jsp">货到付款区域</a></dd>
            <dd><a href="../Index.jsp">配送支付查询</a></dd>
            <dd><a href="../Index.jsp">支付方式说明</a></dd>
        </dl>
        <dl>
        	<dt><a href="../MyInfoServlet">会员中心</a></dt>
            <dd><a href="../Index.jsp">资金管理</a></dd>
            <dd><a href="../Index.jsp">我的收藏</a></dd>
            <dd><a href="../OrderServlet">我的订单</a></dd>
        </dl>
        <dl>
        	<dt><a href="../Index.jsp">服务保证</a></dt>
            <dd><a href="../Index.jsp">退换货原则</a></dd>
            <dd><a href="../Index.jsp">售后服务保证</a></dd>
            <dd><a href="../Index.jsp">产品质量保证</a></dd>
        </dl>
        <dl>
        	<dt><a href="../Index.jsp">联系我们</a></dt>
            <dd><a href="../Index.jsp">网站故障报告</a></dd>
            <dd><a href="../Index.jsp">购物咨询</a></dd>
            <dd><a href="../Index.jsp">投诉与建议</a></dd>
        </dl>
        <div class="b_tel_bg">
        	<a href="../Index.jsp" class="b_sh1">新浪微博</a>            
        	<a href="../Index.jsp" class="b_sh2">腾讯微博</a>
            <p>
            服务热线：<br />
            <span>400-123-4567</span>
            </p>
        </div>
        <div class="b_er">
            <div class="b_er_c"><img src="../images/er.gif" width="118" height="118" /></div>
            <img src="../images/ss.png" />
        </div>
    </div>    
    <div class="btmbg">
		<div class="btm">
        	备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
            <img src="../images/b_1.gif" width="98" height="33" /><img src="../images/b_2.gif" width="98" height="33" /><img src="../images/b_3.gif" width="98" height="33" /><img src="../images/b_4.gif" width="98" height="33" /><img src="../images/b_5.gif" width="98" height="33" /><img src="../images/b_6.gif" width="98" height="33" />
        </div>    	
    </div>
    <!--End Footer End -->    
</div>

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
