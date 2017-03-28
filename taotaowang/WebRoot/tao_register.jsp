<%@ page contentType="text/html; charset=gb2312"%>

<html>
<link rel="stylesheet" href="register_style.css">
<title>淘淘网</title>
<div class="header"><h1>淘淘网</h1>
<a href="tao_login.jsp" id="login">登录</a>
<a href="taotaowang.jsp" id="back">回到首页</a>
</div>
<body>
<br>
<h2>用户注册</h2><%if(session.getAttribute("registerMess")!=null){ %>
<div class="registerMess"><%=session.getAttribute("registerMess") %></div>
<%} %>
<div class="loginview">
<center>
<form action="registerServlet" name=form method=post>

<div class="name">用户名：<input type=text size=20 name="name"> *</div>
<br>
<div class="password">密码：<input type=password size=20 name="password"> *</div>
<br>

<div class="addr">地址：<input type=text size=20 name="addr"></div>
<br>
<div class="phone">电话：<input type=text size=20 name="phone"></div>
<br>
<div class="money">充值资金：<input type=text size=20 name="money"></div>
<br>
<div class="login"><input type="submit" value="注册" id="submit" style="margin-right:10px;"></div>

</form>
</center>
</div>

</body></html>