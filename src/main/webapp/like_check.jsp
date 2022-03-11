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
    
    Connection conn2 = null; 
	Statement stmt2 = null;
    ResultSet rs2 = null;
    
    Connection conn3 = null; 
	Statement stmt3 = null;
    ResultSet rs3 = null;
    
    request.setCharacterEncoding("UTF-8");
		
		String num = request.getParameter("like_board_num");
		String empno = (String)session.getAttribute("user_empno");

		 try
      {
            String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "C##LINAJUNG";
            String dbPass = "1234";
   
            String query = "SELECT * FROM likeit WHERE EMPNO='"+empno+"' AND ann_num = '"+num+"'";
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);

            if(rs.next()){
            	if(rs.getString(1) != null) {
                %><script>
                    alert('이미 추천을 하셨습니다.');
                    location.replace("view2.jsp?no=<%=num%>");
                    </script>
                   <%
            	}
            } else{
            	
            	conn2 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
                stmt2 = conn.createStatement();
                String query2="INSERT INTO likeit (ann_num, empno, like_cnt, like_date) VALUES ('"+num+"', '"+empno+"' ,'like' ,sysdate)";
                stmt.executeUpdate(query2);
               
                conn3 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
                stmt3 = conn.createStatement();
                String query3 = "UPDATE board_ann SET like_cnt = like_cnt + 1 WHERE ann_num = '"+num+"'";
                stmt.executeUpdate(query3);
                
                %>
                <script>
                    alert('추천이 완료 되었습니다.');
                    location.replace("view2.jsp?no=<%=num%>");
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