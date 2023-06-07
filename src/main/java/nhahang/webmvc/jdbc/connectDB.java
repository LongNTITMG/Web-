package nhahang.webmvc.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class connectDB {
	public connectDB(){
		super();
	}
	public static Connection getConnect(){
		Connection connection = null;
		String url = "jdbc:sqlserver://DESKTOP-O9NOE3N\\SEVER_VD1;databaseName=QLNH;encrypt=true;trustServerCertificate=true";

		String username = "sa";
		String password = "123";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(url, username, password);
			//System.out.println("Kết nối thành công!");
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Kết nối thất bại!"+e.getMessage());
		}
		return connection;
	}
//	public static void main(String[] args) {
//		System.out.println(getConnect());
//	}
}