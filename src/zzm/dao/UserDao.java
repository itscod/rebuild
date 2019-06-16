package zzm.dao;

import java.util.List;

import zzm.model.User;

public interface UserDao {

		

		/**

		 * 保存一个用户数据

		 * @param user

		 * @return

		 */

		public int save(User user);

		

		/**

		 * 根据用户名删除一个数据

		 * @param username

		 * @return

		 */

		public int delete(String userName);
		

		/**

		 * 根据用户名查找一条记录

		 * @param username

		 * @return

		 */

		public User findOne(String userName);

		

		/**

		 * 根据用户名更新一条数据

		 * @param username

		 * @return

		 */

		public int update(User user,String userName);

		

		/**

		 * 查找所有用户信息

		 * @return

		 */

		public List<User> findAll();

		

		/**

		 * 用户登录

		 * @param username

		 * @param password

		 * @return

		 */

		public User login(String userName, String password);

}

