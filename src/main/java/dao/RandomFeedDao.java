package dao;

import java.util.ArrayList;

import dto.like;

public class RandomFeedDao extends DB {

	
	
	
	// �Խù����� ���ƿ� ������ post_no ��������
		// ������ post_no�� �̿��� post_media ���̺��� medias_no ��������
		// ������ medias_no�� �̿��� medias ���̺��� content_url ��������
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
