<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>index.html</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/index.js" charset="utf-8"/></script>

  </head>
    
  <body>
     <header id="top">
        <img src="img/logo.PNG" class="long"/>
        <div class="pil">
        <a href="login.html">登录</a>
        <div class="points"></div>
        <a href="register.html">注册</a>
        <div class="points,car"></div>
        <a class="car" href="shopcart">购物车</a>
        <div class="points,car" ></div>
        <a class="name"><%=session.getAttribute("username")%></a>
        </div>
        <div class="search">
           <input type="text" placeholder="连衣裙" class="search_key"/>
           <input type="button" value="搜索" class="submit"/>
        </div>
     </header>
     <div id="nav">
       <span class="one">新品上新</span>
       <a>评价团购</a>
       <a>省心团购</a>
     </div>
     <div id="main">
        <div class="banner">
          <ul class="pil">
             <li><a href=""><img src="img/girl01.jpg" alt="夏日&nbsp;&nbsp;夏日出行装" width="700px" height="420px"/></a></li>
             <li><a href=""><img src="img/girl02.jpg" alt="唯美&nbsp;&nbsp;唯美睡衣" width="700px" height="420px"/></a></li>
             <li><a href=""><img src="img/girl01.jpg" alt="夏日&nbsp;&nbsp;夏日出行装" width="700px" height="420px"/></a></li>
             <li><a href=""><img src="img/girl02.jpg" alt="唯美&nbsp;&nbsp;唯美睡衣" width="700px" height="420px"/></a></li>
             <li><a href=""><img src="img/girl01.jpg" alt="夏日&nbsp;&nbsp;夏日出行装" width="700px" height="420px"/></a></li>
          </ul>
          <ul class="anniu">
             <li class="on"></li>
             <li></li>
             <li></li>
             <li></li>
             <li></li>
          </ul>
          <div class="txt">夏日&nbsp;&nbsp;夏日出行装</div>
        </div>
        <figure>
          <table class="tab">
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新°</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
             <tr>
               <td><strong>上衣</strong></td><td><a href="goods.jsp">夏上新</a></td><td><a>夏上新</a></td><td><a>夏上新</a></td>
             </tr>
          </table>
       </figure>
       <div class="hello">
          <img src="img/hello.PNG" />
       </div>
       <div class="shoes">
          <img src="img/shoes.PNG" />
       </div>
     </div>
     <div id="min">
     <h2>穿搭推荐</h2><p><a>更多>></a></p>
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     </div>
     <div id="min">
     <h2>穿搭推荐</h2><p><a>更多>></a></p>
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     </div>
     <div id="min">
     <h2>穿搭推荐</h2><p><a>更多>></a></p>
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     </div>
     <div id="min">
     <h2>穿搭推荐</h2><p><a>更多>></a></p>
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     <img src="img/all.PNG" />
     </div>
  </body>
</html>
