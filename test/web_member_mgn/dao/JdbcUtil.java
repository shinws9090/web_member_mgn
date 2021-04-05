package web_member_mgn.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtil {

	
	public static Connection getConnection() {
		Connection con = null;
		try {// 파일 내용 리소스 파일을 담는것
			
			String url = "jdbc:mysql://localhost:3306/native_jdbc?useSSL=false";
			String id = "user_native_jdbc";
			String passwd = "rootroot";
			
			con = DriverManager.getConnection(url,id,passwd);
			
			/*
			System.out.println("prop > " + prop);
			
			for (Entry<Object, Object> e : prop.entrySet()) {// prop.entrySet() 소스 마다 쌍으로 불러오기
				System.out.printf("%s -> %s %n", e.getKey(), e.getValue());
			}
			
			System.out.println();
			
			for (Object key : prop.keySet()) {
				System.out.print(key+" ->");
				System.out.println(prop.get(key));
			}
			*/
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return con;

	}

}
