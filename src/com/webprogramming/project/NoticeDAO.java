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
	
	public JSONArray SelectNotice(String pages){
		DatabaseManager db = new DatabaseManager();		
		sql  = "SELECT * FROM Notice LIMIT "+(Integer.parseInt(pages)-1)*10+", 10"; 
		Jarray = new JSONArray();
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
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return Jarray;
	}
	
	
	public JSONArray SelectNoticeDetail(String num){
		DatabaseManager db = new DatabaseManager();
		int views = 0;
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
				views = rs.getInt("views");
				Jarray.add(obj);
			}
			
			info = new HashMap<Integer, String>();
			sql = "UPDATE Notice SET views = ? WHERE nid = ?";
			info.put(1, Integer.toString(views+1));
			info.put(2, num);
			db.InsertUpdateDB(sql, info);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return Jarray;
	}
	
	public int getCount(){
		DatabaseManager db = new DatabaseManager();		
		sql  = "SELECT COUNT(*) as cnt FROM Notice"; 
		Jarray = new JSONArray();
		rs = db.selectDB(sql, null);
		int Pagecount = 0;
		
		try {
			while(rs.next()) {
				Pagecount = rs.getInt("cnt");
			}
			
			if(Pagecount%10==0) {
				Pagecount = (Pagecount/10)-1;
			}else {
				Pagecount = Pagecount/10;
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return Pagecount;
	}
}
