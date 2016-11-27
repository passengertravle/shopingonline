package main.java;
import java.io.File;
import java.sql.*;


import java.io.BufferedInputStream; 
import java.io.BufferedOutputStream;  
import java.io.FileInputStream; 
import java.io.FileNotFoundException; 
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class AdminWorkImplement implements AdminWorkInterface {
	public  Connection getConnection() throws SQLException,java.lang.ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/shoponline?useUnicode=true&characterEncoding=utf8";
		String username = "root";
		String password = "root";
		Connection con = DriverManager.getConnection(url, username, password);
		return con;
	}
		
	@Override
	public ResultSet find(String foodName) {
		ResultSet result=null;
		try {
			Connection con = getConnection();
			Statement sql_statement = con.createStatement();
			
			result = sql_statement.executeQuery("select * from animal where cName='"+foodName+"'");
			return result;
		
		/*	while(result.next())
			{
			System.out.print(result.getString(8));
			}
			*/
		//		sql_statement.close();
		//		con.close();
		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException");
			System.err.println(e.getMessage());
		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		return result;//
	}
		
	@Override
	public Admin delete(String foodName) {
	// TODO Auto-generated method stub
		try {
			Connection con = getConnection();
			Statement sql_statement = con.createStatement();
			ResultSet result;
			sql_statement.executeUpdate("delete from animal where aID='"+foodName+"'");
		
			sql_statement.close();
			con.close();
		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException");
			System.err.println(e.getMessage());
		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		return null;
	}
		
	@Override
	public Admin add(String cName,String aSex,String aBirth,String anormalPrice,String aDescr,String apicUrl) {
	// TODO Auto-generated method stub
		try {
			Connection con = getConnection();
			Statement sql_statement = con.createStatement();
			ResultSet result;
		//		double price = Double.valueOf(anormalPrice);
			sql_statement.executeUpdate("insert into animal (aSex,aBirth,anormalPrice,aDescr,cName,apicUrl) values"+
					"('"+aSex+"','"+aBirth+"','"+anormalPrice+"','"+aDescr+"','"+cName+"','"+apicUrl+"')") ;
			sql_statement.close();
			con.close();
		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException");
			System.err.println(e.getMessage());
		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		return null;
	}
		
	public Admin modify(String aID,String aName,String value) {
	// TODO Auto-generated method stub
	try {
			Connection con = getConnection();
			Statement sql_statement = con.createStatement();
			sql_statement.executeUpdate("update animal set"+aName+"='"+value+"'where aID="
					+aID);
			String str="update animal set"+aName+"='"+value+"' where name="+aID;
			System.out.println(str);
			sql_statement.close();
			con.close();
		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException");
			System.err.println(e.getMessage());
		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		return null;
	}
		
	public Admin move(File f)throws Exception {
	// TODO Auto-generated method stub
		String name = f.getName();
		     //要拷贝的图片
		      BufferedInputStream bis = new BufferedInputStream(new FileInputStream(f));
		      //目标的地址
		      BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(new File("D:\\picture\\"+name)));
		          int val = -1; 
		          while((val=bis.read())!=-1){ 
		            
		              bos.write(val); 
		          } 
		          bos.flush(); 
		          bos.close(); 
		          bis.close();
		  		try {
		  			File newf = new File("D:\\picture\\"+name);
		  			Connection con = getConnection();
		  			Statement sql_statement = con.createStatement();
		  			int result;
		  			result = sql_statement.executeUpdate("update animal set apicUrl='"
		  					+ newf.getPath()+"' where aID=20000001");
		
		  			sql_statement.close();
		  			con.close();
		  		} catch (java.lang.ClassNotFoundException e) {
		  			System.err.print("ClassNotFoundException");
		  			System.err.println(e.getMessage());
		  		} catch (SQLException ex) {
		  			System.err.println("SQLException: " + ex.getMessage());
		  		} 
		          return null;
	}

	@Override
	public ResultSet goodFind(String goodName) {
		// TODO Auto-generated method stub
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

	@Override
	public Admin goodAdd(String gName, String gNumber, String gnormalPrice, String gpicUrl, String gDescr,
			String gBirth, String gProtect) {
		// TODO Auto-generated method stub
		try {
			Connection con = getConnection();
			Statement sql_statement = con.createStatement();
			ResultSet result;
	//		double price = Double.valueOf(anormalPrice);
			sql_statement.executeUpdate("insert into goods (gName,gNumber,gnormalPrice,gpicUrl,gDescr,gBirth,gProtect) values"+
					"('"+gName+"','"+gNumber+"','"+gnormalPrice+"','"+gpicUrl+"','"+gDescr+"','"+gBirth+"','"+gProtect+"')") ;
			sql_statement.close();
			con.close();
		} catch (java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException");
			System.err.println(e.getMessage());
		} catch (SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		return null;
	}

	@Override
	public Admin goodModify(String gID,String gName,String value) {
		// TODO Auto-generated method stub
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
		return null;
	}

	@Override
	public Admin modify(String foodName) {
		// TODO Auto-generated method stub
		return null;
	}
	public static void main(String args[]){
		AdminWorkImplement admin = new AdminWorkImplement();
		admin.goodAdd("猫砂","200","50","","","1970-02-01","");
	}



	}


