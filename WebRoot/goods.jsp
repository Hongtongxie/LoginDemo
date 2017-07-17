<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <title>goods.html</title>
	<meta charset="utf-8">
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/goods.js" charset="utf-8"/></script>
    <link rel="stylesheet" type="text/css" href="css/goods.css">

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
        <figure>
          <a href="show.jsp"><img src="img/cloth01.PNG"></a>
          <figcaption>
			   <span>夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</span><br />		
			   <span class="price">￥<strong>88</strong></span>
		   </figcaption>
        </figure>     
        <figure>
          <a href="show.jsp"><img src="img/cloth02.PNG"></a>
          <figcaption>
			   <span>夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</span><br />		
			   <span class="price">￥<strong>88</strong></span>
		   </figcaption>
        </figure>   
        <figure>
          <a href="show.jsp"><img src="img/cloth01.PNG"></a>
          <figcaption>
			   <span>夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</span><br />		
			   <span class="price">￥<strong>88</strong></span>
		   </figcaption>
        </figure>   
        <figure>
          <a href="show.jsp"><img src="img/cloth02.PNG"></a>
          <figcaption>
			   <span>夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</span><br />		
			   <span class="price">￥<strong>88</strong></span>
		   </figcaption>
        </figure>   
        <figure>
          <a href="show.jsp"><img src="img/cloth01.PNG"></a>
          <figcaption>
			   <span>夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</span><br />		
			   <span class="price">￥<strong>88</strong></span>
		   </figcaption>
        </figure>   
        <figure>
          <a href="show.jsp"><img src="img/cloth02.PNG"></a>
          <figcaption>
			   <span>夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</span><br />		
			   <span class="price">￥<strong>88</strong></span>
		   </figcaption>
        </figure>   
        <figure>
          <a href="show.jsp"><img src="img/cloth01.PNG"></a>
          <figcaption>
			   <span>夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</span><br />		
			   <span class="price">￥<strong>88</strong></span>
		   </figcaption>
        </figure>   
        <figure>
          <a href="show.jsp"><img src="img/cloth02.PNG"></a>
          <figcaption>
			   <span>夏季短袖t恤女韩版白色T恤女宽松大码学生上衣女春夏打底衫百搭</span><br />		
			   <span class="price">￥<strong>88</strong></span>
		   </figcaption>
        </figure>   
     </div>
  </body>
</html>
