package com.niit.DaoImple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.niit.Bean.User;
import com.niit.DbConnection.SqlConnect;

public class UserImple implements User{
	
	Connection con = null;

	public int addUser(String userName, String mail, String password) {
		try {
			con = SqlConnect.dbConnector();
			String query = "INSERT INTO user_login(email,username,password,acc_type) VALUE(?,?,?,?)";
			PreparedStatement st = con.prepareStatement(query);
			
			
			st.setString(1, mail);
			st.setString(2, userName);
			st.setString(3, password);
			st.setString(4, "Basic");
			
			int i = st.executeUpdate();
			return i;
		} catch (SQLException e) {
			System.out.println(e);
		}
		return 0;	
	}

	public boolean verifyUser(String userName, String password) {
		try {
			con=SqlConnect.dbConnector();
			String query="SELECT * FROM user_login where username=? and password=?";
				
			
			
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1,userName);
			st.setString(2, password);
			
			ResultSet rs = st.executeQuery();
				if (rs.next()) 
				{return true;}
			} 
		catch (Exception e){System.out.println(e);}
		return false;
		
	}

}
