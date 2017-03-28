<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="buyBean" class="mybean.data.buy_bean" scope="session"/>
<html>
<link rel="stylesheet" href="user_style.css">
<title>淘淘网</title>
<div class="header"><h1>淘淘网</h1>
<a href="tao_login.jsp" id="login">切换用户</a>
<a href="taotaowang.jsp" id="back">回到首页</a>
</div>
<body>
<br>
<h2>个人资料</h2>
<div class="loginview">
<center>

<div class="infor">
姓名：<jsp:getProperty property="userName" name="buyBean"/> 
<br>
地址：<jsp:getProperty property="addr" name="buyBean"/> 
<br>
<div class="phone">电话：<jsp:getProperty property="phone" name="buyBean"/> 
<br>
余额：<jsp:getProperty property="money" name="buyBean"/> 
<br>
</div>


</center>
</div>

</body></html>