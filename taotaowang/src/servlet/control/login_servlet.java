package servlet.control;
import mybean.data.buy_bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class login_servlet extends HttpServlet {
	public void init(ServletConfig config)throws ServletException{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	      throws ServletException,IOException{
		HttpSession session = request.getSession(true);
        
		
		buy_bean buyBean = null;
		try{
		    	   buyBean = new buy_bean();
		    	   session.setAttribute("buyBean", buyBean);
			}
		catch(Exception e){
			buyBean = new buy_bean();
	    	session.setAttribute("buyBean", buyBean);
		}
		
		   try{
	         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
	}
	     catch(Exception e){ System.out.print(e);}
	     Connection con = null;
	     ResultSet rs;
	     Statement sql;
	     String loginErro=" ";
	     session.setAttribute("loginErro", loginErro);
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
	                   buyBean.setUserName(username);
	                   buyBean.setUserPassword(userpassword);
	                   buyBean.setAddr(rs.getString(3));
	                   buyBean.setPhone(rs.getString(4));
	                   buyBean.setMoney(rs.getFloat(5));
	                  
	                   //session.setAttribute("userName",username);
	                   
	                }
	          }
	         
	     }
	     catch(SQLException e){ 
	          System.out.print(e);
	          }
	          if(flag){
	        	 String mess=null;
		         session.setAttribute("loginFirst", mess);
	             response.sendRedirect("taotaowang.jsp");
	             System.out.println("登录成功！进入1");
	         
	          }
	          else if(i_flag!=2){
	             
	               System.out.println("用户名或密码错误！");
	               loginErro="用户名或密码错误！";
	              // buyBean.setLoginErro(loginErro);
	               session.setAttribute("loginErro", loginErro);
	               response.sendRedirect("tao_login.jsp");
	               System.out.println("进入2");
	           }
	          else if(i_flag==2){
		             
	               System.out.println("用户名或密码错误！");
	               loginErro="请输入用户名和密码";
	              // buyBean.setLoginErro(loginErro);
	               session.setAttribute("loginErro", loginErro);
	               response.sendRedirect("tao_login.jsp");
	               System.out.println("进入3");
	           }
	      
	 
	}
	
	
}
