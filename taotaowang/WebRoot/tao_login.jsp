<%@ page contentType="text/html; charset=gb2312"%>

<html>
<link rel="stylesheet" href="login_style.css">
<title>������</title>
<div class="header"><h1>������</h1>
<a href="taotaowang.jsp">�ص���ҳ</a>
</div>
<body>

<br>
<div class="loginview">
<center>
<form action="loginServlet" name=form method=post>
<br>
<h2>�����¼</h2>
<div class="name">�û�����<input type=text size=20 name="name"></div>
<br>
<div class="password">���룺<input type=password size=20 name="password"></div>
<br>
<div class="login"><input type="submit" value="��¼" id="submit" style="margin-right:10px;">
</div><%if(session.getAttribute("loginErro")!=null){ %>
<div class="loginErro"><%=session.getAttribute("loginErro") %></div>
<%} %>
<div class="back"><a href="tao_register.jsp">���ע��</a></div>
</form>
</center>
</div>
</font>
</body>
<div class="bottom"></div>
</html>