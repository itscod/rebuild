package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

public class Dao {
	
	static String driverName = "com.mysql.jdbc.Driver";

	static String url = "jdbc:mysql://localhost:3306/fruit_sale";

	static String username = "root";

	static String password = "1708030255";

	static Connection conn = null;

	public static Connection getConn(){
		   try{
			   Class.forName(getDriverName());
			   conn = DriverManager.getConnection(url,username,password);
		   }catch(Exception e){
			   e.printStackTrace();
		   }
		   return conn;
	   }
	   
	   
	   
	   public static void  closeConn(Connection conn){
		   try{
			   if(conn!=null || !conn.isClosed()){
				   conn.close();
			   }
		   }catch(Exception e){
			   e.printStackTrace();
		   }
	   }

	public Dao() {

	}



	public static String getUrl() {
		return url;
	}



	public static void setUrl(String url) {
		Dao.url = url;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public static String getDriverName() {
		return driverName;
	}



	public static void setDriverName(String driverName) {
		Dao.driverName = driverName;
	}

	

}