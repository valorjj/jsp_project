package dto;

public class Tag {
	private int user_no;
	private String user_id;
	private int tag_no;
	private String tag_id;
	
	public Tag() {}

	public Tag(int user_no, String user_id, int tag_no, String tag_id) {
		this.user_no = user_no;
		this.user_id = user_id;
		this.tag_no = tag_no;
		this.tag_id = tag_id;
	}

	public Tag(int user_no, int tag_no) {
		this.user_no = user_no;
		this.tag_no = tag_no;
	}
	

	public Tag(int tag_no, String tag_id) {
		this.tag_no = tag_no;
		this.tag_id = tag_id;
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

	public int getTag_no() {
		return tag_no;
	}

	public void setTag_no(int tag_no) {
		this.tag_no = tag_no;
	}

	public String getTag_id() {
		return tag_id;
	}

	public void setTag_id(String tag_id) {
		this.tag_id = tag_id;
	}
	
	
	
	
	
	
}
