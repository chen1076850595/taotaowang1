<%@ page contentType="text/html; charset=gb2312"%>
<jsp:useBean id="buyBean" class="mybean.data.buy_bean" scope="session"/>
<html>
<link rel="stylesheet" href="style.css">
<title>������</title>
<div class="header"><h1>������</h1>
<% String userName = buyBean.getUserName(); 
   if(userName == null||userName.length()<1){
%>
<a href="tao_login.jsp">��¼</a>
<a href="tao_register.jsp">ע��</a>
<%} else{%>
 
<a href="tao_user.jsp"><jsp:getProperty name="buyBean" property="userName"/></a>
<a href="tao_register.jsp">ע��</a>
<a href="invaServlet">ע��</a>
<%} %>
</div>
<body>
<form action="" method=post>
<div class="search">
     <input type="text" placeholder="�ļ����˵ĳ����" id="search">
     <input type=submit value="����" class="button">
             
    
</div>
</form>
<center>
<div class="buy">
        
        <figure><form action="addServlet" method=post>
        <img src="images/gangbi.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;���ɰ�Ȩ����-->
                <!--���ɼ�����-->
                &lt;�����칫&gt;
            </strong>
           Ӣ��6006��ͷ�����鷨�ֱ�ѧ�����������īˮ��Ʒ�иֱʿ��֣���Ӱ칫רӪ��
        </figcaption>
        <div>
            
           
            <span class="price">�� <strong>25.0</strong></span>
            <input type="hidden" value="a001" name="id">
            <input  type="submit" value="���빺�ﳵ" class="sat">
        </div>
       </form>
    </figure>
    
            <figure><form action="addServlet" method=post>
        <img src="images/yifu.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;���ɰ�Ȩ����-->
                <!--���ɼ�����-->
                &lt;�������˶�&gt;
            </strong>
            ����������ʿ�������������з�����Ʒ�Ʒ��곱ʪ����һ���׷�ˮ��
        </figcaption>
        <div>
            <input type="hidden" value="a002" name="id">
            <input  type="submit" value="���빺�ﳵ" class="sat">
            <span class="price">�� <strong>286</strong></span>
        </div>
       </form>
    </figure>
            <figure><form action="addServlet" method=post>
        <img src="images/shu.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;���ɰ�Ȩ����-->
                <!--���ɼ�����-->
                &lt;������-�������&gt;
            </strong>
            �����ȫ����·����������������ߡ������żμѴ�����������ഺ��ѧ������
        </figcaption>
        <div>
             <input type="hidden" value="a003" name="id">
            <input  type="submit" value="���빺�ﳵ" class="sat">
            <span class="price">�� <strong>16.5</strong></span>
        </div>
       </form>
    </figure>
      <figure><form action="addServlet" method=post>
        <img src="images/gangbi.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;���ɰ�Ȩ����-->
                <!--���ɼ�����-->
                &lt;�����칫&gt;
            </strong>
           Ӣ��6006��ͷ�����鷨�ֱ�ѧ�����������īˮ��Ʒ�иֱʿ��֣���Ӱ칫רӪ��
        </figcaption>
        <div>
            <input type="hidden" value="a001" name="id">
            <input  type="submit" value="���빺�ﳵ" class="sat">
            <span class="price">�� <strong>25.0</strong></span>
        </div>
       </form>
    </figure>
            <figure><form action="addServlet" method=post>
        <img src="images/yifu.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;���ɰ�Ȩ����-->
                <!--���ɼ�����-->
                &lt;�������˶�&gt;
            </strong>
            ����������ʿ�������������з�����Ʒ�Ʒ��곱ʪ����һ���׷�ˮ��
        </figcaption>
        <div>
             <input type="hidden" value="a002" name="id">
            <input  type="submit" value="���빺�ﳵ" class="sat">
            <span class="price">�� <strong>286</strong></span>
        </div>
       </form>
    </figure>
            <figure><form action="addServlet" method=post>
        <img src="images/shu.png" alt="">
        <figcaption>
            <strong class="title">
                <!--&copy;���ɰ�Ȩ����-->
                <!--���ɼ�����-->
                &lt;������-�������&gt;
            </strong>
            �����ȫ����·����������������ߡ������żμѴ�����������ഺ��ѧ������
        </figcaption>
        <div>
            
            <span class="price">�� <strong>16.5</strong></span>
            <input type="hidden" value="a003" name="id">
            <input  type="submit" value="���빺�ﳵ" class="sat">
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
   ����var mess="<%=session.getAttribute("loginFirst")%>"; 
   if(mess==null){}
    else 
    {alert(mess);}
����} 
//setInterval("getMess()");
//timer = setInterval("CountDown()",1000);    
   
</SCRIPT>  
<%String mess = (String)session.getAttribute("loginFirst");
if(mess!=null)
out.println("<script language=\"JavaScript\">alert(\"���ȵ�¼\")</script>");
session.setAttribute("loginFirst",null);
 %>
</html>