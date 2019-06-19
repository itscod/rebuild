package zzm.interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation Myinvocation) throws Exception {
        
        //从Session中获取user
        Object userName=Myinvocation.getInvocationContext().getSession().get("userName");
        
        if(userName==null){              //如果没有user对象
            return Action.LOGIN;    //返回login
        }else{                       //如果有登录
            return Myinvocation.invoke();   //返回Action中method返回的字符串
        }
    }

}
