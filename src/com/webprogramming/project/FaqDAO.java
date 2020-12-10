package com.webprogramming.project;

import java.sql.DriverManager;
import java.sql.ResultSet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class FaqDAO {
	
	public String sql = null;
	public int result = 0;
	public ResultSet rs = null;
	JSONArray Jarray;
	
	public JSONArray LoadFAQ() {
			
			JSONArray Jarray = new JSONArray();
			DatabaseManager db = new DatabaseManager();
			sql = "SELECT * FROM Faq";
			Jarray = new JSONArray();
			rs = db.selectDB(sql, null);
			
			try {				
				while(rs.next()) {
					JSONObject obj = new JSONObject();
					obj.put("question", rs.getString("question"));
					obj.put("answer", rs.getString("answer"));
					Jarray.add(obj);
				}
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return Jarray;
		}
}
