package util;
import java.sql.*;

public class JDBCutil {
	static ResultSet rs = null;
	static Statement st = null;
	static Connection conn = null;
	/*
	 * 1、注册驱动
	 */
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	/*
	 * 2、建立连接
	 */
	public static Connection getConnection(){
			try {
			String url = "jdbc:mysql://localhost:3306/wb";
			String root = "root";
			String password = "123";
				conn = DriverManager.getConnection(url, root,password );
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return conn;
	}
	/*
	 * 关闭所有连接
	 */
	public static void close(ResultSet rs,Statement st,Connection conn){
		try{
			if(rs != null){
				rs.close();
			}
			if(st != null){
				st.close();
			}
			if(conn != null){
				conn.close();
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}

}
