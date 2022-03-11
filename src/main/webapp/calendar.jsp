<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" import="java.sql.*"%>
<%
request.setCharacterEncoding("euc-kr");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
  
  Connection conn= null;
  PreparedStatement pstmt = null;
  
  String jdbc_driver= "oracle.jdbc.driver.OracleDriver";
  String jdbc_url= "jdbc:oracle:thin:@localhost:1521:ORCL";
  
  Class.forName("oracle.jdbc.driver.OracleDriver");
   
  conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", "C##LINAJUNG", "1234");
  if (conn== null) {
   out.println("No connection is made!");
  }
  %>
 <%
  java.util.Calendar cal=java.util.Calendar.getInstance();
  int currentYear=cal.get(java.util.Calendar.YEAR); 
  int currentMonth=cal.get(java.util.Calendar.MONTH);
  int currentDate=cal.get(java.util.Calendar.DATE);
  String Year=request.getParameter("year");
  String Month=request.getParameter("month");
  int year, month;
  if(Year == null && Month == null){
  year=currentYear;
  month=currentMonth;
  }
  else {
   year=Integer.parseInt(Year);
   month=Integer.parseInt(Month);
   if(month<0) { month=11; year=year-1; }
   if(month>11) { month=0; year=year+1; }
  }
  %>

<html lang="ko">
<head>
<title>사내 행사 및 휴가일정</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="signin.css">
<link rel="stylesheet" type="text/css" href="main_c.css">
<link rel="stylesheet" type="text/css" href="calendar.css">
<script src="https://kit.fontawesome.com/cc268d4c6a.js" crossorigin="anonymous"></script>
</head>

<body>
<jsp:include page="nav_top.jsp"/>
<center><div style="font-family: GmarketSansBold; font-size:2.1em; font-weight:bolder; margin-top:4%; margin-bottom:3%; color:#6d6d6d">행사 및 휴가 현황</div></center>
	
	
	
  <table class="tbl_head" style="font-family:ChosunSg; font-size:1.5em; font-weight:bolder;color:white;">
   <tr>
    <td align=left width=200> <!-- 년 도-->
    <a href="calendar.jsp?year=<%out.print(year-1);%>&month=<%out.print(month);%>">◀</a>
    <% out.print(year); %>년
    <a href="calendar.jsp?year=<%out.print(year+1);%>&month=<%out.print(month);%>">▶</a>
    </td>
    <td align=center width=300> <!-- 월 -->
    <a href="calendar.jsp?year=<%out.print(year);%>&month=<%out.print(month-1);%>">◀</a>
    <% out.print(month+1); %>월
    <a href="calendar.jsp?year=<%out.print(year);%>&month=<%out.print(month+1);%>">▶</a>
    </td>
    <td align=right width=200><% out.print(currentYear + "-" + (currentMonth+1) + "-" + currentDate); %></td>
   </tr>
  </table>
  <table class="tbl_week" cellspacing=0 style="color:white; font-weight:bolder; font-size:1.2em"> <!-- 달력 부분 -->
   <tr>
    <td style="height:50px;">일요일</td> <!-- 일=1 -->
    <td style="height:50px;">월요일</td> <!-- 월=2 -->
    <td style="height:50px;">화요일</td> <!-- 화=3 -->
    <td style="height:50px;">수요일</td> <!-- 수=4 -->
    <td style="height:50px;">목요일</td> <!-- 목=5 -->
    <td style="height:50px;">금요일</td> <!-- 금=6 -->
    <td style="height:50px;">토요일</td> <!-- 토=7 -->
   </tr>
   </table>
   <table class="tbl_day" cellspacing=0 style="font-family:ChosunSg; text-align:center">
   <%
   cal.set(year, month, 1);
   int startDay=cal.get(java.util.Calendar.DAY_OF_WEEK);
   int end=cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
   int br=0; 
   for(int i=0; i<(startDay-1); i++) { 
    out.println("<td>&nbsp;</td>");
    br++;
    if((br%7)==0) {
     out.println("<br>");
    }
   }
   for(int i=1; i<=end; i++) {
    out.println("<td><div style='min-height:85px;'>&nbsp;" + i + "<br>");
      
      int memoyear, memomonth, memoday;
      try{
        
       String sql= "SELECT calendar.year, calendar.month, calendar.day, calendar.contents, calendar.cate, calendar.empno, member.empno, member.name FROM calendar,member WHERE calendar.empno = member.empno";
       pstmt= conn.prepareStatement(sql);
        
       ResultSet rs= pstmt.executeQuery();
       while (rs.next()) { 
        
        memoyear=rs.getInt("year");
        memomonth=rs.getInt("month");
        memoday=rs.getInt("day");
        if(year==memoyear && month+1==memomonth && i==memoday) {
         out.println("<div style='font-size:9pt'>&nbsp;⊙" + "<font style='color:red'>"+ rs.getString("cate") + "</font>" + "&nbsp;" + rs.getString("contents") + "&nbsp;" + "(" + rs.getString("name") + ")</div>" + "<br>"); 
        }
       }
       rs.close();
      }
      catch(Exception e) {
       System.out.println(e);
      };
    out.println("</td>");
    br++;
    if((br%7)==0 && i!=end) {
     out.println("</tr><tr>");
    }
   }
   while((br++)%7!=0)
    out.println("<td>&nbsp;</td>");
   %>
  </table>   
  <center><input type="button" value="상신서류 쓰러가기" onclick="location.href='holiday.jsp'"/></center>
</html>
