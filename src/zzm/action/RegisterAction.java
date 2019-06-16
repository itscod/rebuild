
package zzm.action;

import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.UserDaoImpl;
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
			
			UserDaoImpl userdao = new UserDaoImpl();

			int i=userdao.saveUser(user);

			if(i>0){

				return "add";

			}else{

				return "error";

			}

		}
		
	
	
	

}
