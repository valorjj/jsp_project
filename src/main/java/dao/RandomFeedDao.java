package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.like;

public class RandomFeedDao extends DB {

	
	
	
	// �Խù����� ���ƿ� ������ post_no ��������
		// ������ post_no�� �̿��� post_media ���̺��� medias_no ��������
		// ������ medias_no�� �̿��� medias ���̺��� content_url ��������
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
