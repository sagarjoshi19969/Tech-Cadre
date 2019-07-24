package com.niit.DbConnection;


import java.sql.*;

public class SqlConnect {
	
	Connection conn=null;
	public static Connection dbConnector()
	{
	    try {
	    	
	    	String url = "jdbc:mysql://localhost:3306/resumebuilder";
	    	Class.forName ("com.mysql.jdbc.Driver").newInstance ();
	    	Connection conn = DriverManager.getConnection (url, "root", "root");
	    
	    	return conn;
	    	
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    	return null; 	
	    }
	}

}