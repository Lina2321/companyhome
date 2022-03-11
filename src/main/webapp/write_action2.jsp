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
		
		String title = request.getParameter("title");
		String empno = request.getParameter("empno");
		String content = request.getParameter("content");
		
		
		
		 try
      {
            String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "C##LINAJUNG";
            String dbPass = "1234";
   
            String query = "insert into board_ann  (ann_num,title, empno, contents, ann_date) values(tmp_seq2.NEXTVAL, '" +title +"','"+empno+"','"+content+ "',sysdate)";
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);

            if(rs.next()) {
            	%><script type="text/javascript">
	            alert('글이 작성되었습니다.');
	            location.replace('board_ann.jsp?');
	        </script>
	        <% } else {
	        	%><script type="text/javascript">
            alert('글 작성에 실패하였습니다.');
            history.back();
        	</script>
	       <% }
      }catch(SQLException e){
          out.println(e.getMessage());
          e.printStackTrace();
    }finally{
          // 6. 사용한 Statement 종료
          if(rs != null) try { rs.close(); } catch(SQLException ex) {}
          if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
 
          // 7. 커넥션 종료
          if(conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
	%>
