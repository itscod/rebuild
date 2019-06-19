
package zzm.action;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.UserDao;
import zzm.model.User;

public class RegisterAction extends ActionSupport {
	
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		private User user;
	
		/**

		 * 增加一个用户数据

		 * @return

		 * @throws Exception

		 */

		public String addUser() throws Exception{
			
			UserDao userdao = new UserDao();
			
			int i=userdao.saveUser(user);

			if(i>0){

				return "add";

			}else{

				return "error";

			}

		}
		
		//查找用户名信息
		public String findOne() throws Exception{
			
			User user = new User();
			
			UserDao userdao = new UserDao();
			
			user = userdao.findOne(user.getUserName());

			String result = "true";
			
			if (user!=null ) {
		        //说明账号存在
			      result = "false";
			}
			           //输出到界面
			 HttpServletResponse response = ServletActionContext.getResponse();
			 response.setContentType("text/html");
		     ServletOutputStream outputStream = response.getOutputStream();
		     outputStream.write(result.getBytes());
			 outputStream.close();
			 return NONE;

		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}
	
	
	

}
