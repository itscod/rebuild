package zzm.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.BaseDao;
import zzm.model.Fruits;

public class FruitAction extends ActionSupport{
	public List showFruit(String sql) {
		ResultSet rs=null;
		List list = new ArrayList();
		try {
			Connection conn = BaseDao.getConnection();
			PreparedStatement s = conn.prepareStatement(sql);
			rs = s.executeQuery();
			while (rs.next()) {
				Fruits fruit = new Fruits();
				fruit.setFruitID(rs.getInt("fruitID"));
				fruit.setFruitName(rs.getString("fruitName"));
				fruit.setKind(rs.getString("kind"));
				fruit.setOrigin(rs.getString("origin"));
				fruit.setPrice(rs.getInt("price"));
				fruit.setImages(rs.getString("images"));
				fruit.setIntroduce(rs.getString("introduce"));
				fruit.setStock(rs.getString("stock"));
				list.add(fruit);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
		}
		return list;
	}
	public List showFruit(String sql, Object[] params) {
		ResultSet rs=null;
		List list = new ArrayList();
		try {
			Connection conn = BaseDao.getConnection();
			PreparedStatement s = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					s.setObject(i + 1, params[i]);
				}
			}
			rs = s.executeQuery();
			while (rs.next()) {
				Fruits fruit = new Fruits();
				fruit.setFruitID(rs.getInt("fruitID"));
				fruit.setFruitName(rs.getString("fruitName"));
				fruit.setKind(rs.getString("kind"));
				fruit.setOrigin(rs.getString("origin"));
				fruit.setPrice(rs.getInt("price"));
				fruit.setImages(rs.getString("images"));
				fruit.setIntroduce(rs.getString("introduce"));
				fruit.setStock(rs.getString("stock"));
				list.add(fruit);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			BaseDao.close();
		}
		return list;
	}
	
}
