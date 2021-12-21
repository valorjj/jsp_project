package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.like;

public class RandomFeedDao extends DB {

	
	
	
	// 게시물들의 좋아요 개수와 post_no 가져오기
		// 가져온 post_no를 이용해 post_media 테이블에서 medias_no 가져오기
		// 가져온 medias_no를 이용해 medias 테이블에서 content_url 가져오기
	public ArrayList<like> getrandomfeed() {
		
		ArrayList<like> likes = new ArrayList<like>();
		String sql = "select post_no, count(*) from plike group by post_no order by count(*) desc";
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				String sql2 = "select medias_no from post_media where post_no ="+rs.getInt(1);
				PreparedStatement ps2 = con.prepareStatement(sql2);
				ResultSet rs2 = ps2.executeQuery();
				if(rs2.next()) {
					String sql3 = "select content_url from medias where medias_no = "+rs2.getInt(1);
					PreparedStatement ps3 = con.prepareStatement(sql3);
					ResultSet rs3 = ps3.executeQuery();
					
					if(rs3.next()) {
						like like = new like(rs.getString(3));
						likes.add(like);
					}
				}
				
			}
				return likes;
		} catch (Exception e) {} return null;
	}
}
