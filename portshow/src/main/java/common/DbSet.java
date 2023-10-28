package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DbSet {

	public static Connection getConnection() { //void대신에 datatype이 connection.
		Connection conn=null ;
		String url ="jdbc:oracle:thin:@localhost:1521:XE"; //static메서드는 static변수만 사용가능
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//System.out.println("1단계 : JDBC드라이버 연동 성공!!");
		
			conn= DriverManager.getConnection(url, "hr", "hr"); 
			//System.out.println("2단계 : hr계정으로 DB 연동 성공!");
		} catch (ClassNotFoundException e){
			e.printStackTrace();
		} catch (SQLException e){ //java.lang.ClassNotFoundException
			e.printStackTrace(); //에러의 발생근원지를 찾아 단계별로 에러를 출력합니다.
	}
		return conn; //결과를 받아야하기 때문에 return을 사용한다..? (void 제외하고 return사용..)
	}
}
		