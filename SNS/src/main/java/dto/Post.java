package dto;

public class Post {

	private int post_no;
	private int user_no;
	private String post_content;
	private String post_date;

	public Post() {
	}
	
	public Post(int post_no, int user_no, String post_content, String post_date) {
		this.post_no = post_no;
		this.user_no = user_no;
		this.post_content = post_content;
		this.post_date = post_date;
	}

	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getPost_content() {
		return post_content;
	}

	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}

	public String getPost_date() {
		return post_date;
	}

	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}

}
