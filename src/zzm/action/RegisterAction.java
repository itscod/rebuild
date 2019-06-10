package zzm.action;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao;

public class RegisterAction  extends ActionSupport implements ServletRequestAware {
	
	public String RegisterInsert(){
		
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String sex=request.getParameter("sex"); 
		String userPhone=request.getParameter("userPhone");
		String userPress=request.getParameter("userPress");
		
		Dao mydao = new Dao();
        
        String sql = "insert into userinfo(userName,password,sex,userPhone,userPress"+
        				"role) values(userName,password,sex,userPhone,userPress,'用户');";

		try {
				
	        mydao.executeUpdate(sql);
	        
	        return "register_success";
		
		} catch (Exception e) {

			e.printStackTrace();

			return null;

		}
	        
    }
	
	public void validate(){
		
	}
}
	
