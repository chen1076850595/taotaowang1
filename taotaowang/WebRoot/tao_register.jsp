<%@ page contentType="text/html; charset=gb2312"%>

<html>
<link rel="stylesheet" href="register_style.css">
<title>������</title>
<div class="header"><h1>������</h1>
<a href="tao_login.jsp" id="login">��¼</a>
<a href="taotaowang.jsp" id="back">�ص���ҳ</a>
</div>
<body>
<br>
<h2>�û�ע��</h2><%if(session.getAttribute("registerMess")!=null){ %>
<div class="registerMess"><%=session.getAttribute("registerMess") %></div>
<%} %>
<div class="loginview">
<center>
<form action="registerServlet" name=form method=post>

<div class="name">�û�����<input type=text size=20 name="name"> *</div>
<br>
<div class="password">���룺<input type=password size=20 name="password"> *</div>
<br>

<div class="addr">��ַ��<input type=text size=20 name="addr"></div>
<br>
<div class="phone">�绰��<input type=text size=20 name="phone"></div>
<br>
<div class="money">��ֵ�ʽ�<input type=text size=20 name="money"></div>
<br>
<div class="login"><input type="submit" value="ע��" id="submit" style="margin-right:10px;"></div>

</form>
</center>
</div>

</body></html>