package com.data.projectX;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ActorsDAOImplement implements ActorsDAO {
	static Connection conn;
	static PreparedStatement pre;
	
	public int insertActors(Actors ac) {
		int status=0;
		try {
			conn=MyConnectionDriver.getCon();
			pre=conn.prepareStatement("insert into actors values(?,?,?)");
			pre.setString(1, ac.getUserName());
			pre.setString(2, ac.getName());
			pre.setString(3, ac.getPassword());
			status=pre.executeUpdate();
			conn.close();
			
		}catch(Exception ex) {
			System.out.println(ex);
		}
		return status;
	}

	@Override
	public Actors getActors(String userName, String password) {
		
		 Actors ac=new Actors();
		 
		try {
		    conn=MyConnectionDriver.getCon();
		    pre=conn.prepareStatement("select * from actors where userName=? and password=?");
		    pre.setString(1, userName);
		    pre.setString(2, password);
		    
		    ResultSet set= pre.executeQuery();
		    while(set.next()) {
		    	ac.setUserName(set.getString(1));
		    	ac.setPassword(set.getString(2));
		    	ac.setName(set.getString(3));
		    }
		}catch(Exception ex) {
			System.out.println(ex);
		}
		return ac;
	}
}
