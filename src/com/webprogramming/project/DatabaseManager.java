package com.webprogramming.project;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class DatabaseManager {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String dbURL = "";
	private String dbID = "";
	private String dbPW = "";
	
	public String getDbURL() {
		return dbURL;
	}
	public String getDbID() {
		return dbID;
	}
	public String getDbPW() {
		return dbPW;
	}
	
	public DatabaseManager() {
		dbURL = "jdbc:mysql://conative.myds.me:8888/HTC_Cafe?serverTimezone=UTC&characterEncoding=utf8";
		dbID = "root";
		dbPW = "qwerty12";
	}
	
	public String LoadFAQ() {
		
		JSONArray Jarray = new JSONArray();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Faq");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("question", rs.getString("question"));
				obj.put("answer", rs.getString("answer"));
				Jarray.add(obj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Jarray.toString();
	}
	
	public String LoadNotice() {
		JSONArray Jarray = new JSONArray();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Notice");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("nid", rs.getString("nid"));
				obj.put("title", rs.getString("title"));
				obj.put("content", rs.getString("content"));
				obj.put("photo", rs.getString("photo"));
				obj.put("date", rs.getString("date"));
				obj.put("views", rs.getString("views"));
				Jarray.add(obj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Jarray.toString();
	}
}
