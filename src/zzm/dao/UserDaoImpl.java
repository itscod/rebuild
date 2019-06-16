package zzm.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import zzm.model.User;

public class UserDaoImpl {
	
	public int saveUser(User user) {

		String sql="insert into userinfo(userName,password,sex,userPhone,UserPress,role) values(?,?,?,?,?,?,?,'0')";

		int result=0;

		try{

		PreparedStatement ps=BaseDao.executePrepareStatement(sql);

		ps.setString(1, user.getUserName());

		ps.setString(2, user.getPassword());

		ps.setString(3, user.getSex());

		ps.setString(4, user.getUserPhone());

		ps.setString(5, user.getUserPress());

		//执行sql语句

		result=ps.executeUpdate();

		ps.close();

		BaseDao.close();

		}catch(SQLException e){

			e.printStackTrace();

		}

		return result;

	}
	
	
	public int saveAdmin(User user) {

		String sql="insert into userinfo(userName,password,sex,userPhone,UserPress,role) values(?,?,?,?,?,?,?,'1')";

		int result=0;

		try{

		PreparedStatement ps=BaseDao.executePrepareStatement(sql);

		ps.setString(1, user.getUserName());

		ps.setString(2, user.getPassword());

		ps.setString(3, user.getSex());

		ps.setString(4, user.getUserPhone());

		ps.setString(5, user.getUserPress());

		//执行sql语句

		result=ps.executeUpdate();

		ps.close();

		BaseDao.close();

		}catch(SQLException e){

			e.printStackTrace();

		}

		return result;

	}
	
	
	public int delete(String username) {

		String sql="delete from userinfo where name='"+username+"' and role='1'";

		int i=0;

		i=BaseDao.executeUpdate(sql);

		BaseDao.close();

		return i;

	}
	
	
	public User findOne(String userName) {

		String sql="select * from userinfo where userName='"+userName+"'";

		ResultSet rs=BaseDao.executeQuery(sql);

		User user=new User();

		try {

			if(rs.next()){
				
				user.setUserID(rs.getString("userID"));

				user.setUserName(rs.getString("userName"));

				user.setPassword(rs.getString("password"));

				user.setSex(rs.getString("sex"));

				user.setUserPhone(rs.getString("userPhone"));

				user.setUserPress(rs.getString("userPress"));

				user.setRole(rs.getString("role"));

			}

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		BaseDao.close();

		return user;

	}
	
	
	public List<User> findAllAdmin() {

			String sql="select * from userinfo where role='1'";

			List<User> list=new ArrayList<User>();

			ResultSet rs=null;

			rs=BaseDao.executeQuery(sql);

			try {

				while(rs.next()){

					User user=new User();

					user.setUserID(rs.getString("userID"));

					user.setUserName(rs.getString("userName"));

					user.setPassword(rs.getString("password"));

					user.setSex(rs.getString("sex"));

					user.setUserPhone(rs.getString("userPhone"));

					user.setUserPress(rs.getString("userPress"));

					user.setRole(rs.getString("role"));

					list.add(user);

				}

			} catch (Exception e) {

				e.printStackTrace();

			}

		return list;

	}
	
	
	public User login(String userName, String password) {

		String sql="select * from userinfo where userName='"+userName+"' and password='"+password+"'";

		ResultSet rs=BaseDao.executeQuery(sql);

		User user=new User();

		try {

			if(rs.next()){

				user.setUserID(rs.getString("userID"));

				user.setUserName(rs.getString("userName"));

				user.setPassword(rs.getString("password"));

				user.setSex(rs.getString("sex"));

				user.setUserPhone(rs.getString("userPhone"));

				user.setUserPress(rs.getString("userPress"));

				user.setRole(rs.getString("role"));
				

			}
			

		} catch (SQLException e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		BaseDao.close();

		return user;

	}
	
}
