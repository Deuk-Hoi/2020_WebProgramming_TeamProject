package com.webprogramming.project;

import java.sql.ResultSet;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class QnaDAO {
	
	public String sql = null;
	public int result = 0;
	public ResultSet rs = null;
	JSONArray Jarray;
	
	public int InsertQna(QnADO Qdo, String userId){
		DatabaseManager db = new DatabaseManager();
		String dateTime = Qdo.getDate()+" "+Qdo.getTime();
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		info.put(1, userId);
		info.put(2, Qdo.getUserName());
		info.put(3, Qdo.getPhone());
		info.put(4, Qdo.getEmail());
		info.put(5, dateTime);
		info.put(6, Qdo.getTitle());
		info.put(7, Qdo.getContents());
		
		sql  = "INSERT INTO Qna(uid, NAME, phone, email, DATE, title, contents) VALUES ((SELECT uid FROM Userinfo WHERE userId = ?), ?, ?, ?, ?, ?, ?)"; 
		
		return db.InsertUpdateDB(sql, info);
	}
	
	public JSONArray SelectQna(String pages){
		DatabaseManager db = new DatabaseManager();		
		sql  = "SELECT * FROM Qna LIMIT "+(Integer.parseInt(pages)-1)*10+", 10"; 
		Jarray = new JSONArray();
		rs = db.selectDB(sql, null);
		
		try {
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("qid", rs.getString("qid"));
				obj.put("title", rs.getString("title"));
				obj.put("date", rs.getString("date"));
				obj.put("name", rs.getString("name"));
				Jarray.add(obj);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return Jarray;
	}
	
	public int getCount(){
		DatabaseManager db = new DatabaseManager();		
		sql  = "SELECT COUNT(*) as cnt FROM Qna"; 
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
	
	public JSONArray SelectQna_detail(String num){
		DatabaseManager db = new DatabaseManager();		
		sql  = "SELECT * FROM Qna WHERE qid = ?"; 
		Jarray = new JSONArray();
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		info.put(1, num);
		rs = db.selectDB(sql, info);
		
		try {
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("qid", rs.getString("qid"));
				obj.put("title", rs.getString("title"));
				obj.put("date", rs.getString("date"));
				obj.put("email", rs.getString("email"));
				obj.put("contents", rs.getString("contents"));
				Jarray.add(obj);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return Jarray;
	}
	
	public int UpdateAnswer(String num, String answer){
		DatabaseManager db = new DatabaseManager();		
		sql  = "UPDATE Qna SET answer = ? WHERE qid = ?"; 
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		info.put(1, answer);
		info.put(2, num);
		
		return db.InsertUpdateDB(sql, info);
	}
	
	public JSONArray SelectQna_Mypage(String userid){
		DatabaseManager db = new DatabaseManager();		
		sql  = "SELECT * FROM Qna WHERE uid = (SELECT uid FROM Userinfo WHERE userid = ?) ORDER BY qid DESC LIMIT 3"; 
		Jarray = new JSONArray();
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		info.put(1, userid);
		rs = db.selectDB(sql, info);
		
		try {
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("qid", rs.getString("qid"));
				obj.put("title", rs.getString("title"));
				obj.put("answer", rs.getString("answer"));
				Jarray.add(obj);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return Jarray;
	}
	
	public JSONArray Qna_answer(String num){
		DatabaseManager db = new DatabaseManager();		
		sql  = "SELECT * FROM Qna WHERE qid = ?"; 
		Jarray = new JSONArray();
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		info.put(1, num);
		rs = db.selectDB(sql, info);
		
		try {
			while(rs.next()) {
				JSONObject obj = new JSONObject();
				obj.put("title", rs.getString("title"));
				obj.put("date", rs.getString("date"));
				obj.put("email", rs.getString("email"));
				obj.put("contents", rs.getString("contents"));
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
