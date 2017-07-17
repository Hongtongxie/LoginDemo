package com.chinasoft.dhw.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.chinasoft.dhw.entity.User;
import com.chinasoft.dhw.util.DBUtil;

public class UserDaoImpl implements UserDao{

	@Override
	public User selectLoginPw(User user) {
		User users = null;
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from user where username = ? and password = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2,user.getPassword());
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				users = new User(rs.getString(1),rs.getString(2));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.close(conn, ps);
		}	
		return users;
	}
	public void addUser(User user){
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "insert into user values(?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.executeUpdate();
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.close(conn, ps);
		}
		
	}

}
