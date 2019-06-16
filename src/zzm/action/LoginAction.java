
package zzm.action;

import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.UserDaoImpl;
import zzm.model.User;

public class LoginAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2869637657543843744L;

	private User user;
	
	private String userName;
	
	private String password;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	/**

	 * 根据用户名查找一条数据

	 * @return

	 * @throws Exception

	 */

	public String findOne() throws Exception{
		
		UserDaoImpl userdao = new UserDaoImpl();

		this.setUser(userdao.findOne(this.getUserName()));

		if(this.getUser()!=null){

			return "findOne";

		}else{

			return "error";

		}

	}
	/**

	 * 登录验证

	 * @return

	 * @throws Exception

	 */

	
	public String login() throws Exception{
		
		UserDaoImpl userdao = new UserDaoImpl();
		
		this.setUser(userdao.login(this.getUserName(), this.getPassword()));
		
		if(user.getUserName() != null){

			
			  if(user.getRole().equals("0")) {
			  
			  return "userlogin";
			  
			  }else {
			  
			  return "adminlogin";
			  
			  }
			 

		}else{

			return "loginerror";

		}

		

	}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		








	

}
