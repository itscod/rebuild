package zzm.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	/*
	 * @SuppressWarnings("unchecked")
	 * 
	 * @Override
	 */
	    public String execute() throws Exception {
	    	
	        ActionContext.getContext().getSession().remove("userName"); 
	        
	        return Action.SUCCESS; 
	    } 
	    
}
