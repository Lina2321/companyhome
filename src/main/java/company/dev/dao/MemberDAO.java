package company.dev.dao;

import java.sql.*;
import company.dev.vo.MemberVO;

public class MemberDAO {
	
	private static MemberDAO dao = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		return dao;
	}
	
	public Connection connect() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","C##LINAJUNG","1234");
		} catch (Exception ex) {
			System.out.println("오류발생 : " + ex);
		}
		return conn;
	}
	
	public void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if(rs != null) {
			try {
				ps.close();
			} catch (Exception ex) {
				System.out.println("오류발생" + ex);
			}
		}
	}
	
	public void memberUpdate(MemberVO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("update member set email = ?, password = ? where name= ?");
			pstmt.setString(1,member.getEmail());
			pstmt.setString(2,member.getPassword());
			pstmt.setString(3,member.getName());
			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("오류 발생 : " + ex);
		}
	}

}
