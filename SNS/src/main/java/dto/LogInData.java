package dto;

public class LogInData {

	private int user_no;
	private String user_id;

	public LogInData(int user_no, String user_id) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
	}

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

}
