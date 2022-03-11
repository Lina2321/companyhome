<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>

<%
	request.setCharacterEncoding("UTF-8");

	String num = request.getParameter("no");
	String com_num = request.getParameter("com_num");
    
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	String uempno = "C##LINAJUNG";
	String upw = "1234";
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String query = "delete from comments WHERE ann_num='"+num+"' AND com_num='"+com_num+"'";
	
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, uempno, upw);
		stmt = conn.createStatement();
		
		
		if(stmt.executeUpdate(query) == 1 ){ 
			%>
			 <script type="text/javascript">
	            alert('댓글이 삭제되었습니다.');
	            location.replace('view2.jsp?no=<%=num%>');
	        </script>
			<%
		} else{
			%>
			 <script type="text/javascript">
            alert('글 삭제에 실패 하였습니다.');
            history back();
        	</script>
        	<%
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(stmt != null) stmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
 %>