<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null; 
	Statement stmt = null;
    ResultSet rs = null;
    
    request.setCharacterEncoding("UTF-8");
		
		String num = request.getParameter("comment_ann_num");
		String empno = request.getParameter("comment_empno");
		String content = request.getParameter("comment");
		
		
		
		 try
      {
            String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "C##LINAJUNG";
            String dbPass = "1234";
   
            String query = "insert into comments (com_num, ann_num, empno, com_contents, com_date) values(tmp_seq3.NEXTVAL,'"+num+"','"+empno+"','"+content+ "',sysdate)";
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);

            if(rs.next()) {
            	%><script type="text/javascript">
	            alert('댓글이 작성되었습니다.');
	            location.replace('view2.jsp?no=<%=num%>');
	        </script>
	        <% } else {
	        	%><script type="text/javascript">
            alert('댓글 작성에 실패하였습니다.');
            history.back();
        	</script>
	       <% }
      }catch(SQLException e){
          out.println(e.getMessage());
          e.printStackTrace();
    }finally{
          
          if(rs != null) try { rs.close(); } catch(SQLException ex) {}
          if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
 
          
          if(conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
	%>