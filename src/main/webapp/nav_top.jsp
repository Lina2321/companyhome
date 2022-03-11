<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>head</title>
</head>
<body>
<% if(session != null && session.getAttribute("user_empno") != null) {
	session = request.getSession();
	%>
	<div style="text-align:right;margin-right:50px; padding-top:20px;font-family:ONE-Mobile-Regular; color: #626262;">
	안녕하세요 <% out.print(session.getAttribute("user_name"));%>님!
	<button style="font-family:ONE-Mobile-Regular; color: #626262;" onclick="location.href='logout.jsp'">로그아웃</button>
	</div>
	<% } else {
		%>
		<div class="login">
		<a href="login.jsp">로그인</a><a href="memberInsert.jsp">/회원가입</a>
	</div>
	<% } %>
	
	<header>
		<div class="logo">
			<a href=main.jsp><img src="logo.jpg" style="width: 200px"></a>
		</div>
		
			<ul class="menu">
				<li><a href=history.jsp>|&nbsp;&nbsp;회사소개&nbsp;&nbsp;|</a></li>
				<li><a href=calendar.jsp>|&nbsp;&nbsp;행사 및 휴가
						현황&nbsp;&nbsp;|</a></li>
				<li><a href=notice.jsp>|&nbsp;&nbsp;공지사항&nbsp;&nbsp;|</a></li>
				<li><a href=board_ann.jsp>|&nbsp;&nbsp;익명게시판&nbsp;&nbsp;|</a></li>
				
				<li>
				<a href=mypage.jsp><i class="fa-solid fa-id-card"></i></a>
			</li>
			</ul>
		

	</header>
</body>
</html>