<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="buyBean" class="mybean.data.buy_bean" scope="session"/>
<html>
<link rel="stylesheet" href="user_style.css">
<title>������</title>
<div class="header"><h1>������</h1>
<a href="tao_login.jsp" id="login">�л��û�</a>
<a href="taotaowang.jsp" id="back">�ص���ҳ</a>
</div>
<body>
<br>
<h2>��������</h2>
<div class="loginview">
<center>

<div class="infor">
������<jsp:getProperty property="userName" name="buyBean"/> 
<br>
��ַ��<jsp:getProperty property="addr" name="buyBean"/> 
<br>
<div class="phone">�绰��<jsp:getProperty property="phone" name="buyBean"/> 
<br>
��<jsp:getProperty property="money" name="buyBean"/> 
<br>
</div>


</center>
</div>

</body></html>