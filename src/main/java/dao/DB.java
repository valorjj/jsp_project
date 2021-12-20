package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {

	
	protected Connection con;
	protected ResultSet rs;
	protected PreparedStatement ps;
	
	public DB() {
		try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sns?serverTimezone=UTC", "root","1234");
		
		} 
		catch (Exception e) {}
	}
}
