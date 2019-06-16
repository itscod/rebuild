package zzm.action;

import java.util.List;

import zzm.dao.UserDaoImpl;
import zzm.model.User;

public class AdminAction {
	
	private User user;
	
	private List<User> list;
	
	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}

	/**

	 * 查找所有管理员数据

	 * @return

	 * @throws Exception

	 */

	public String findAll() throws Exception{
		
		UserDaoImpl userdao = new UserDaoImpl();

		this.setList(userdao.findAllAdmin());

		if(this.getList()!=null&& !this.getList().isEmpty()){

			return "findAll";

		}else{

			return "error";

		}
	}
	
	/**

	 * 增加一个管理员数据

	 * @return

	 * @throws Exception

	 */

	public String addAdmin() throws Exception{
		
		UserDaoImpl userdao = new UserDaoImpl();

		int i=userdao.saveAdmin(user);

		if(i>0){

			return "add";

		}else{

			return "error";

		}

	}
	
	/**

	 * 删除一个管理员数据

	 * @return

	 * @throws Exception

	 */

	public String delete() throws Exception{
		
		User user = new User();
		
		UserDaoImpl userdao = new UserDaoImpl();

		int i=userdao.delete(user.getUserName());

		if(i>0){

			return "delete";

		}else{

			return "error";

		}

	}
}
