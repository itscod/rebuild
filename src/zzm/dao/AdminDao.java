package zzm.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import zzm.model.User;

public class AdminDao extends BaseDao{

	//通过用户查找userinfo表的方法
		public ResultSet selectMess(HttpServletRequest request, String userName) {

			try {

				String sql = "select * from userinfo where userName='" + userName + "'";

				pst = prepareStatement();

				return pst.executeQuery(sql);

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

					mess.setRole(rs.getString("role"));



					listName.add(mess);

					session.setAttribute("MyMess", listName);

				}

				return "ok";

			} catch (Exception e) {

				e.printStackTrace();

				return null;

			}

		}
	
	//注册时插入数据的方法
		public String insertMess(HttpServletRequest request, String userName,

				String password, String sex, String userPhone,

				String userPress) {

			try {

				String sure = null;

				rs = selectAdmin(request, userName);

				if (rs.next()) {

					sure = "one";

				} else {

					String sql = "insert into userinfo(userName,password,sex,userPhone,userPress,role)"+
								" values('"+userName+"','"+password+"','"+sex+"','"+userPhone+"','"+userPress+"','1')";

					pst=g();

					int row=pst.executeUpdate(sql);

					if(row==1){

						String admin=admin(request, userName);

						if(admin.equals("ok")){

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
