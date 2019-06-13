
package zzm.action;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import zzm.dao.DB;

public class RegisterAction extends ActionSupport implements

		ServletRequestAware {

	private String userName;

	private String password;

	private String passw_confirm;

	private String sex;

	private String userPhone;

	private String userPress;

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

	public String getPassw_confirm() {
		return passw_confirm;
	}

	public void setPassw_confirm(String passw_confirm) {
		this.passw_confirm = passw_confirm;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserPress() {
		return userPress;
	}

	public void setUserPress(String userPress) {
		this.userPress = userPress;
	}


	@Override

	public void setServletRequest(HttpServletRequest hsr) {

		// TODO Auto-generated method stub

		request = hsr;

	}

	public void validate() {

		if (this.getUserName() == null || this.getUserName().length() == 0) {

			addFieldError("username", "登录名字不允许为空！");

		} else {

			try {

				DB mysql = new DB();

				rs = mysql.selectMess(request, this.getUserName());

				if (rs.next()) {

					addFieldError("userName", "此登录名字已存在！");

				}

			} catch (Exception e) {

				e.printStackTrace();

			}

		}

		if (this.getPassword() == null || this.getPassword().length() == 0) {

			addFieldError("password", "登录密码不允许为空！");

		}

		if (this.getPassw_confirm() == null || this.getPassw_confirm().length() == 0) {

			addFieldError("passw_confirm", "重复密码不允许为空！");

		}

		if (!(getPassw_confirm().equals(getPassw_confirm()))) {

			addFieldError("passw_confirm", "两次密码不一致！");

		}

		if (this.getUserPhone() == null || this.getUserPhone().length() == 0) {

			addFieldError("userPhone", "用户电话不允许为空！");

		}

		if (this.getUserPress() == null || this.getUserPress().length() == 0) {

			addFieldError("userPress", "用户地址不允许为空！");

		}

	}

	public String execute() throws Exception {

		DB mysql = new DB();

		String mess = mysql.insertMess(request, this.getUserName(),

				this.getPassword(), this.getSex(), this.getUserPhone(), this.getUserPress());

		if (mess.equals("ok")) {

			message = "register_success";

		} else if (mess.equals("one")) {

			message = INPUT;

		}

		return message;

		// return "success";

	}

}
