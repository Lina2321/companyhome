package company.dao;

import java.sql.*;

import company.beans.Member;

public class MemberDAO {
	
	public Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","C##LINAJUNG","1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void insertMember(Member member) {
		try {
			Connection con = this.getConnection();
			PreparedStatement pstmt = con.prepareStatement("update member set email = ?, password = ? where name='임사장'");
			pstmt.setString(1,member.getEmail());
			pstmt.setString(2,member.getPassword());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
