package dao;

public class PostDao extends DB {

	// 1. db 연결
	public PostDao() {
		super();
	}
	
	// PostDao 를 호출하기 위한 생성자 
	public static PostDao postDao = new PostDao();

	public static PostDao getPostDao() {
		return postDao;
	}
	
	// 2. post 등록하는 메소드
	
	public boolean createPost() {
		
		String sql ="INSERT INTO post(post_no, user_no, post_content, post_date) values(?,?,?,?)";
		
		return false;
	}
	

}
