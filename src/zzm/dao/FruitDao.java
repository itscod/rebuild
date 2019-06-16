package zzm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import zzm.model.Fruits;

public class FruitDao extends BaseDao{
	public List<Fruits> showFruit(String sql) {
		ResultSet rs=null;
		List<Fruits> list = new ArrayList<Fruits>();
		Connection con = null;
		try {
			con = BaseDao.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
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
	public List<Fruits> showFruit(String sql, Object[] params) {
		ResultSet rs=null;
		List<Fruits> list = new ArrayList<Fruits>();
		Connection con = null;
		try {
			con = BaseDao.getConnection();
			Object pst = con.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					((PreparedStatement) pst).setObject(i + 1, params[i]);
				}
			}
			rs = ((PreparedStatement) pst).executeQuery();
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
