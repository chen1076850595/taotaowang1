package servlet.control;
import mybean.data.buy_bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class cart_servlet extends HttpServlet {
	public void init(ServletConfig config)throws ServletException{
		super.init(config);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	      throws ServletException,IOException{
		  HttpSession session = request.getSession(true);
		  buy_bean buyBean = (buy_bean)session.getAttribute("buyBean");
		  buyBean.setProduct(null);
		  buyBean.setPrice(0);
		  response.sendRedirect("tao_cart.jsp");
}
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		      throws ServletException,IOException{
			  HttpSession session = request.getSession(true);

			  buy_bean buyBean = (buy_bean)session.getAttribute("buyBean");
			  float totalMoney = buyBean.getMoney();
			  float totalPrice = buyBean.getPrice();
			  if(totalPrice==0){
				  String mess = "您还没有选择商品！";
			      session.setAttribute("cartMess", mess);
				  response.sendRedirect("tao_cart.jsp");
			  }  
			  else if(totalPrice>totalMoney){
				  String mess = "余额不足，无法购买！";
			      session.setAttribute("cartMess", mess);
				  response.sendRedirect("tao_cart.jsp");
			  }
			  else{
				  buyBean.setMoney(totalMoney-totalPrice);
			      buyBean.setProduct(null);
			      buyBean.setPrice(0);			
			      String mess = "购买成功！您的余额为："+buyBean.getMoney();
			      session.setAttribute("cartMess", mess);
				  response.sendRedirect("tao_cart.jsp");
			  }
	}
}