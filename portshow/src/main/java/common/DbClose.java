package common;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbClose {
	
	public static void Close(Connection conn, Statement stmt) throws SQLException {
		conn.close();
		stmt.close();
	}
	public static void Close(ResultSet rs, Connection conn, Statement stmt) throws SQLException {
		rs.close();
		conn.close();
		stmt.close();
	}
}
