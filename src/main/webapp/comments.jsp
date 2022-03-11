<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import ="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글</title>
</head>
<body>
<%
      
      Class.forName("oracle.jdbc.driver.OracleDriver");
		
      Connection conn = null;
      Statement stmt = null;
      ResultSet rs = null;
      String name = (String)request.getAttribute("name");
      

  
      try
      {
            String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "C##LINAJUNG";
            String dbPass = "1234";
   
            String query = "SELECT * FROM comments,member WHERE name = '"+name+"'";

            
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            
            while(rs.next()) {
            	
%>			
			<div class="comment_tbl">
                <td class="comment_info"><br><?php echo $rows4['nickname'] ?>
                    (<?php echo $rows4['MBTI_m'] ?>)
                    <a size="2px">
                        <?php echo $rows4['date_com'] ?></a>
                    <a>(<?php echo $rows4['com_num'] ?>)</a></br>
                </td>
                <td class="comment_line"><?php echo $rows4['content_com'] ?></td>
                <% %>
                if ($_SESSION['userid'] == $rows10['id']) {
                ?>
                    <button class="mod_btn" onclick="location.href='modify_c.php?board_num=<?= $num ?>
                &id=<?= $_SESSION['userid'] ?>&com_num=<?= $rows4['com_num'] ?>'">수정하기</button>
                    <button class="del_btn" onclick="location.href='delete_c.php?board_num=<?= $num ?>
                &id=<?= $_SESSION['userid'] ?>&com_num=<?= $rows4['com_num'] ?>'">삭제하기</button>
                <?php } else {
                } ?>
            </div>
<%
            }
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
</body>
</html>