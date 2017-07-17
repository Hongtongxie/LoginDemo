<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.chinasoft.dhw.entity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<ShopCart> list = (List<ShopCart>)request.getAttribute("list");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shopcart.jsp' starting page</title>
    <meta charset="utf-8"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/shopcart.css">
	<script type="text/javascript" src="js/shopcart.js" charset="utf-8"/></script>

  </head>
  
  <body>
    <header id="top">
      <a href="index.jsp"><img src="img/logo.PNG" /></a>
    </header>
    <table cellpadding="0" cellspacing="0" >
 
       <tr>
          <th>&nbsp;&nbsp;</th>
          <th>品名</th>
          <th>颜色</th>
          <th>Size</th>
          <th>数量</th>
          <th>金额</th>
       </tr>
       <%
          for(ShopCart shop : list){
       %>
       <tr><td><input type="checkbox" name="one" class="one" onclick="abc()"/></td><td><%=shop.getPname()%></td><td><%=shop.getColor()%></td><td><%=shop.getSize()%></td><td><%=shop.getNumber()%></td><td><%=shop.getPrice()%></td></tr>
       <%
        }
       %>
    </table>
    
    <p>总金额：￥<span>0.00</span></p><br /><br /><br /><br />
    <input type="button" value="结算" class="set">
  </body>
</html>
