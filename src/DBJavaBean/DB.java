
package DBJavaBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import JavaBean.MyMessBean;
import JavaBean.UserNameBean;

public class DB implements ServletRequestAware {

	private String driverName = "com.mysql.jdbc.Driver";

	private String url = "jdbc:mysql://localhost:3306/fruit";

	private String username = "root";

	private String password = "root";

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

	public ResultSet selectMess(HttpServletRequest request, String userName) {

		try {

			String sql = "select * from user where userName='" + userName + "'";

			st = getStatement();

			return st.executeQuery(sql);

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	public String myMessage(HttpServletRequest request, String userName) {

		try {

			ArrayList listName = null;

			HttpSession session = request.getSession();

			listName = new ArrayList();

			rs = selectMess(request, userName);

			while (rs.next()) {

				MyMessBean mess = new MyMessBean();

				mess.setName(rs.getString("name"));

				mess.setSex(rs.getString("sex"));

				mess.setBirth(rs.getString("birth"));

				mess.setEdu(rs.getString("edu"));

				mess.setWork(rs.getString("work"));

				mess.setPhone(rs.getString("phone"));

				mess.setPlace(rs.getString("place"));

				mess.setEmail(rs.getString("email"));

				listName.add(mess);

				session.setAttribute("MyMess", listName);

			}

			return "ok";

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	public ResultSet selectLogin(HttpServletRequest request, String userName,

			String password) {

		try {

			String sql = "select * from user where userName='" + userName

					+ "' and password='" + password + "'";

			st = getStatement();

			return st.executeQuery(sql);

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

	public String myLogin(HttpServletRequest request, String userName) {

		try {

			ArrayList listName = null;

			HttpSession session = request.getSession();

			listName = new ArrayList();

			rs = selectMess(request, userName);

			if (rs.next()) {

				rs = selectMess(request, userName);

				while (rs.next()) {

					UserNameBean mess=new UserNameBean();

					mess.setUserName(rs.getString("userName"));

					mess.setPassword(rs.getString("password"));

					listName.add(mess);

					session.setAttribute("userName",listName);

				}

			} else {

				session.setAttribute("userName", listName);

			}

			return "ok";

		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}

	}

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

	public String insertMess(HttpServletRequest request, String userName,

			String password, String name, String sex, String birth,

			String nation, String edu, String work, String phone, String place,

			String email) {

		try {

			String sure = null;

			rs = selectMess(request, userName);

			if (rs.next()) {

				sure = "one";

			} else {

				String sql = "insert into user values('" + userName + "','"

						+ password + "','" + name + "','" + sex + "','" + birth

						+ "','" + nation + "','" + edu + "','" + work + "','"

						+ phone + "','" + place + "','" + email + "')";

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
