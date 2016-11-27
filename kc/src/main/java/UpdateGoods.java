package main.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdateGoods {
	public  Connection getConnection() throws SQLException,
	java.lang.ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/shoponline?characterEncoding=utf8&useSSL=false&user=root&password=root";
		String username = "root";
		String password = "root";
		Connection con = DriverManager.getConnection(url, username, password);
		return con;
	}
	public void update(String gID,String gName,String value)
	{
		try {
			Connection con = getConnection();
			Statement sql_statement = con.createStatement();
			sql_statement.executeUpdate("update goods set"+gName+"='"+value+"'where aID="
					+gID);
			String str="update animal set"+gName+"='"+value+"' where name="+gID;
			System.out.println(str);
			sql_statement.close();
			con.close();
		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException");
			System.err.println(e.getMessage());
		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
	}

}
