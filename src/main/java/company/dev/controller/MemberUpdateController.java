package company.dev.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import company.dev.service.MemberService;
import company.dev.vo.MemberVO;

public class MemberUpdateController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터 추출
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		//유효성 체크
		if(name.isEmpty() || email.isEmpty() || password.isEmpty()) {
			request.setAttribute("error", "항목을 다 입력해주시기 바랍니다.");
			HttpUtil.forward(request, response, "/memberInsert.jsp");
			return;
		}
		
		//VO 객체에 데이터 바인딩
		MemberVO member = new MemberVO();
		member.setName(name);
		member.setEmail(email);
		member.setPassword(password);
		
		//Service 객체의 메소드 호출
		MemberService service = MemberService.getInstance();
		service.memberUpdate(member);
		
		//Output View 페이지로 이동
		request.setAttribute("name", name);
		HttpUtil.forward(request, response, "memberInsertOutput.jsp");
	}

}
