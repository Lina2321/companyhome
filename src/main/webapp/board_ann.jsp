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

<%!
String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
String dbUser = "C##LINAJUNG";
String dbPass = "1234";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>익명게시판</title>
<link rel="stylesheet" type="text/css" href="notice.css">
<link rel="stylesheet" type="text/css" href="main_c.css">
 <script src="https://kit.fontawesome.com/cc268d4c6a.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="nav_top.jsp"/>


<table class="tbl_head" style="margin-top:3%;">
    <thead align="center">
        <tr>
            <td width="50" align="center">번호</td>
            <td width="500" align="center">제목</td>
            <td width="100" align="center">작성자</td>
            <td width="200" align="center">날짜</td>
            <td width="50" align="center">조회수</td>
            <td width="50" align="center">추천</td>
        </tr>
    </thead>
    </table>
    <table class="tbl_list" cellspacing=0>
    <%
    	String query = "select * from board_ann,member where board_ann.empno=member.empno order by ann_date desc";
		Statement stmt = null;
		Connection conn = null;
		ResultSet rs = null;
		int count=0;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		if (session.getAttribute("user_empno")== null) {
			%><script type="text/javascript">
		            alert('당사 사원만 접근 가능한 페이지 입니다.');
		            location.replace('login.jsp');
		        </script>
		        <%
		}
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);


			while(rs.next()){
	%>
				<tr>
					<td width="50" align="center"><%=rs.getString("ANN_NUM") %></td>
					<td width="500" align="center"><a href="view2.jsp?no=<%=rs.getString("ANN_NUM")%>"><%=rs.getString("TITLE") %></a></td>
					<td width="100" align="center">익명</td>
					<td width="200" align="center"><%= sdf.format(rs.getTimestamp("ann_date"))%></td>
					<td width="50" align="center"><%=rs.getString("HIT") %></td>
					<td width="50" align="center"><%=rs.getString("LIKE_CNT") %></td>
				</tr>
				
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
		</table>
		
		<center><input type="button" value="글쓰기" onclick="location.href='write2.jsp'"/></center>
</body>
</html>