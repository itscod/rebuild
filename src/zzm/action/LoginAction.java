
package zzm.action;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.DB;

public class LoginAction extends ActionSupport implements ServletRequestAware {

	private String userName;

	private String password;

	private ResultSet rs = null;

	private String message = ERROR;

	private HttpServletRequest request;

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

	@Override

	public void setServletRequest(HttpServletRequest hsr) {

		// TODO Auto-generated method stub

		request=hsr;

	}

	public void validate(){

		if(this.getUserName()==null||this.getUserName().length()==0){

			addFieldError("username", "请输入登录名字！");

		}else{

			try{

				DB mysql=new DB();

				rs=mysql.selectMess(request, this.getUserName());

				if(!rs.next()){

					addFieldError("username", "此用户尚未注册！");

				}

			}catch(Exception e){

				e.printStackTrace();

			}

		}

		if(this.getPassword()==null||this.getPassword().length()==0){

			addFieldError("password", "请输入登录密码！");

		}else{

			try{

				DB mysql=new DB();

				rs=mysql.selectMess(request, this.getUserName());

				if(rs.next()){

					rs=mysql.selectLogin(request, this.getUserName(), this.getPassword());

				}

				if(!rs.next()){

					addFieldError("password", "登录密码错误！");

				}

			}catch(Exception e){

				e.printStackTrace();

			}

		}

	}

	public String execute() throws Exception{

		DB mysql=new DB();
		
		String role = (String)request.getSession().getAttribute("role");

		String add=mysql.addList(request,this.getUserName());

		if(add.equals("ok")){
			
			if(role!=null || role.equals("0")){
					
				message="adminLogin";
				
			}else {
				
				message="userLogin";
				
			}
			System.out.println(message);
			/*
			 * //记录用户登录信息 Map<String, Object> attibutes =
			 * ActionContext.getContext().getSession();
			 * 
			 * attibutes.put("userName", userName); attibutes.put("password", password);
			 */

		}
		
		return message;

	}

}
