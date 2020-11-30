package com.yash.elite.DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconn {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// String url = "jdbc:mysql://34.66.228.216:3306/hrmsdb";

			String url = "jdbc:mysql://localhost:3306/hrmsdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String user = "root";
			String pw = "Skywalker.94";

			/*
			 * String user = "hrmsDB"; String pw = "Hrms@123";
			 */
			con = DriverManager.getConnection(url, user, pw);

			// con = DriverManager.getConnection(url, user, pw);
		} catch (ClassNotFoundException e) {
			System.out.println("Error 1\n\n\n");
			System.out.println(e.getMessage());

		} catch (SQLException e) {
			System.out.println("Error 2\n\n\n");
			System.out.println(e);
			System.out.println(e.getMessage());
		}
		return con;
	}
}
