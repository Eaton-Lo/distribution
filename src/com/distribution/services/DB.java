package com.distribution.services;

import java.sql.*;
import java.util.ArrayList;
import java.util.Hashtable;

public class DB {
	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/Distribution";

	// Database credentials
	static final String USER = "root";
	static final String PASS = "123";

	public static ArrayList<Hashtable<String, Object>> doQuery(String sql) {

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Hashtable<String, Object>> result = new ArrayList<Hashtable<String, Object>>();

		try {

			// Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			// Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			// Execute a query
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			if (stmt != null)
				rs = stmt.executeQuery(sql);

			if (rs != null) {

				while (rs.next()) {

					Hashtable<String, Object> data = new Hashtable<String, Object>();

					data.put("id", String.valueOf(rs.getInt("pantry_id")));
					data.put("name", rs.getString("name"));
					data.put("address", rs.getString("address"));
					data.put("city", rs.getString("city"));
					data.put("state", rs.getString("state"));
					data.put("zip", rs.getString("zip"));
					data.put("phone", rs.getString("phone"));

					result.add(data);
				}

			}

			// STEP 6: Clean-up environment
			if (rs != null)
				rs.close();

		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try
		return result;

	}

	public static int doUpdate(String sql) {

		Connection conn = null;
		Statement stmt = null;
		int result = 0;

		try {
			// Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			// Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			// Execute a query
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			if (stmt != null)
				result = stmt.executeUpdate(sql);

		} catch (SQLException se) {
			// Handle errors for JDBC
			se.printStackTrace();
		} catch (Exception e) {
			// Handle errors for Class.forName
			e.printStackTrace();
		} finally {
			// finally block used to close resources
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException se2) {
			} // nothing we can do
			try {
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			} // end finally try
		} // end try

		return result;

	}

}
