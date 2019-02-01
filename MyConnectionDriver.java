package com.data.projectX;

import java.sql.Connection;
import java.sql.DriverManager;


public class MyConnectionDriver implements MyConnection {
	
    static Connection conn=null;
	
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(connUrl,username,password);
		}catch(Exception ex) {
			System.out.println(ex);
		}
		return conn;
	}
}
