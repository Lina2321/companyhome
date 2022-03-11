<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글수정</title>
<link rel="stylesheet" type="text/css" href="write.css">
</head>
<body>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
String dbUser = "C##LINAJUNG";
String dbPass = "1234";

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

String num = request.getParameter("no");
String empno = request.getParameter("empno");
String com_num = request.getParameter("com_num");

String query = "select * from comments where ann_num = '"+ num + "' and com_num = '"+com_num+"'";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
stmt = conn.createStatement();
rs = stmt.executeQuery(query);
	%>
<form method="post" action="modify_c_check.jsp" >

        <table class="table2" align="center" cellpadding="2">
<% 
if (rs.next()){
	%>
					<input type="hidden" name="no" value="<%=num%>">
					<input type="hidden" name="com_num" value="<%=rs.getString("com_num")%>">
                <td><textarea name=content cols=40 rows=15><%=rs.getString("COM_CONTENTS") %></textarea></td>
            </tr>
<%} %>
        </table>

        <center>
            <input type="submit" value="댓글수정" />
            <input type="reset" value="취소" /></td>
        </center>

    </form>
</body>
</html>