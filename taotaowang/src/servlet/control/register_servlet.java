package servlet.control;
import mybean.data.buy_bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class register_servlet extends HttpServlet {
	public void init(ServletConfig config)throws ServletException{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	      throws ServletException,IOException{
		   HttpSession session = request.getSession(true);
		   String registerMess = " ";
		   try{
		         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
		}
		     catch(Exception e){ System.out.print(e);}
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
		     if(username==null&&userpassword==null){
		          System.out.print("<br><br>请输入用户名和密码");
		          registerMess="请输入用户名和密码";
		          session.setAttribute("registerMess", registerMess);
		          response.sendRedirect("tao_register.jsp");
		          }
		     else if(username==null||username.length()<1){
		          System.out.print("<br><br>请输入用户名");
		          registerMess="请输入用户名!";
		          session.setAttribute("registerMess", registerMess);
		          response.sendRedirect("tao_register.jsp");
		     }
		     
		     else if(userpassword==null||userpassword.length()<1){
		          System.out.print("<br><br>请输入密码");
		          registerMess="请输入密码!";
		          session.setAttribute("registerMess", registerMess);
		          response.sendRedirect("tao_register.jsp");
		     }
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
		          registerMess="恭喜你，注册成功！";
		          session.setAttribute("registerMess", registerMess);
		          response.sendRedirect("tao_register.jsp");
		   }
		     catch(SQLException e){ 
		          System.out.print(e);
		          }
		          }

		
	}
	
}
