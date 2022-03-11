<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 회원가입 완료 후 최종적으로 띄워질거 --%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "company.dev.vo.MemberVO" %>



<html>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>마이페이지</title>
<meta charset='utf-8'>
<link rel="stylesheet" type="text/css" href="signin.css">
<link rel="stylesheet" type="text/css" href="main_c.css">
<link rel="stylesheet" type="text/css" href="memberInsertOutput.css">
<script src="https://kit.fontawesome.com/cc268d4c6a.js"
	crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="nav_top2.jsp"/>
      <div class="header2" style="padding-top: 4%;">
			<center><span>내 정보 확인</span></center>
	</div>
<%
      // 1. JDBC 드라이버 로딩
      Class.forName("oracle.jdbc.driver.OracleDriver");
		
  
      Connection conn = null; // DBMS와 Java연결객체
      Statement stmt = null;
      Statement stmt2 = null; // SQL구문을 실행
      ResultSet rs = null; // SQL구문의 실행결과를 저장
      ResultSet rs2 = null;
      String value=null;
      String name = (String)session.getAttribute("user_name");
      String empno = (String)session.getAttribute("user_empno");
      

  
      try
      {
            String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:ORCL";
            String dbUser = "C##LINAJUNG";
            String dbPass = "1234";
   
            String query = "SELECT * FROM member WHERE name = '"+name+"'";
            String query2 = "SELECT TO_CHAR(ROUND(AVG(SALARY),0),'999,999,999') FROM SALARY WHERE EMPNO='"+empno+"' GROUP BY EMPNO";

            
           
   
            // 2. 데이터베이스 커넥션 생성
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
   
            // 3. Statement 생성
            stmt = conn.createStatement();
            stmt2 = conn.createStatement();
   
            // 4. 쿼리 실행
            rs = stmt.executeQuery(query);
            rs2 = stmt2.executeQuery(query2);

            // 5. 날짜 형태 가공
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
            		<td><%= rs.getString("dept") %></td>
            	</tr>
            	<tr>	
            		<th scope="row" class="tht" style="background:#eee;">직급</th>
            		<td><%= rs.getString("position") %></td>
            	</tr>
            	<tr>	
            		<th scope="row" class="tht" style="background:#eee;">예상 퇴직금</th>
            		<td><% if (rs2.next()) {value = rs2.getString(1);}%><%=rs2.getString(1) %>&nbsp;원</td>
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