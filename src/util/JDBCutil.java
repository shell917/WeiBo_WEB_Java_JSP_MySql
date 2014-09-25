package util;
import java.sql.*;

public class JDBCutil {
	static ResultSet rs = null;
	static Statement st = null;
	static Connection conn = null;
	/*
	 * 1��ע������
	 */
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	/*
	 * 2����������
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
	 * �ر���������
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
