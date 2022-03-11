<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="company.dev.vo.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="main_c.css">
<link rel="stylesheet" type="text/css" href="view.css">
<link rel="stylesheet" type="text/css" href="comments.css">
<script src="https://kit.fontawesome.com/cc268d4c6a.js"
	crossorigin="anonymous"></script>
<title>익명 게시물 열람</title>
</head>
<body>
	<jsp:include page="nav_top2.jsp" />
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection conn = null;
	Connection conn2 = null;
	Connection conn3 = null;
	Connection conn4 = null;
	Connection conn5 = null;
	Statement stmt = null;
	Statement stmt2 = null;
	Statement stmt3 = null;
	Statement stmt4 = null;
	Statement stmt5 = null;
	ResultSet rs = null;
	ResultSet rs2 = null;
	ResultSet rs3 = null;
	ResultSet rs4 = null;
	ResultSet rs5 = null;
	String num = request.getParameter("no");
	String empno = (String)session.getAttribute("user_empno");
	String empno_c = null;
	
	String contents = null;
	int count = 0;
	int count2 = 0;

	String query = "select * from board_ann join member on board_ann.empno=member.empno and board_ann.ann_num = '"+ num + "'";
	String query2 = "select count(*) from comments where ann_num = '" + num + "'";
	String query3 = "select * from comments join member on comments.empno=member.empno and comments.ann_num = '"+ num +"' order by com_num asc";
	String query4 = "update board_ann set hit=hit+1 where ann_num = '" + num + "'";

	String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
	String dbUser = "C##LINAJUNG";
	String dbPass = "1234";

	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		while (rs.next()) {
	%>


	<table class="view_table" align="center">
		<tr>
			<td class="view_title">
				<h3>
					<%=rs.getString("title")%><br>
				</h3> <a size="3pt">익명 &nbsp;&nbsp;| &nbsp;&nbsp;작성일&nbsp; <%=sdf.format(rs.getTimestamp("ann_date"))%></a>
			<td class="view_hit">
				조회수&nbsp; <%=rs.getString("hit")%>&nbsp;&nbsp;&nbsp;|&nbsp;
				추천수&nbsp;<%=rs.getInt("like_cnt")%>&nbsp;&nbsp;|&nbsp; 
				<%
 					conn2 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
 					stmt2 = conn2.createStatement();
 					rs2 = stmt.executeQuery(query2);
 					if (rs2.next()) {
 					count = rs2.getInt(1);
 						}
 					%> 
 					댓글수&nbsp;<%=count%>
 			</td>
		</tr>

		<tr>
			<td colspan="4" class="view_content" valign="top">
				<%
					conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(query);
					if(rs.next()){
						contents = rs.getString("contents");
					}
				%>
				<div style="white-space: pre;"><%=contents%></div>
			</td>

		</tr>
	</table>
	<%
	}
	}catch(SQLException e){
        out.println(e.getMessage());
        e.printStackTrace();
  }
	%>
	<!-- 좋아요 버튼 -->
	<% 
	conn5 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stmt5 = conn.createStatement();
	rs5 = stmt.executeQuery(query);
	if(rs5.next()){
		String like = rs5.getString("like_cnt");
	
	%>
    <form method='POST' action='like_check.jsp' align='center'>
        <input type="hidden" name="like_board_num" value="<%=num%>">
        <div class="feeling_div">
            <div class="button-container like-container">
                <button class="feeling_a" name="like">추천하기<br><span style="color:#c95151; font-size:17px;">(<%=like%>)</span></span>
            </div>
        </div>
    </form>
    <%}
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn3 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt3 = conn.createStatement();
		rs3 = stmt.executeQuery(query3);
		SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy-MM-dd");
		
		while (rs3.next()) {
			empno_c = rs3.getString("empno");
        %>
         <div class="comment_tbl">
            <td>익명
                <a size="2px"><%=sdf3.format(rs3.getTimestamp("com_date"))%></a>
                <%
                if (session.getAttribute("user_empno").equals(empno_c)){
                    %>
                        <button class="del_btn" 
                        onclick="location.href='delete_c.jsp?no=<%=num%>&empno=<%=empno%>&com_num=<%=rs3.getInt("com_num")%>'">
                        삭제하기</button>
                        <button class="mod_btn" 
                        onclick="window.open('modify_c.jsp?no=<%=num%>&empno=<%=empno%>&com_num=<%=rs3.getInt("com_num")%>','댓글수정','width=700,height=400,location=no,status=no,scrollbars=yes');">
                        수정하기</button>

                    <%
                    } 
                %>
                <br>
            </td>
            &nbsp;<td class="comment_line"><%=rs3.getString("com_contents")%></td>
            <hr>
            <%
            
            }	
		}catch(SQLException e){
                out.println(e.getMessage());
                e.printStackTrace();
          }finally{
        	  conn4 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
      		stmt4 = conn.createStatement();
      		rs4 = stmt.executeQuery(query4);
        	  if(rs4.next()){}
                if(rs != null) try { rs.close(); } catch(SQLException ex) {}
                if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
                if(conn != null) try { conn.close(); } catch(SQLException ex) {}
          }
	
	
          %>
          </div>
       <div class="comment_tbl">
		    <%
    if (session.getAttribute("user_name") != null || !session.getAttribute("user_name").equals("")) {
    %>
    	
        <form class="comment_f" method="post" action="reply_ok.jsp">
            <input type="hidden" name="comment_ann_num" value="<%=num%>">
            <input type="hidden" name="comment_empno" value="<%=session.getAttribute("user_empno")%>">
            <textarea class="comment" name="comment" cols="123" rows="10" placeholder="댓글은 신중히 달아주세요^^"></textarea>
            <input class="commet_b" type="submit" value="댓글달기">
        </form>
        
         </div>
    <%
    }
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query);
	if(rs.next()){
    if (rs.getString("empno").equals(empno)) {
        %>
        <div class="view_btn">
            <button class="view_btn1" onclick="location.href='board_ann.jsp'">목록으로</button>
            <button class="view_btn1" ><a href="modify.jsp?no=<%=num %>&empno=<%=session.getAttribute("user_empno")%>">수정</a></button>
            <button class="view_btn1" ><a href="delete.jsp?no=<%=num %>&empno=<%=session.getAttribute("user_empno")%>">삭제</a></button>
        </div>
    <%
    
    }
	}
    %>
    
</body>
</html>