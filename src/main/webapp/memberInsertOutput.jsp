<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 회원가입 완료 후 최종적으로 띄워질거 --%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import = "company.dev.vo.MemberVO" %>



<html>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>사원 정보 확인</title>
<meta charset='utf-8'>
<link rel="stylesheet" type="text/css" href="signin.css">
<link rel="stylesheet" type="text/css" href="main_c.css">
<link rel="stylesheet" type="text/css" href="memberInsertOutput.css">
<script src="https://kit.fontawesome.com/cc268d4c6a.js"
	crossorigin="anonymous"></script>
</head>
<body>
<% 
if(session != null) {
	%>
	<div class="login"><a href="login.html">로그인</a><a href="signin.html">/회원가입</a>
	</div>
	<%} %>
	<header>
		<div class="logo">
			<a href=main.html><img src="logo.jpg" style="width: 200px"></a>
		</div>
		<div class="menu">
			<ul>
				<li class="cate"><a href=history.jsp>|&nbsp;&nbsp;회사소개&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=calendar.jsp>|&nbsp;&nbsp;행사 및 휴가
						현황&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=eduvideo.jsp>|&nbsp;&nbsp;교육영상&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=notice.jsp>|&nbsp;&nbsp;공지사항&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=annboard.jsp>|&nbsp;&nbsp;익명게시판&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=mypage.jsp><i
						class="fa-solid fa-id-card"></i></a></li>
			</ul>
		</div>

	</header>
      <div class="header2" style="padding-top: 4%;">
			<center><span>사원 정보 확인</span></center>
	</div>
<%
      
      Class.forName("oracle.jdbc.driver.OracleDriver");
		
  
      Connection conn = null; // DBMS와 Java연결객체
      Statement stmt = null; // SQL구문을 실행
      ResultSet rs = null; // SQL구문의 실행결과를 저장
      String name = (String)request.getAttribute("name");
      

  
      try
      {
            String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "C##LINAJUNG";
            String dbPass = "1234";
   
            String query = "SELECT name,empno,empdate,email,deptno FROM member WHERE name = '"+name+"'";

            
           
   
            // 2. 데이터베이스 커넥션 생성
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
   
            // 3. Statement 생성
            stmt = conn.createStatement();
   
            // 4. 쿼리 실행
            rs = stmt.executeQuery(query);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            

            // 5. 쿼리 실행 결과 출력
            while(rs.next()) {
            	
%>			
			<table style="margin:0 auto; margin-top:4%">
     			<tr>
   					<th scope="row" class="tht" style="background:#eee;">이름</th>
   					<td><%= rs.getString("name") %></td>
   				</tr>
   			
   				<tr>
					<th scope="row" class="tht" style="background:#eee;">사원번호</th>
					<td><%= rs.getString("empno") %></td>
				</tr>
			
				<tr>
					<th scope="row" class="tht" style="background:#eee;">입사날짜</th>
					<td><%= sdf.format(rs.getTimestamp("empdate"))%></td>
				</tr>
			
				<tr>
					<th scope="row" class="tht" style="background:#eee;">이메일</th>
           			<td><%= rs.getString("email") %></td>
           		</tr>
           		
           		<tr>	
            		<th scope="row" class="tht" style="background:#eee;">소속 부서</th>
            		<td><%= rs.getString("deptno") %></td>
            	</tr>
            	</table>
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