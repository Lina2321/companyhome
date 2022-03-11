package company.biz;

//회원에 관한 서비스 처리를 담당하기 위해 만든 클래스 파일

import company.beans.Member;
import company.dao.MemberDAO;

public class MemberService {
	
	MemberDAO dao = new MemberDAO();
	
	public void memberInsert(Member member) {
		dao.insertMember(member);
	}

}
