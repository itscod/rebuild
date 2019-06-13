package zzm.action;

import java.util.Map;

import org.apache.struts2.interceptor.ServletRequestAware;

import zzm.dao.ProductDao;

public class ProductAction implements ServletRequestAware{
	private Integer fruitID;
	private ProductDao dao=new ProductDao();
	private Map<String, Object> request=null;
	//需要在当前的EmployeeAction定义EmployeeId属性，接收请求参数
	   public Integer getEmployeeId() {
		   return fruitID;
	   }
	   public void setEmployeeId(Integer employeeId) {
		   this.fruitID = fruitID;
	   }
	   public String list()
	   {  
		  request.put("product", dao.getProduct());
		  return "list";
	   }
	   public String delete(){ 
		   dao.delete(fruitID);
		   //返回结果类型,为redirectAction;
		   return "delete";
	   }
	public void setRequest(Map<String, Object> request) {
		this.request=request;
	}
	public String execute() throws Exception {
		return null;
	}
}
