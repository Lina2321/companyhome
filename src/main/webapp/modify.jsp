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
<title>글수정</title>
<link rel="stylesheet" type="text/css" href="main_c.css">
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

String query = "select * from board_ann join member on board_ann.empno=member.empno and board_ann.ann_num = '"+ num + "'";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
stmt = conn.createStatement();
rs = stmt.executeQuery(query);
	%>
<jsp:include page="nav_top2.jsp"/>
<form method="post" action="modify_check.jsp" >

        <select class="list_select" name="select_cate">
                    <option value="none">카테고리</option>
                   <option value="유지보수">유지보수</option>
                    <option value="인사고과">인사고과</option>
                    <option value="사내행사">사내행사</option>
                    <option value="사내교육">사내교육</option>
                    <option value="전체공지">전체공지</option>
</select>
<br>


        <table class="table2" align="center" cellpadding="2">
<% 
if (rs.next()){
	%>

            <tr>
                <td>작성자</td>
                <td><input type="hidden" name="empno" value="<%=session.getAttribute("user_empno")%>"><%=session.getAttribute("user_name")%></td>
					<input type="hidden" name="no" value="<%=num%>">	
            </tr>

            <tr>
                <td>제목</td>
                <td><input type="text" name="title" size="148" value="<%=rs.getString("title")%>"></td>
            </tr>

            <tr>
                <td>내용</td>
                <td><textarea name=content cols=139 rows=30><%=rs.getString("contents") %></textarea></td>
            </tr>
<%} %>
        </table>

        <center>
            <input class="button2" type="submit" value="글작성" />
            <input class="button2" type="reset" value="취소" /></td>
        </center>

    </form>
</body>
</html>