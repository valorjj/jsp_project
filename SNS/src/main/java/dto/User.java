package dto;

public class User {

	// 1. 필드 생성
	private int user_no;
	private String user_id;
	private String user_password;
	private String user_email;
	private String user_phone;
	private String user_name;
	private String user_gender;
	private int user_age;
	private String user_date;

	// 2. 빈생성자
	public User() {
		// TODO Auto-generated constructor stub
	}

	// 3. 자동 전체 생성자
	public User(int user_no, String user_id, String user_password, String user_email, String user_phone,
			String user_name, String user_gender, int user_age, String user_date) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.user_name = user_name;
		this.user_gender = user_gender;
		this.user_age = user_age;
		this.user_date = user_date;
	}

	// 3-2. 회원가입용 생성자
	public User(String user_id, String user_password, String user_email, String user_phone, String user_name,
			String user_gender, int user_age) {
		super();
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_email = user_email;
		this.user_phone = user_phone;
		this.user_name = user_name;
		this.user_gender = user_gender;
		this.user_age = user_age;
	}

	// 4. Giiter / Setter
	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public int getUser_age() {
		return user_age;
	}

	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}

	public String getUser_date() {
		return user_date;
	}

	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}

}
