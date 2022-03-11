package company.dev.service;

import company.dev.dao.MemberDAO;
import company.dev.vo.MemberVO;

public class MemberService {
	
	private static MemberService service = new MemberService();
	public MemberDAO dao = MemberDAO.getInstance();
	
	private MemberService() {}
	public static MemberService getInstance() {
		return service;
	}
	
	public void memberUpdate(MemberVO member) {
		dao.memberUpdate(member);
	}

}
