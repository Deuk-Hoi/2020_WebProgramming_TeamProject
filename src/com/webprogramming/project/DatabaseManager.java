package com.webprogramming.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import java.security.MessageDigest;

public class DatabaseManager {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String dbURL = "";
	private String dbID = "";
	private String dbPW = "";
	int row = 0;
	
	public DatabaseManager() {
		dbURL = "jdbc:mysql://conative.myds.me:8888/HTC_Cafe?serverTimezone=UTC&characterEncoding=utf8";
		dbID = "root";
		dbPW = "qwerty12";
	}
	public String Loadseat() {
		JSONArray Jarray = new JSONArray();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT csname FROM Cafeseat");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("csname",rs.getString("csname"));
				Jarray.add(obj);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return Jarray.toString();
	}
	
	public String LoadorderHot() {
		JSONArray Jarray = new JSONArray();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Menu WHERE category = 'Hot'");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("menuName",rs.getString("menuName"));
				obj.put("img",rs.getString("img"));
				obj.put("price",rs.getString("price"));
				Jarray.add(obj);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return Jarray.toString();
	}
	
	public String LoadorderIce() {
		JSONArray Jarray = new JSONArray();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Menu WHERE category = 'Ice'");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("menuName",rs.getString("menuName"));
				obj.put("img",rs.getString("img"));
				obj.put("price",rs.getString("price"));
				Jarray.add(obj);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return Jarray.toString();
	}
	
	public String LoadorderNonCoffee() {
		JSONArray Jarray = new JSONArray();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Menu WHERE category = 'Non Coffee'");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("menuName",rs.getString("menuName"));
				obj.put("img",rs.getString("img"));
				obj.put("price",rs.getString("price"));
				Jarray.add(obj);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return Jarray.toString();
	}
	
	public String LoadorderBakery() {
		JSONArray Jarray = new JSONArray();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Menu WHERE category = 'Bakery'");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("menuName",rs.getString("menuName"));
				obj.put("img",rs.getString("img"));
				obj.put("price",rs.getString("price"));
				Jarray.add(obj);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return Jarray.toString();
	}
	//--------------------------------------------------------------수정중
	public ResultSet selectDB(String sql, HashMap<Integer, String> info){
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement(sql);
			
			if(info != null) {
				for(Entry<Integer, String> entry: info.entrySet()) {
					pstmt.setString(entry.getKey(), entry.getValue());
				}
			}			
			rs = pstmt.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	

	public int InsertUpdateDB(String sql, HashMap<Integer, String> info) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement(sql);

			for(HashMap.Entry<Integer, String> entry: info.entrySet()) {
				pstmt.setString(entry.getKey(), entry.getValue());
			}
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return row;
	}
}
