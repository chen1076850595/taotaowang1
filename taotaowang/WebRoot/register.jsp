<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<html><body bgcolor=#FEC329><center>
<font size = 3>
<style>
h1{
    font-weight:200;
}
.loginview{
   width:420px;
   height:450px;
   background-color:#FFF8EA;
   border:1px solid black;
   border-radius:10px;
   position:relative;
   top:30px;
}
.name{
   position:relative;
   top:50px;
   left:7px;
}
.password{
   position:relative;
   top:50px;
   left:12px;
   letter-spacing:2px;
}
.addr{
   position:relative;
   top:50px;
   left:5px;
   letter-spacing:2px;
}
.phone{
   position:relative;
   top:50px;
   left:5px;
   letter-spacing:2px;
}
.money{
   position:relative;
   top:50px;
   left:-13px;
   letter-spacing:2px;
}
.login{
   position:relative;
   top:50px;
   left:35px;
}
.login a{
text-decoration: none;
display: block;
color:#222;
 width:45px;
height:23px;
 background-color: e1e1e1;
 position:relative;
 left:60px;
 top:-24px;
 border: 1px solid #adadad;
}
 h3{
   position:relative;
   top:50px;
   left:20px;
   
   color:red;
}
.login #submit{
 width:145px;
 height:27px;


 background-color:#FF6600;
 color:white;
}
.login #submit:hover{
 background-color:#FF3300;
 color:black;

 }
  .back a{
 text-decoration: none;
 position:absolute;
 right:20px;
 bottom:20px;
color:#6c6c6c;
}
  .back a:hover{
    color:blue;s
  }
</style>
<h1>会员注册</h1>
<div class="loginview">
<%   try{
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
}
     catch(Exception e){ out.print(e);}
     Connection con = null;
     Statement sql;
     request.setCharacterEncoding("gb2312");
     String username = (String)request.getParameter("name");
     String userpassword = (String)request.getParameter("password");
     String addr = (String)request.getParameter("addr");
     String phone = (String)request.getParameter("phone");
     String m = request.getParameter("money");
         if(m==null||m.length()<1)
             m="0";
     float money = Float.parseFloat(m);
     boolean flag=false;
     int i_flag = 0;
     if(username==null&&userpassword==null)
          out.print("<br><br>请输入用户名和密码");
     else if(username==null||username.length()<1){
          out.print("<br><br>请输入用户名");}
     
     else if(userpassword==null||userpassword.length()<1){
          out.print("<br><br>请输入密码");}
       else {
     try{
          String url = "jdbc:sqlserver://localhost:1433;database=taotaowang";
          String name = "sa";
          String password = "chen123";
          con = DriverManager.getConnection(url,name,password);
          
          sql = con.createStatement();
          String condition = "INSERT into tao_user values('"+username+"','"
          +userpassword+"','"+addr+"','"+phone+"',"+money+");";
          sql.executeUpdate(condition);
          //out.print("恭喜你!注册成功！");
         %>
         	<h3>恭喜你，注册成功！</h3>
     
         
    <%  }
     catch(SQLException e){ 
          out.print(e);
          }
          }

 %>
 <br>
<form action="" name=form method=post>

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
 <div class="back"> <a href="login.jsp">回去登录</a></div>
</form>
</div>
 
</font>


</center></body></html>