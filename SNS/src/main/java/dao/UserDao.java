package dao;

import dto.User;

public class UserDao extends DB {

	public UserDao() {
		super();

	}

	public static UserDao userDao = new UserDao();

	public static UserDao getuserDao() {
		return userDao;
	}

	// 1. 회원가입 메소드
	public boolean usersignup(User user) {

		String sql = "insert into user(user_id,user_password,user_email,user_phone,user_name,user_gender,user_age) values(?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, user.getUser_id());
			ps.setString(2, user.getUser_password());
			ps.setString(3, user.getUser_email());
			ps.setString(4, user.getUser_phone());
			ps.setString(5, user.getUser_name());
			ps.setString(6, user.getUser_gender());
			ps.setInt(7, user.getUser_age());
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	// 2. 아이디 체크 메소드
	public boolean idcheck(String userid) {

		String sql = "select user_id from user where user_id = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, userid);
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			} // 아이디 존재함
		} catch (Exception e) {
		}
		return false; // 아이디 존재하지 않음
	}

	// 3. 로그인 체크 메소드
	public boolean login(String id, String password) {
		String sql = "select * from user where user_id =? and user_password = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, password);
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
		}
		return false;
	}
	
	// 회원번호 검색 메소드 
	public int getmembernum( String id) {
		
		String sql ="select user_no from user where u_id=?";
		try {
			ps =con.prepareStatement(sql); ps.setString(1, id);
			rs = ps.executeQuery(); 
			if( rs.next() ) { return rs.getInt(1); }
		}catch (Exception e) {} return 0;
		
	}
	
	// 4. 회원탈퇴 메소드
	
	// 5. 회원정보 출력 메소드
	
	// 6. 회원정보 수정 메소드
	
	// 7. 회원버놓 검색 메소드
	
	// 8. 회원아이디 검색 메소드


}
