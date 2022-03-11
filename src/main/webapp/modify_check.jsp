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
		
		String num = request.getParameter("no");
		String empno = (String)session.getAttribute("user_empno");
		String title = request.getParameter("title");
		String contents = request.getParameter("content");

		 try
      {
            String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "C##LINAJUNG";
            String dbPass = "1234";
   
            String query = "UPDATE BOARD_ANN SET contents = '"+contents+"' , title = '"+title+"' WHERE ann_num = '"+num+"'";
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
            stmt = conn.createStatement();
            stmt.executeUpdate(query);

            if(stmt.executeUpdate(query) == 1){
            	
                %><script>
                    alert('글을 수정 하였습니다.');
                    location.replace("view2.jsp?no=<%=num%>");
                    </script>
                   <%
            
            } else{
            	
                %>
                <script>
                    alert('글 수정에 실패 하였습니다.');
                    history.back();
                    </script>
            <%
            }

            
      }catch(SQLException e){
          out.println(e.getMessage());
          e.printStackTrace();
    }finally{
          
          if(rs != null) try { rs.close(); } catch(SQLException ex) {}
          if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
 
          
          if(conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
	%>