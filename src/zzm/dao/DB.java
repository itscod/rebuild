
package zzm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import zzm.model.UserName;
import zzm.model.User;


public class DB implements ServletRequestAware {

	private String driverName = "com.mysql.jdbc.Driver";

	private String url = "jdbc:mysql://localhost:3306/fruit_sale";

	private String username = "root";

	private String password = "1708030255";

	private Connection conn = null;

	private Statement st = null;

	private ResultSet rs = null;

	private HttpServletRequest request;

	public DB() {

	}

	public String getDriverName() {

		return driverName;

	}

	public void setDriverName(String driverName) {

		this.driverName = driverName;

	}

	public String getUrl() {

		return url;

	}

	public void setUrl(String url) {

		this.url = url;

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

	@Override

	public void setServletRequest(HttpServletRequest hsr) {

		// TODO Auto-generated method stub

		request = hsr;

	}

	public Statement getStatement() {

		try {

			Class.forName(getDriverName());

			conn = DriverManager.getConnection(url, username, password);

			return conn.createStatement();

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	//通过用户查找userinfo表的方法
	public ResultSet selectMess(HttpServletRequest request, String userName) {

		try {

			String sql = "select * from userinfo where userName='" + userName + "'";

			st = getStatement();

			return st.executeQuery(sql);

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	//将username查找的所有信息放入listName
	public String myMessage(HttpServletRequest request, String userName) {

		try {

			ArrayList listName = null;

			HttpSession session = request.getSession();
			
			listName = new ArrayList();

			rs = selectMess(request, userName);

			while (rs.next()) {

				User mess = new User();
				
				mess.setUserID(rs.getString("userID"));
				
				mess.setUserName(rs.getString("userName"));
				
				mess.setPassword(rs.getString("password"));

				mess.setSex(rs.getString("sex"));

				mess.setUserPhone(rs.getString("userPhone"));

				mess.setUserPress(rs.getString("userPress"));
				
				listName.add(mess);

				session.setAttribute("MyMess", listName);
				
				session.setAttribute("role",rs.getString("role"));

			}

			return "ok";

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	//通过username，password查找userinfo的方法
	public ResultSet selectLogin(HttpServletRequest request, String userName,

			String password) {

		try {

			String sql = "select * from userinfo where userName='" + userName

					+ "' and password='" + password + "'";

			st = getStatement();

			return st.executeQuery(sql);

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	//通过username，password查找是否有此用户，查出存入listname
	public String myLogin(HttpServletRequest request, String userName) {

		try {

			ArrayList listName = null;

			HttpSession session = request.getSession();

			listName = new ArrayList();

			rs = selectMess(request, userName);

			if (rs.next()) {

				rs = selectMess(request, userName);

				while (rs.next()) {

					UserName mess=new UserName();

					mess.setUserName(rs.getString("userName"));

					mess.setPassword(rs.getString("password"));

					listName.add(mess);

					session.setAttribute("userName",listName);
					session.setAttribute("role",rs.getString("role"));

				}

			} else {

				session.setAttribute("userName", listName);
				session.setAttribute("role",rs.getString("role"));

			}
			
			

			return "ok";

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	//判断用户是否存在
	public String addList(HttpServletRequest request, String userName) {

		String sure = null;

		String login = myLogin(request, userName);

		if (login.equals("ok")) {

			sure = "ok";

		} else {

			sure = null;

		}

		return sure;

	}

	//注册时插入数据的方法
	public String insertMess(HttpServletRequest request, String userName,

			String password, String sex, String userPhone,

			String userPress) {

		try {

			String sure = null;

			rs = selectMess(request, userName);

			if (rs.next()) {

				sure = "one";

			} else {

				String sql = "insert into userinfo(userName,password,sex,userPhone,userPress,role)"+
							" values('"+userName+"','"+password+"','"+sex+"','"+userPhone+"','"+userPress+"','0')";

				st=getStatement();

				int row=st.executeUpdate(sql);

				if(row==1){

					String mess=myMessage(request, userName);

					if(mess.equals("ok")){

						sure="ok";

					}else{

						sure=null;

					}

				}else{

					sure=null;		

				}

			}

			return sure;

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}
	
	
	public String insertAdmin(HttpServletRequest request, String userName,

			String password, String sex, String userPhone,

			String userPress) {

		try {

			String sure = null;

			rs = selectMess(request, userName);

			if (rs.next()) {

				sure = "one";

			} else {

				String sql = "insert into userinfo(userName,password,sex,userPhone,userPress,role)"+
							" values('"+userName+"','"+password+"','"+sex+"','"+userPhone+"','"+userPress+"','1')";

				st=getStatement();

				int row=st.executeUpdate(sql);

				if(row==1){

					String mess=myMessage(request, userName);

					if(mess.equals("ok")){

						sure="ok";

					}else{

						sure=null;

					}

				}else{

					sure=null;		

				}

			}

			return sure;

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

}

