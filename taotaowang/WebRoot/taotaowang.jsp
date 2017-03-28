<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="buyBean" class="mybean.data.buy_bean" scope="session"/>
<html>
<link rel="stylesheet" href="style.css">
<title>淘淘网</title>
<div class="header"><h1>淘淘网</h1>
<% String userName = buyBean.getUserName(); 
   if(userName == null||userName.length()<1){
%>
<a href="tao_login.jsp">登录</a>
<a href="tao_register.jsp">注册</a>
<%} else{%>
 
<a href="tao_user.jsp"><jsp:getProperty name="buyBean" property="userName"/></a>
<a href="tao_register.jsp">注册</a>
<a href="invaServlet">注销</a>
<%} %>
</div>
<body>
<form action="" method=post>
<div class="search">
     <input type="text" placeholder="四季皆宜的冲锋衣" id="search">
     <input type=submit value="搜索" class="button">
             
    
</div>
</form>
<center>
<div class="buy">
        
        <figure><form action="addServlet" method=post>
        <img src="images/gangbi.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;生成版权符号-->
                <!--生成尖括号-->
                &lt;素美办公&gt;
            </strong>
           英雄6006龙头练字书法钢笔学生用弯尖美工墨水礼品盒钢笔刻字，麦从办公专营店
        </figcaption>
        <div>
            
           
            <span class="price">￥ <strong>25.0</strong></span>
            <input type="hidden" value="a001" name="id">
            <input  type="submit" value="加入购物车" class="sat">
        </div>
       </form>
    </figure>
    
            <figure><form action="addServlet" method=post>
        <img src="images/yifu.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;生成版权符号-->
                <!--生成尖括号-->
                &lt;阿拉丁运动&gt;
            </strong>
            花花公子男士冬季户外冲锋衣男防风衣品牌防雨潮湿三合一外套防水服
        </figcaption>
        <div>
            <input type="hidden" value="a002" name="id">
            <input  type="submit" value="加入购物车" class="sat">
            <span class="price">￥ <strong>286</strong></span>
        </div>
       </form>
    </figure>
            <figure><form action="addServlet" method=post>
        <img src="images/shu.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;生成版权符号-->
                <!--生成尖括号-->
                &lt;当当网-正版包邮&gt;
            </strong>
            从你的全世界路过《让我留在你身边》作者张嘉佳代表感情作，青春文学畅销书
        </figcaption>
        <div>
             <input type="hidden" value="a003" name="id">
            <input  type="submit" value="加入购物车" class="sat">
            <span class="price">￥ <strong>16.5</strong></span>
        </div>
       </form>
    </figure>
      <figure><form action="addServlet" method=post>
        <img src="images/gangbi.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;生成版权符号-->
                <!--生成尖括号-->
                &lt;素美办公&gt;
            </strong>
           英雄6006龙头练字书法钢笔学生用弯尖美工墨水礼品盒钢笔刻字，麦从办公专营店
        </figcaption>
        <div>
            <input type="hidden" value="a001" name="id">
            <input  type="submit" value="加入购物车" class="sat">
            <span class="price">￥ <strong>25.0</strong></span>
        </div>
       </form>
    </figure>
            <figure><form action="addServlet" method=post>
        <img src="images/yifu.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;生成版权符号-->
                <!--生成尖括号-->
                &lt;阿拉丁运动&gt;
            </strong>
            花花公子男士冬季户外冲锋衣男防风衣品牌防雨潮湿三合一外套防水服
        </figcaption>
        <div>
             <input type="hidden" value="a002" name="id">
            <input  type="submit" value="加入购物车" class="sat">
            <span class="price">￥ <strong>286</strong></span>
        </div>
       </form>
    </figure>
            <figure><form action="addServlet" method=post>
        <img src="images/shu.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;生成版权符号-->
                <!--生成尖括号-->
                &lt;当当网-正版包邮&gt;
            </strong>
            从你的全世界路过《让我留在你身边》作者张嘉佳代表感情作，青春文学畅销书
        </figcaption>
        <div>
            
            <span class="price">￥ <strong>16.5</strong></span>
            <input type="hidden" value="a003" name="id">
            <input  type="submit" value="加入购物车" class="sat">
        </div>
       </form>
    </figure>
</div>
</center>
<br>
<% String userName1 = buyBean.getUserName(); 
   if(userName1 == null||userName1.length()<1){}
   else{
%>
<div id="nav"> <a href="tao_cart.jsp"></a></div>
<%} %>
<div id="back"><a href="#"></a></div>
</body>
<SCRIPT LANGUAGE="JavaScript">    

  

function getMess(){ 
   　　var mess="<%=session.getAttribute("loginFirst")%>"; 
   if(mess==null){}
    else 
    {alert(mess);}
　　} 
//setInterval("getMess()");
//timer = setInterval("CountDown()",1000);    
   
</SCRIPT>  
<%String mess = (String)session.getAttribute("loginFirst");
if(mess!=null)
out.println("<script language=\"JavaScript\">alert(\"请先登录\")</script>");
session.setAttribute("loginFirst",null);
 %>
</html>