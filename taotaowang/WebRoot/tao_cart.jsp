<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="buyBean" class="mybean.data.buy_bean" scope="session"/>
<html>
<link rel="stylesheet" href="cart.css">
<title>������</title>
<div class="header"><h1>������</h1>
<a href="tao_user.jsp" id="tao_user"><jsp:getProperty property="userName" name="buyBean"/> </a>
<a href="taotaowang.jsp" id="back">�ص���ҳ</a>
</div>
<body>
<br>
<h2>�ҵĹ��ﳵ</h2>
<div class="loginview">
<center>

<div class="infor">

<%  
          StringBuffer product=buyBean.getProduct();
          if(product==null){
               product = new StringBuffer();
              String mess = "���ﳵ���ģ���ȥ��ѡϲ������Ʒ��,";
              product.append(mess);
              }
        
               String produ = new String(product);        
               String pro[] = produ.split(",");
   
               if(pro!=null)
               for(String item:pro){
               out.print(item);
                 }
              
 %>


<h5>�ҽ�֧����<jsp:getProperty property="price" name="buyBean"/> </h5>

<form action="cartServlet" method=get>

<input type="submit" value="��������" class="button">
</form>
<form action="cartServlet" method=post>
<input type="submit" value="��չ��ﳵ" class="button"  id="spe">
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