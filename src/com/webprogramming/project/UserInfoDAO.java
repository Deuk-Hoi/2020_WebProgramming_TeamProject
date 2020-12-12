package com.webprogramming.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class UserInfoDAO {
	
	public String sql = null;
	public int result = 0;
	public ResultSet rs = null;
	JSONArray Jarray = new JSONArray();
	
	public JSONArray SelectUserInfo(String userId){
		DatabaseManager db = new DatabaseManager();
		
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		info.put(1, userId);
		
		sql  = "select * from Userinfo where userId = ?"; 
		
		rs = db.selectDB(sql, info);
		
		try {
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("uid", rs.getString("uid"));
				obj.put("userName", rs.getString("userName"));
				obj.put("userEmail", rs.getString("userEmail"));
				obj.put("userPhone", rs.getString("userPhone"));
				obj.put("rank", rs.getString("rank"));
				obj.put("couponNum", rs.getString("couponNum"));
				obj.put("stampNum", rs.getString("stampNum"));
				Jarray.add(obj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return Jarray;
	}
	
	public int UpdateUserInfo(UserInfoDO Udao, String userId){
		DatabaseManager db = new DatabaseManager();
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		info.put(1, Udao.getUserEmail());
		info.put(2, Udao.getUserPhone());
		info.put(3, userId);
		
		sql  = "update Userinfo set userEmail = ? , userPhone = ? where userId = ?"; 
		
		return db.InsertUpdateDB(sql, info);
	}
	
}
