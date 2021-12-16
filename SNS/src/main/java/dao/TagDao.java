package dao;

import java.util.ArrayList;

import dto.Tag;

public class TagDao extends DB {
	public TagDao() {
	super();
	}
	public static TagDao tagDao  = new TagDao(); 
	public static TagDao getTagDao() { return tagDao;}
	
	
	
	public ArrayList<Tag> getTaglist(String key, String keyword){
		ArrayList<Tag> tags = new ArrayList<Tag>();
		String sql = null;
		if(key != null && keyword !=null) {
			sql = "select * from tags where " +key+ " = '" +keyword +"'";
		} else {
			sql = "select * from tags";
		}
		try {
			ps = con.prepareStatement(sql);
			rs= ps.executeQuery();
			while(rs.next()) {
				Tag tag  = new Tag(
						rs.getInt(1),
						rs.getInt(2));
				tags.add(tag);
				
			}
			return tags;
		} catch (Exception e) {} return null;
	}
}
