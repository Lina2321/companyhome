<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
 <head>
 <meta name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
 <link rel="stylesheet" type="text/css" href="login.css"> 
 <link rel="stylesheet" type="text/css" href="main_c.css"> 
</head>

 <body>
 <header>
 <h2>로그인</h2>
 </header>
 
 <form method='POST' action='login_action.jsp' align='center'>

 <div class="input-box">             
<input id="empno" name="empno" type="text" placeholder="사원번호">
<label for="empno">사원번호</label>
</div>

<div class="input-box">
<input id="password" name="pw" type="password" placeholder="비밀번호">
<label for="password">비밀번호</label>
</div>
<div id="forgot" style=" cursor: pointer;" onclick="location.href='find_pw.jsp';">비밀번호 찾기</div>
<input type="submit" value="로그인">
</form>

     <div align='center'>
     사원 등록을 하셨나요?  <button id="join" onclick="location.href='./memberInsertOutput.jsp'">회원가입</button><br><br>
         사원 번호가 기억이 안나시나요? <button id="find_id" name="find_id" onclick="location.href='find_id.jsp'">아이디 찾기</button>
     </div>

     </form>
 </body>

 </html>