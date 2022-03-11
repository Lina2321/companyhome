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

<%
Class.forName("oracle.jdbc.driver.OracleDriver");


Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String name = (String)request.getAttribute("name"); 

String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
String dbUser = "C##LINAJUNG";
String dbPass = "1234";

stmt = conn.createStatement();
%>

</body>
</html>