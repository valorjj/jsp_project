package dto;

public class like {
	private int like_no;
	private int user_no;
	private String user_id;
	private int post_no;
	private int comment_no;
	private String like_date;
	
	private int like_count;
	
	// ±øÅë
	public like() {
	
	}
	
	// ·£´ıÇÇµå
	public like(int post_no, int like_count) {
		this.post_no = post_no;
		this.like_count = like_count;
	}

	// Ç®»ı¼º
	public like(int like_no, int user_no, String user_id, int post_no, int comment_no, String like_date, int like_count) {
		this.like_no = like_no;
		this.user_no = user_no;
		this.user_id = user_id;
		this.post_no = post_no;
		this.comment_no = comment_no;
		this.like_date = like_date;
		this.like_count = like_count;
	}

	public int getLike_no() {
		return like_no;
	}

	public void setLike_no(int like_no) {
		this.like_no = like_no;
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

	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

	public int getComment_no() {
		return comment_no;
	}

	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}

	public String getLike_date() {
		return like_date;
	}

	public void setLike_date(String like_date) {
		this.like_date = like_date;
	}

	public int getLike_count() {
		return like_count;
	}

	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
	
	
}
