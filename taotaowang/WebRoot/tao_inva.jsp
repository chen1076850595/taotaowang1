<%@ page contentType="text/html;charset=gb2312"%>
<html><body>
<center>
<h3>ע���ɹ���</h3>
<SCRIPT LANGUAGE="JavaScript">    

var maxtime = 5; //һ��Сʱ��������㣬�Լ�����!    
function CountDown(){    
 if(maxtime>=0){    
 minutes = Math.floor(maxtime/60);    //��һ����ӽ�������
 seconds = Math.floor(maxtime%60);    
 msg = seconds+"�����ת����¼����";    
 document.all["timer"].innerHTML=msg;     
 --maxtime;    
 }    
 else{    
 clearInterval(timer);  
 window.location.href='tao_login.jsp';
 }    
}    
timer = setInterval("CountDown()",1000);    
   
</SCRIPT>  
<div id="timer"></div>
<div><a href="tao_login.jsp">����ǰ��</a></div>
</center>
</body></html>