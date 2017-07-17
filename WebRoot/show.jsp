<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <title>show.html</title>
	<meta charset="utf-8">
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/show.css">
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/show.js" charset="utf-8"/></script>

  </head>
  
  <body>
     <header id="top">
        <a href="index.jsp"><img src="img/logo.PNG" class="long"/></a>
        <div class="search">
           <input type="text" placeholder="连衣裙" class="search_key"/>
           <input type="button" value="搜索" class="submit"/>
        </div>
        <a class="car" href="shopcart">购物车</a>
        <a class="name"><%=session.getAttribute("username")%></a>
     </header>
     <div id="nav">
        <img class="lct" src="img/show.PNG" />
        <form action="show" method="post">
        <h2 ><input style="display:none" name="name" value="夏季短袖" />夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</h2>
        <p>价格：￥<strong><input style="display:none" name="price" value="88.00" />88.00</strong></p>
        <p>颜色:
        <input name="color" type="radio" value="白色" checked="true">白色
		<input name="color" type="radio" value="黑色">黑色</p>
		<p>尺码： <input name="size" type="radio" value="S" >S
		<input name="size" type="radio" value="M" checked="true">M
		<input name="size" type="radio" value="L">L</p>
		<p>数量：<input id="sub" type="button" value="-" /><input name="number" type="text" value="1" /><input id="add" type="button" value="+" /></p>
		<input class="pay" type="button" value="立即购买" />
		<input class="join" type="submit" value="加入购物车" />
		<p>服务承诺：<span>退货补运费&nbsp;&nbsp;全国包邮&nbsp;&nbsp;7天无理由退货&nbsp;&nbsp;72小时发货</span></p>
		<p>支付方式：<img src="img/payWay.PNG" /></p>
		</form>
     </div>
  </body>
</html>
