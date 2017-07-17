package com.chinasoft.dhw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.chinasoft.dhw.entity.ShopCart;
import com.chinasoft.dhw.util.DBUtil;


public class ShopDaoImpl implements ShopDao{

	@Override
	public void add(ShopCart shopcart) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "insert into shopcart values(?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, shopcart.getPname());
			ps.setString(2, shopcart.getColor());
			ps.setString(3, shopcart.getSize());
			ps.setInt(4, shopcart.getNumber());
			ps.setDouble(5, shopcart.getPrice());
			ps.executeUpdate();
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.close(conn, ps);
		}
		
	}
	public List<ShopCart> get(){
		Connection conn = null;
		Statement stmt = null;
		List<ShopCart> list = new ArrayList<ShopCart>();
		try {
		    conn = DBUtil.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from shopcart";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				String pname = rs.getString(1);
				String color = rs.getString(2);
				String size = rs.getString(3);
				int count = rs.getInt(4);
				double price = rs.getDouble(5);
				list.add(new ShopCart(pname,color,size,count,price));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.close(conn, stmt);
		}
		return list;
	}

}
