<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
	request.setCharacterEncoding("UTF-8");

	String empno = request.getParameter("empno");
	String pw = request.getParameter("pw");
    // DB연결에 필요한 변수 선언
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	String uempno = "C##LINAJUNG";
	String upw = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from member where empno = ? and password = ?";
	
	try{
		// 드라이버 호출
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uempno, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,empno);
		pstmt.setString(2, pw);
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){ 
			empno = rs.getString("empno");
			String name = rs.getString("name");
			String dept = rs.getString("dept");
			String position = rs.getString("position");
		
			session.setAttribute("user_empno", empno);
			session.setAttribute("user_name", name);
			session.setAttribute("user_dept", dept);
			session.setAttribute("user_position", position);
			%>
			 <script type="text/javascript">
	            alert('환영합니다.');
	            location.replace('main.jsp');
	        </script>
			<%
		} else{ // 로그인 실패
			%>
			 <script type="text/javascript">
            alert('아이디 혹은 비밀번호가 잘못되었습니다.');
            location.replace('login.jsp');
        	</script>
        	<%
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("login.jsp"); // 에러가 난 경우도 리다이렉트
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
 %>