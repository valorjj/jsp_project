package dao;

import java.util.ArrayList;

import dto.like;

public class RandomFeedDao extends DB {

	
	
	
	// 게시물들의 좋아요 개수와 post_no 가져오기
		// 가져온 post_no를 이용해 post_media 테이블에서 medias_no 가져오기
		// 가져온 medias_no를 이용해 medias 테이블에서 content_url 가져오기
	public ArrayList<like> getrandomfeed() {
		
		ArrayList<like> likes = new ArrayList<like>();
		String sql = "select count(*) from like group by post_no order by desc";
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				like like = new like(rs.getInt(1), rs.getInt(2));
				likes.add(like);
				
				for(int i = 0;  i < likes.size(); i++) {
				sql = "select medias_no from post_media where post_no ="+rs.getInt(1);
				ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				
				
				}
				
				
			}
				return likes;
		} catch (Exception e) {} return null;
	}
}
