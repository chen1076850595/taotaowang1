<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="buyBean" class="mybean.data.buy_bean" scope="session"/>
<html>
<link rel="stylesheet" href="cart.css">
<title>淘淘网</title>
<div class="header"><h1>淘淘网</h1>
<a href="tao_user.jsp" id="tao_user"><jsp:getProperty property="userName" name="buyBean"/> </a>
<a href="taotaowang.jsp" id="back">回到首页</a>
</div>
<body>
<br>
<h2>我的购物车</h2>
<div class="loginview">
<center>

<div class="infor">

<%  
          StringBuffer product=buyBean.getProduct();
          if(product==null){
               product = new StringBuffer();
              String mess = "购物车扁扁的，快去挑选喜欢的商品吧,";
              product.append(mess);
              }
        
               String produ = new String(product);        
               String pro[] = produ.split(",");
   
               if(pro!=null)
               for(String item:pro){
               out.print(item);
                 }
              
 %>


<h5>我将支付：<jsp:getProperty property="price" name="buyBean"/> </h5>

<form action="cartServlet" method=get>

<input type="submit" value="立即购买" class="button">
</form>
<form action="cartServlet" method=post>
<input type="submit" value="清空购物车" class="button"  id="spe">
</form>
</div>



</center>
</div>
<% String mess=(String)session.getAttribute("cartMess");

   if(mess!=null){
%>
 <script type="text/javascript">
  alert("<%=session.getAttribute("cartMess")%>");
 
  </script>
  <%   session.setAttribute("cartMess",null);} %>
</body></html>