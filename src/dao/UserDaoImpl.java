package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import util.JDBCutil;
import entity.User;

public class UserDaoImpl implements UserDao{
	static String ADD_EMAIL_USER_SQL = "insert into emailUser(email,password,honeyname,sex,country,city,school,name,id_number,registeTime,memo) values(?,?,?,?,?,?,?,?,?,?,?)";
	static String ADD_PHONE_USER_SQL = "insert into phoneUser(phone,password,honeyname,sex,country,city,id_number,registeTime,memo) values(?,?,?,?,?,?,?,?,?)";
	static String QUERY_BY_EMAIL_SQL= "select * from emailUser where email = ?";
	static String QUERY_BY_PHONE_SQL= "select * from phoneUser where phone = ?";
	static String ADD_BROADCAST_SQL = "insert into broadcast(publishTime,broadcastContent) values(?,?)";
	static String QUERY_EMAIL_BY_HONEYNAME_SQL = "select * from emailUser where honeyname = ?";
//	static String QUERY_PHONE_BY_HONEYNAME_SQL = "select * from phoneUser where honeyname = ?";
	static String UPDATE_SQL = "select * from broadcast order by broadcast_id desc";
	static Connection conn = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	static Statement st = null;
//	通过邮箱注册用户
	public void add(String email,String password,String honeyname,String sex,String country,String city,String school,String name,String id_number,String registeTime,String memo) {
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(ADD_EMAIL_USER_SQL);
			ps.setString(1, email);
			ps.setString(2, password);
			ps.setString(3,	honeyname);	
			ps.setString(4, sex);
			ps.setString(5,	country);
			ps.setString(6,	city);
			ps.setString(7,	school);
			ps.setString(8,	name);
			ps.setString(9,	id_number);
			ps.setString(10, registeTime);
			ps.setString(11, memo);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
	}
//	通过手机注册用户
	public void add_(String phone,String password,String honeyname,String sex,String country,String city,String id_number,String registeTime,String memo){
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(ADD_PHONE_USER_SQL);
			ps.setString(1, phone);
			ps.setString(2, password);
			ps.setString(3,	honeyname);	
			ps.setString(4, sex);
			ps.setString(5,	country);
			ps.setString(6,	city);
			ps.setString(7,	id_number);
			ps.setString(8, registeTime);
			ps.setString(9, memo);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
	}
//	通过昵称查找好友
	ArrayList USER = new ArrayList();
	public ArrayList query(String honeyname) {
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(QUERY_EMAIL_BY_HONEYNAME_SQL);
			ps.setString(1, honeyname);
			rs = ps.executeQuery();
			while(rs.next()){	
				User user = new User();
				user.setEmail(rs.getString(1));
				user.setHoneyname(rs.getString(3));
				user.setSex(rs.getString(4));
				user.setCountry(rs.getString(5));
				user.setCity(rs.getString(6));
				user.setSchool(rs.getString(7));
				user.setName(rs.getString(8));
				USER.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return USER;
	}
//	通过邮箱登陆微博
	public boolean denglu1(String name,String password){
		boolean bool = false;
		try{
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(QUERY_BY_EMAIL_SQL);
			ps.setString(1, name);
			rs = ps.executeQuery();
			String password_=null;
			while(rs.next()){
				password_ = rs.getString(2);
				if(password_.equals(password)){
					bool = true;
				}else{
					bool = false;
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
		return bool;
	}
//	通过手机号码登陆微博
	public boolean denglu2(String name,String password){
		boolean bool = false;
		try{
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(QUERY_BY_PHONE_SQL);
			ps.setString(1, name);
			rs = ps.executeQuery();
			String password_=null;
			while(rs.next()){
				password_ = rs.getString(2);
				if(password_.equals(password)){
					bool = true;
				}else{
					bool = false;
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
		return bool;
	}
//	发表微博
	public void fabiao(String text,String time){
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(ADD_BROADCAST_SQL);
			ps.setString(1, time);
			ps.setString(2, text);	
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCutil.close(rs, ps, conn);
	}
//  更新微博	
	ArrayList SHOW = new ArrayList();
	public ArrayList update() {
		try {
			conn = JDBCutil.getConnection();
			ps = conn.prepareStatement(UPDATE_SQL);
			rs = ps.executeQuery();
			while(rs.next()){	
				User user = new User();
				user.setTitle(rs.getString(1));
				user.setPublishTime(rs.getDate(2));
				user.setBroadcastContent(rs.getString(3));
				user.setBroadcast_id(rs.getInt(4));
				SHOW.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SHOW;
	}
}
