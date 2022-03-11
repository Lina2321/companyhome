<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
<link rel="stylesheet" type="text/css" href="main_c.css">
<link rel="stylesheet" type="text/css" href="write.css">
</head>
<body>
<jsp:include page="nav_top2.jsp"/>
<form method="post" action="write_action.jsp" >

        <select class="list_select" name="select_cate">
                    <option value="none">카테고리</option>
                   <option value="유지보수">유지보수</option>
                    <option value="인사고과">인사고과</option>
                    <option value="사내행사">사내행사</option>
                    <option value="사내교육">사내교육</option>
                    <option value="전체공지">전체공지</option>
</select>
<br>


        <table class="table2" align="center" cellpadding="2">

            <tr>
                <td>작성자</td>
                <td><input type="hidden" name="empno" value="<%=session.getAttribute("user_empno")%>"><%=session.getAttribute("user_name")%></td>

            </tr>

            <tr>
                <td>제목</td>
                <td><input type="text" name="title" size="148"></td>
            </tr>

            <tr>
                <td>내용</td>
                <td><textarea name="content" cols="139" rows="30"></textarea></td>
            </tr>

        </table>

        <center>
            <input class="button2" type="submit" value="글작성" />
            <input class="button2" type="reset" value="취소" /></td>
        </center>

    </form>
</body>
</html>