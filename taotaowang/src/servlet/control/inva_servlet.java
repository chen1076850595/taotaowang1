package servlet.control;
import mybean.data.buy_bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class inva_servlet extends HttpServlet {
	public void init(ServletConfig config)throws ServletException{
		super.init(config);
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response)
	      throws ServletException,IOException{
		  HttpSession session = request.getSession(true);
		  buy_bean buyBean = (buy_bean)session.getAttribute("buyBean");
		  String userName = buyBean.getUserName();
		  float money = buyBean.getMoney();
		  try{
		         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
		}
		     catch(Exception e){ System.out.print(e);}
		     Connection con = null;
		     Statement sql;	 
		     try{
		          String url = "jdbc:sqlserver://localhost:1433;database=taotaowang";
		          String name = "sa";
		          String password = "chen123";
		          con = DriverManager.getConnection(url,name,password);
		          sql = con.createStatement();
		          String condition = "update tao_user set total_money="+money+
		        		  "where username='"+userName+"';";
		          sql.executeUpdate(condition);		               	         
		        }
		     catch(SQLException e){ 
		          System.out.print(e);
		          }
		        session.invalidate();		        
		        response.sendRedirect("tao_inva.jsp");
		 
		}
		
		
	}
