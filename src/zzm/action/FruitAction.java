package zzm.action;

import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import zzm.dao.FruitDao;
import zzm.model.Fruits;
import zzm.model.JsonData;


public class FruitAction extends ActionSupport implements ModelDriven<Fruits>{

	private Fruits fruits =new Fruits();
	  public Fruits getModel() { return fruits; }
	
	private JSONObject jsonObject;
	public JSONObject getJsonObject() {
		return jsonObject;
	}
	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}
	

	/**

	 * 查找所有水果的商品数据

	 * @return

	 * @throws Exception

	 */

	public String findAll() throws Exception{
		
		FruitDao fruitdao = new FruitDao();

		List<Fruits> fruits = fruitdao.fruitAll();
		
		JsonData jsonData = new JsonData();

		jsonObject = jsonData.getJsonObject(fruits);

		if(fruits!=null&& !fruits.isEmpty()){

			return "fruit";

		}else{

			return "error";

		}
	}
	
	/**

	 * 增加一个新的水果数据

	 * @return

	 * @throws Exception

	 */

	public String add() throws Exception{
		
		FruitDao fruitdao = new FruitDao();
		
		int i=fruitdao.saveFruit(fruits);

		if(i>0){

			return "add";

		}else{

			return "error";

		}

	}
	
	/**

	 * 删除一个水果数据

	 * @return

	 * @throws Exception

	 */

	public String delete() throws Exception{
		
		FruitDao fruitdao = new FruitDao();

		int i=fruitdao.delete(fruits.getFruitID());

		if(i>0){

			return "success";

		}else{

			return "error";

		}

	}
	
	/**

	 * 更新一个水果数据

	 * @return

	 * @throws Exception

	 */
	public String edit() throws Exception{

		FruitDao fruitdao = new FruitDao();
		
		Fruits fruit = new Fruits();
				
		fruit = fruitdao.findFruit(fruit.getFruitName());
		
		int i=fruitdao.update(fruit,fruit.getFruitName());

		if(i>0){

			return "edit";

		}else{

			return "error";

		}

	}
	
}
