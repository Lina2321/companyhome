<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>사원 정보 등록</title>
<meta charset='utf-8'>
<link rel="stylesheet" type="text/css" href="signin.css">
<link rel="stylesheet" type="text/css" href="main_c.css">
<script src="https://kit.fontawesome.com/cc268d4c6a.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="login">
		<a href="login.jsp">로그인</a><a href="memberInsert.jsp">/회원가입</a>
	</div>
	<header>
		<div class="logo">
			<a href=main.jsp><img src="logo.jpg" style="width: 200px"></a>
		</div>
		<div class="menu">
			<ul>
				<li class="cate"><a href=history.html>|&nbsp;&nbsp;회사소개&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=calendar.html>|&nbsp;&nbsp;행사 및 휴가
						현황&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=eduvideo.html>|&nbsp;&nbsp;교육영상&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=notice.html>|&nbsp;&nbsp;공지사항&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=annboard.html>|&nbsp;&nbsp;익명게시판&nbsp;&nbsp;|</a></li>
				<li class="cate"><a href=mypage.html><i
						class="fa-solid fa-id-card"></i></a></li>
			</ul>
		</div>

	</header>

	<div class="header1" style="padding-top: 4%;">
			<center><span>사원 정보 등록</span></center>
	</div>

	<form method="POST" action="memberUpdate.do"
		name="userInfo autocomplete="off">

		<div class="input-box-j">
			<input type="text" name="name" id="name" placeholder="사원이름" required>
			<label for="name">이름</label>
		</div>

		<div class="input-box-j">
			<input type="text" name="email" id="email" placeholder="이메일" required>
			<label for="email">이메일</label>
		</div>

		<div class="input-box-j">
			<input type="password" name="password" placeholder="비밀번호" required>
			<label for="password">비밀번호</label>
		</div>

		<br>
		<input type="submit" id="join_button" value="가입하기">
	</form>
</body>
</html>