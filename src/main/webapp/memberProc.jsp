<%@page import="company.biz.MemberService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- signin의 form의 실행 --%>

    
    <%
    request.setCharacterEncoding("UTF-8");
    %>
    
    <%-- member가 참조하는 객체, Member 객체의 모든 setter 메소드 호출 --%>
    <jsp:useBean id="member" class="company.beans.Member" />
    
    <jsp:setProperty property="*" name="member" />
    
    <%-- MemberService 객체는 실제 회원에 대한 서비스를 처리하는 객체,
    MemberService 객체의 회원가입 서비스는 memberinsert() 메소드에서 처리됨 --%>
    <%
    MemberService service = new MemberService();
    service.memberInsert(member);
    
    RequestDispatcher rd = request.getRequestDispatcher("memberOutput.jsp");
    rd.forward(request,response);
    %>
    
    <%-- service.memberInsert() 메소드 실행이 완료된 다음에 실행되는 부분,
    처리 결과 페이지로 이동하기 위해 RequestDispatcher 객체를 생성후
    forward() 메소드로 이동한다.--%>