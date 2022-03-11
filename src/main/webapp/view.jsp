<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "company.dev.vo.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="main_c.css">
<link rel="stylesheet" type="text/css" href="view.css">
<script src="https://kit.fontawesome.com/cc268d4c6a.js"
	crossorigin="anonymous"></script>
<title>게시물 열람</title>
</head>
<body>
<jsp:include page="nav_top2.jsp"/>
<% 
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection conn = null;
Connection conn2 = null;
Statement stmt = null;
Statement stmt2 = null;
ResultSet rs = null;
ResultSet rs2 = null;
String num = request.getParameter("no");
int count = 0;
String pw =null;

String query = "select notice.notice_num, notice.notice_cate, notice.notice_title, notice.contents, notice.date_notice, notice.hit, member.name from notice join member on notice.empno=member.empno and notice.notice_num = '"+num+"'";
String query2 = "update notice set hit=hit+1 where notice_num = '" + num + "'";
String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
String dbUser = "C##LINAJUNG";
String dbPass = "1234";


try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		while(rs.next()){
			
%>


	<table class="view_table" align="center">
        <tr>
            <td class="view_title">
                <h3>
                    <%= rs.getString("notice_title") %><br></h3>
                <a size="3pt"><%= rs.getString("name") %>
                    &nbsp;&nbsp;|
                    &nbsp;&nbsp;작성일&nbsp;
                    <%= sdf.format(rs.getTimestamp("date_notice"))%></a>
            <td class="view_hit">조회수&nbsp;
                <%= rs.getString("hit") %>&nbsp;&nbsp;&nbsp;
        </tr>

        <tr>
            <td colspan="4" class="view_content" valign="top">
               <div style="white-space:pre;"><%= rs.getString("contents") %></div>
                
            </td>

        </tr>
    </table>
<%
		}
}catch(SQLException e){
      out.println(e.getMessage());
      e.printStackTrace();
}finally{
	conn2 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stmt2 = conn.createStatement();
	rs2 = stmt.executeQuery(query2);
	  if(rs2.next()){}
      if(rs != null) try { rs.close(); } catch(SQLException ex) {}
      if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
      if(conn != null) try { conn.close(); } catch(SQLException ex) {}
}
%>
<center><input type="button" value="목록으로" onclick="location.href='notice.jsp'"/></center>
</body>
</html>