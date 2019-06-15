package zzm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.Dao;



public class BaseDao {
	Connection con;
	PreparedStatement pst;
	public boolean executeSQL(String sql,Object[] params){
    	boolean flag = false;
    	try{
    		con = Dao.getConn();
    		pst = con.prepareStatement(sql);
    		if(params!=null){
    			for(int i = 0;i<params.length;i++){
    				pst.setObject(i+1, params[i]);
    			}
    		}
    		flag = pst.execute();
    		pst.close();
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		Dao.closeConn(con);
    	}
    	return flag;
    }
    
    
	//数据库响应
	public ResultSet getResultSet(ResultSet rs,String sql,Object[] params) {
		rs = null;
		try{
    		con = Dao.getConn();
    		pst = con.prepareStatement(sql);
    		if(params!=null){
    			for(int i = 0;i<params.length;i++){
    				pst.setObject(i+1, params[i]);
    			}
    		}
    		rs = pst.executeQuery();
    		pst.close();
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		Dao.closeConn(con);
    	}
		return rs;
	}
	
	
	//更新到数据库
	public int updateSQL(String sql,Object[] params){
		int num=0;
    	try{
    		con = Dao.getConn();
    		pst = con.prepareStatement(sql);
    		if(params!=null){
    			for(int i = 0;i<params.length;i++){
    				pst.setObject(i+1, params[i]);
    			}
    		}
    		num = pst.executeUpdate();
    		pst.close();
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		Dao.closeConn(con);
    	}
    	return num;
	}
	
	//添加数据的模板
	public int add(String sql, Object[] params){
		int i=0;
		i=updateSQL(sql,params);
		return i;
	}
	
	//修改数据的模板
	public int edit(String sql, Object[] params){
		int i = 0;
		i=updateSQL(sql,params);
		return i;
	}
	
	//删除数据的模板
	public boolean del(String sql, Object[] params){
		boolean i= true;
		i=executeSQL(sql,params);
		return i;
	}
}