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
   height:320px;
   background-color:#FFF8EA;
   border:1px solid black;
   border-radius:10px;
   position:relative;
   top:30px;
}
.name{
   position:relative;
   top:100px;
}
.password{
   position:relative;
   top:100px;
   left:5px;
   letter-spacing:2px;
}
.login{
   position:relative;
   top:100px;
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
 width:150px;
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
 color:#6C6C6C;

}
  .back a:hover{
    color:blue;s
  }

</style>
<h1>淘淘网</h1>
<div class="loginview">
<form action="" name=form method=post>

<br>
<div class="name">用户名：<input type=text size=20 name="name"></div>
<br>
<div class="password">密码：<input type=password size=20 name="password"></div>
<br>
<div class="login"><input type="submit" value="登录" id="submit" style="margin-right:10px;">
</div>
<div class="back"><a href="register.jsp">免费注册</a></div>
</form>
</div>
</font>
<%   try{
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
}
     catch(Exception e){ out.print(e);}
     Connection con = null;
     ResultSet rs;
     Statement sql;
      request.setCharacterEncoding("gb2312");
     String username = (String)request.getParameter("name");
     boolean flag=false;
     int i_flag = 0;
     if(username==null||username.length()<1){
          username ="";i_flag++;}
     String userpassword = (String)request.getParameter("password");
     if(userpassword==null||userpassword.length()<1){
          userpassword ="";i_flag++;}
     try{
          String url = "jdbc:sqlserver://localhost:1433;database=taotaowang";
          String name = "sa";
          String password = "chen123";
          con = DriverManager.getConnection(url,name,password);
          sql = con.createStatement();
          String condition = "SELECT * from tao_user;";
          rs = sql.executeQuery(condition);
          while(rs.next()){
                if(username.equals(rs.getString("username"))&&
                   userpassword.equals(rs.getString("userPassword"))){
                   flag=true;
                   session.setAttribute("userName",username);
                   
                }
          }
         
     }
     catch(SQLException e){ 
          out.print(e);
          }
          if(flag){
             
             response.sendRedirect("buy.jsp");
          }
          else if(i_flag!=2){
             
                %>
   <h3>用户名或密码错误！</h3>
 <%    }
 %>
 <br>

</center></body></html>