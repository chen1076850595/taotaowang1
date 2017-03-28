package servlet.control;
import mybean.data.buy_bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class add_servlet extends HttpServlet {
	public void init(ServletConfig config)throws ServletException{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	      throws ServletException,IOException{
		HttpSession session = request.getSession(true);
        boolean flag=false;
		buy_bean buyBean = null;
		try{       buyBean = (buy_bean)session.getAttribute("buyBean");
		           if(buyBean==null){
		        	   flag = true;
		        	   String mess = "���ȵ�¼";
		        	   session.setAttribute("loginFirst", mess);
		           }
		           else if(buyBean.getUserName()==null||buyBean.getUserName().length()<1){
		        	   flag = true;
		        	   String mess = "���ȵ�¼";
		        	   session.setAttribute("loginFirst", mess);
		           }
		    	  
			}
		catch(Exception e){
			  System.out.println(e);
		}
		//����Ѿ���¼���򽫹������Ʒ��Ϣ����bean
		if(!flag){
		   try{
	         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
	      }
	     catch(Exception e){ System.out.print(e);}
		 
	     Connection con = null;
	     ResultSet rs;
	     Statement sql;
	     request.setCharacterEncoding("gb2312");
	     String newId = (String)request.getParameter("id");
	     System.out.println(newId);
	     float price=0;
	     try{
	          String url = "jdbc:sqlserver://localhost:1433;database=taotaowang";
	          String name = "sa";
	          String password = "chen123";
	          con = DriverManager.getConnection(url,name,password);
	          sql = con.createStatement();
	          String condition = "SELECT * from product;";
	          rs = sql.executeQuery(condition);
	          while(rs.next()){
	                if(newId.equals(rs.getString("id"))){
	                	//�����µ��ܼ۸�
	                   price = rs.getFloat(4)+buyBean.getPrice();                
	                   buyBean.setPrice(price);
	                   //����Ϣ����javaBean
	                   StringBuffer str;
	                   str = (StringBuffer)buyBean.getProduct();
	                   if(str==null)
	                      str = new StringBuffer();            
	                   str.append("\""+rs.getString(2)+"\"&nbsp *1&nbsp&nbsp&nbsp&nbsp&nbsp"+
	                      Float.parseFloat(rs.getString(4))+"<br>,");	         
	                   buyBean.setProduct(str);
	                  
			                
	                   response.sendRedirect("taotaowang.jsp");
	                   
	                }
	          }
	         
	     }
	     catch(SQLException e){ 
	          System.out.print(e);
	          }
   
	}
		else{
			response.sendRedirect("taotaowang.jsp");
		}
	
	}
}
