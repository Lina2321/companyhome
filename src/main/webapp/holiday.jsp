<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" import="java.sql.*"%>
<%
request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Donkey Base</title>
      <link rel="stylesheet" type="text/css" href="main_c.css">
      <link rel="stylesheet" type="text/css" href="holiday.css">
      <script src="https://kit.fontawesome.com/cc268d4c6a.js" crossorigin="anonymous"></script>
 </head>
 </head>
 <body>
 <body>
<jsp:include page="nav_top2.jsp"/>
  <center>
  <div class="title_h">�ް����</div>
  <form id="form" name=memoAdd method=post action=holiday_action.jsp>
  <TABLE class="holiday_tbl" cellspacing=0 style="width:60%;">
     <TR>
        <TD id="tbl_title" style="height:70px; background:#fbfbee"> ���� </TD>
        <TD> <select class="holiday_cate" name="memoType">
            <option value="����">����(����)</option>
            <option value="����">����(����)</option>
            <option value="����">����(����)</option>
            <option value="���">���(����)</option>
            <option value="����">����(����)</option>
            <option value="����">����(����)</option>
            <option value="����">����(����)</option>
            <option value="����">����(����)</option>
        </select> </TD>
        <TD style="background:#e7e7e4"> �μ� </TD>
        <TD> <% out.print(session.getAttribute("user_dept"));%> </TD>
     </TR>
     <TR>
        <TD style="height:70px; background:#e7e7e4"> ���� </TD>
        <input type="hidden" name="memoName" value="<% out.print(session.getAttribute("user_empno"));%>"/>
        <TD> <% out.print(session.getAttribute("user_name"));%></TD>
        
        <TD style="background:#fbfbee"> ���� </TD>
        <TD> <% out.print(session.getAttribute("user_position"));%> </TD>
     </TR>
     <TR>
     	<TD style="height:60px; background:#fbfbee"> �ް��Ⱓ </TD>
		<TD colspan="3"> 
		<input type=text name=memoYear size=4>&nbsp;��&nbsp;
   		<input type=text name=memoMonth size=2>&nbsp;��&nbsp;
   		<input type=text name=memoDay size=2>&nbsp;��&nbsp; 
   		</TD>
     </TR>
     
     <TR>
        <TD style="background:#e7e7e4"> ���λ��� </TD>
        <TD colspan="3"> <input type=text name=memoContents style="width:90%; height:400px; border: white; margin:2%;"> </TD>
     </TR>
     <TR>
     
        <TD colspan="4" style="height:100px"> 
        <br><br><span>���� ���� �ް��� ��û�մϴ�.</span><br><br><br>
        <div style="text-align:right; padding-right:30px">��û�� : <% out.print(session.getAttribute("user_name"));%>&nbsp;&nbsp;(��)</div><br><br>
        </TD>
     </TR>   
    </TABLE>
   <input type=submit value="���">
  </form>
  <div class="bottom">
  <span>*�ް� ��� �� �ʵ�*</span><br>
  <span>�� ��� ����� �� �Ϸ縸 ����� �˴ϴ�! �������� ���ϴ� ��� ������ ������ּž��ؿ�.</span><br>
  <span>ex. 2022�� 3��22��~24�� �ް��� ��û�� ��쿣 22��, 23��,24�� ���� ��û�ؾ���. (���λ��׿� ǥ��)</span>
  </div>
</center>
</body>
</html>