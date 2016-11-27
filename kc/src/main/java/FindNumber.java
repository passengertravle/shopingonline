package main.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class FindNumber {
	public  Connection getConnection() throws SQLException,
	java.lang.ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/shoponline?characterEncoding=utf8&useSSL=false&user=root&password=root";
		String username = "root";
		String password = "root";
		Connection con = DriverManager.getConnection(url, username, password);
		return con;
	}

	public ResultSet find(String goodName) {
		ResultSet result=null;
		try {
			Connection con = getConnection();
			Statement sql_statement = con.createStatement();	
			result = sql_statement.executeQuery("select * from goods where cName='"+goodName+"'");
			return result;

		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException");
			System.err.println(e.getMessage());
		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		return result;	
	}
	

}
