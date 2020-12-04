package com.webprogramming.project;

import java.sql.ResultSet;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class NoticeDAO {
	public String sql = null;
	public int result = 0;
	public ResultSet rs = null;
	JSONArray Jarray = new JSONArray();
	
	public JSONArray SelectNotice(){
		DatabaseManager db = new DatabaseManager();		
		sql  = "SELECT * FROM Notice"; 
		
		rs = db.selectDB(sql, null);
		
		try {
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
		return Jarray;
	}
	
	
	public JSONArray SelectNoticeDetail(String num){
		DatabaseManager db = new DatabaseManager();
		
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		info.put(1, num);
		
		sql  = "SELECT * FROM Notice where nid = ?"; 
		
		rs = db.selectDB(sql, info);
		
		try {
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("title", rs.getString("title"));
				obj.put("content", rs.getString("content"));
				obj.put("photo", rs.getString("photo"));
				obj.put("date", rs.getString("date"));
				Jarray.add(obj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return Jarray;
	}
}
