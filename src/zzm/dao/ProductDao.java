package zzm.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import zzm.model.Product;

public class ProductDao {
	public static Map<Integer,Product> product=new HashMap<Integer,Product>();
	
	public List<Product> getProduct(){
	//将所有的值保存在list集合中
		return new ArrayList<Product>(product.values());
	}
	
	//删除
	public void delete(Integer fruitID){
		product.remove(fruitID);
	}
	
	//添加
	public void save(Product pro){
		long time=System.currentTimeMillis();
		pro.setFruitID((int)time);
		product.put(pro.getFruitID(),pro);
	}
	
	//查询
	public Product get(Integer FruitID){
		return product.get(FruitID);
	}
	
	//修改
	public void update(Product pro){
		product.put(pro.getFruitID(),pro);
	}
}
	
