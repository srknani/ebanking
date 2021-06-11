package com.bank.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataAccess {
	private final static String  URL = "jdbc:mysql://localhost:3306/bank?user=root&password=12345";
	private static Connection getCon() throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection(URL);
	}
	
	public static void add(String fname, String accNum, String gender, String ifsc, String mobileNum, String accType, String pass) throws Exception
	{
		Connection con= getCon();
		PreparedStatement statement = con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
		statement.setString(1, fname);
		statement.setString(2, accNum);
		statement.setString(3, gender);
		statement.setString(4, ifsc);
		statement.setString(5, mobileNum);
		statement.setString(6, accType);
		statement.setString(7, pass);
		statement.executeUpdate();
		System.out.println("User Registered Successfully....");
	}
	
	public static String signIn(String id, String pass) throws SQLException, ClassNotFoundException
	{
		Connection con= getCon();
		PreparedStatement statement = con.prepareStatement("select fname,accNum,pass from user where accNum=?");
		statement.setString(1, id);
		ResultSet resultSet =  statement.executeQuery();
		resultSet.next();
		
			if(id.equals(resultSet.getString("accNum")) && pass.equals(resultSet.getString("pass")))
			{
				return resultSet.getString("fname");
			}
			else
			{
				return null;
			}
	
		
	}
	
	public static User view(String accNum) throws ClassNotFoundException, SQLException
	{
		Connection con= getCon();
		PreparedStatement statement = con.prepareStatement("select * from user where accNum=?");
		statement.setString(1, accNum);
		ResultSet resultSet = statement.executeQuery();
		resultSet.next();
		 String fname = resultSet.getString("fname");
		 String gender= resultSet.getString("gender");
		 String ifsc= resultSet.getString("ifsc");
		 String mobileNum= resultSet.getString("mobileNum");
		 String accType= resultSet.getString("accType");
		 User user = new User(fname, accNum, gender, ifsc, mobileNum, accType);
		 return user;
	}
	public static void update(String fname, String accNum, String gender, String ifsc, String mobileNum, String accType) throws Exception
	{
		Connection con= getCon();
		PreparedStatement statement = con.prepareStatement("update user set fname=?, gender=?, ifsc=?, mobileNum=?,accType=? where accNum=?");
		statement.setString(1, fname);
		statement.setString(2, gender);
		statement.setString(3, ifsc);
		statement.setString(4, mobileNum);
		statement.setString(5, accType);
		statement.setString(6, accNum);
		statement.executeUpdate();
		System.out.println("Updated Successfully....");
	}
}
