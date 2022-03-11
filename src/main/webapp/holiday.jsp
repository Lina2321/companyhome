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
  <div class="title_h">휴가상신</div>
  <form id="form" name=memoAdd method=post action=holiday_action.jsp>
  <TABLE class="holiday_tbl" cellspacing=0 style="width:60%;">
     <TR>
        <TD id="tbl_title" style="height:70px; background:#fbfbee"> 유형 </TD>
        <TD> <select class="holiday_cate" name="memoType">
            <option value="연차">연차(유급)</option>
            <option value="월차">월차(유급)</option>
            <option value="반차">반차(유급)</option>
            <option value="출산">출산(유급)</option>
            <option value="돌봄">돌봄(무급)</option>
            <option value="약정">약정(무급)</option>
            <option value="보상">보상(무급)</option>
            <option value="보건">보건(무급)</option>
        </select> </TD>
        <TD style="background:#e7e7e4"> 부서 </TD>
        <TD> <% out.print(session.getAttribute("user_dept"));%> </TD>
     </TR>
     <TR>
        <TD style="height:70px; background:#e7e7e4"> 성명 </TD>
        <input type="hidden" name="memoName" value="<% out.print(session.getAttribute("user_empno"));%>"/>
        <TD> <% out.print(session.getAttribute("user_name"));%></TD>
        
        <TD style="background:#fbfbee"> 직급 </TD>
        <TD> <% out.print(session.getAttribute("user_position"));%> </TD>
     </TR>
     <TR>
     	<TD style="height:60px; background:#fbfbee"> 휴가기간 </TD>
		<TD colspan="3"> 
		<input type=text name=memoYear size=4>&nbsp;년&nbsp;
   		<input type=text name=memoMonth size=2>&nbsp;월&nbsp;
   		<input type=text name=memoDay size=2>&nbsp;일&nbsp; 
   		</TD>
     </TR>
     
     <TR>
        <TD style="background:#e7e7e4"> 세부사항 </TD>
        <TD colspan="3"> <input type=text name=memoContents style="width:90%; height:400px; border: white; margin:2%;"> </TD>
     </TR>
     <TR>
     
        <TD colspan="4" style="height:100px"> 
        <br><br><span>위와 같이 휴가를 신청합니다.</span><br><br><br>
        <div style="text-align:right; padding-right:30px">신청자 : <% out.print(session.getAttribute("user_name"));%>&nbsp;&nbsp;(인)</div><br><br>
        </TD>
     </TR>   
    </TABLE>
   <input type=submit value="상신">
  </form>
  <div class="bottom">
  <span>*휴가 상신 전 필독*</span><br>
  <span>본 상신 양식은 딱 하루만 등록이 됩니다! 여러날을 원하는 경우 일일히 등록해주셔야해요.</span><br>
  <span>ex. 2022년 3월22일~24일 휴가를 신청할 경우엔 22일, 23일,24일 각각 신청해야함. (세부사항에 표기)</span>
  </div>
</center>
</body>
</html>