package com.webprogramming.project;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.locks.StampedLock;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class OrderDAO {
	public String sql = null;
	public int result = 0;
	public ResultSet rs = null;
	JSONArray Jarray = new JSONArray();
	
	public int InsertOrd(OrderDO ordo, String userId){
		DatabaseManager db = new DatabaseManager();
		String Time = ordo.getCafetime();
		String takeouttime=ordo.getTakeouttime();
		String oid = null;
		int stampNum = 0;
		int couponNum = 0;
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		
		info.put(1, userId);
		info.put(2, ordo.getPickup());
		info.put(3, ordo.getAb());
		info.put(4, ordo.getPrice());
		
		sql  = "INSERT INTO Orders(uid, pickUp, orderList, totalCost) VALUES ((SELECT uid FROM Userinfo WHERE userId = ?), ?, ?, ?)";
		
		db.InsertUpdateDB(sql, info);
		
		sql = "SELECT oid FROM Orders ORDER BY oid DESC LIMIT 1";
		rs=db.selectDB(sql, null);
		try {
			while(rs.next()) {
				oid=rs.getString("oid");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		info=new HashMap<Integer, String>();
		info.put(1, userId);
		info.put(2, ordo.getSeatnum());
		info.put(3, ordo.getCafetime());
		info.put(4, ordo.takeouttime);
		info.put(5, oid);
		
		sql  = "INSERT INTO Seat(uid, seatNum, seatTime, takeTime, oid) VALUES((SELECT uid FROM Userinfo WHERE userId = ?), ?, ?, ?, ?)";
		db.InsertUpdateDB(sql, info);
		sql = "UPDATE Userinfo SET stampNum = stampNum + 1 WHERE userId = ?";
		info=new HashMap<Integer, String>();
		info.put(1, userId);
		db.InsertUpdateDB(sql, info);
		sql = "SELECT stampNum FROM Userinfo WHERE userId = ?";
		info.put(1, userId);
		
		rs = db.selectDB(sql, info);
		try {
			while(rs.next()) {
				stampNum = rs.getInt("stampNum");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(stampNum >= 12) {
			couponNum = stampNum % 11;
			stampNum = 0;
			sql = "UPDATE Userinfo SET stampNum = ?, couponNum = ? WHERE userId = ?";
			info=new HashMap<Integer, String>();
			info.put(1, Integer.toString(stampNum));
			info.put(2, Integer.toString(couponNum));
			info.put(3, userId);
			db.InsertUpdateDB(sql, info);
		}
		
		return 1;
	}
	public JSONArray SelectUserOrder(String userId){
	      DatabaseManager db = new DatabaseManager();
	      
	      HashMap<Integer, String> info = new HashMap<Integer, String>();
	      info.put(1, userId);
	      
	      sql  = "SELECT * FROM Orders WHERE uid = (SELECT uid FROM Userinfo WHERE userId = ?) ORDER BY oid DESC LIMIT 3"; 
	      System.out.println(sql);
	      rs = db.selectDB(sql, info);
	      
	      try {
	         while(rs.next()) {
	            JSONObject obj = new JSONObject();
	            obj.put("oid", rs.getString("oid"));
	            obj.put("orderList", rs.getString("orderList"));
	            obj.put("totalCost", rs.getString("totalCost"));
	            Jarray.add(obj);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } 
	      return Jarray;
	   }
}


