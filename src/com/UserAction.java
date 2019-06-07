
package com;

import java.sql.*;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
private Dao dao = new Dao();
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
public String login() {
String sql = "select * from userinfo where userName='" + getUserName()+"' and password ='"+getPassword()+"'";
ResultSet rS = dao.executeQuery(sql);
try {
if (rS.next()) {
return "loginin";
}
return "loginout";
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
return "loginout";
}
}
public String regist() {
String sql = "insert into userinfo(userName,password,isCheck) values('"+getUserName()+"','"+getPassword()+"','0')";
int i = dao.executeUpdate(sql);
if (i > -1) {
return "success";
}
return "error";
}
//通用的执行方法
//	public String execute() throws Exception {
//	if (getUsername().equals("scott") && getPassword().equals("tiger")) {
//	System.out.println("我是success");
//	return "success";
//	}
//
//	else {
//	System.out.println("我是error");
//	return "error";
//	}
//	}
}