<%@ page contentType="text/html; charset=gb2312"%>

<html>
<link rel="stylesheet" href="login_style.css">
<title>淘淘网</title>
<div class="header"><h1>淘淘网</h1>
<a href="taotaowang.jsp">回到首页</a>
</div>
<body>

<br>
<div class="loginview">
<center>
<form action="loginServlet" name=form method=post>
<br>
<h2>密码登录</h2>
<div class="name">用户名：<input type=text size=20 name="name"></div>
<br>
<div class="password">密码：<input type=password size=20 name="password"></div>
<br>
<div class="login"><input type="submit" value="登录" id="submit" style="margin-right:10px;">
</div><%if(session.getAttribute("loginErro")!=null){ %>
<div class="loginErro"><%=session.getAttribute("loginErro") %></div>
<%} %>
<div class="back"><a href="tao_register.jsp">免费注册</a></div>
</form>
</center>
</div>
</font>
</body>
<div class="bottom"></div>
</html>