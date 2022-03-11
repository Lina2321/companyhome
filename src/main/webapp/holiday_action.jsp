<%@ page contentType="text/html;charset=euc-kr" pageEncoding="euc-kr" import="java.sql.*"%>
<%request.setCharacterEncoding("euc-kr");%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%

	String getType = request.getParameter("memoType");
	String getContents = request.getParameter("memoContents");
	String getYear = request.getParameter("memoYear");
	String getMonth = request.getParameter("memoMonth");
	String getDay =  request.getParameter("memoDay");
	String getEmpno =  request.getParameter("memoName");

	Class.forName("oracle.jdbc.driver.OracleDriver");
  	Connection conn= null;
  	PreparedStatement pstmt = null;
  	
  	String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
  	String dbUser = "C##LINAJUNG";
    String dbPass = "1234";
    
    conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    
    if (conn == null) {
    	   out.println("No connection is made!");
    	  }
    
 	try{
    pstmt = conn.prepareStatement("INSERT INTO CALENDAR (CATE, CONTENTS, YEAR, MONTH, DAY, EMPNO) VALUES (?,?,?,?,?,?)");
    pstmt.setString(1, getType);
    pstmt.setString(2, getContents);
    pstmt.setString(3, getYear);
    pstmt.setString(4, getMonth);
    pstmt.setString(5, getDay);
    pstmt.setString(6, getEmpno);
    
    pstmt.executeUpdate();
 	}catch(SQLException e){}
    pstmt.close();
    conn.close();
   %>
<script type="text/javascript">
            alert('상신 되었습니다.');
            location.replace('calendar.jsp');
        	</script>