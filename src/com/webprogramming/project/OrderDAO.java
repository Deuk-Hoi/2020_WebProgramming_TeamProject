package com.webprogramming.project;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

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
		HashMap<Integer, String> info = new HashMap<Integer, String>();
		
		info.put(1, userId);
		info.put(2, ordo.getPickup());
		info.put(3, ordo.getAb());
		info.put(4, ordo.getPrice());
		
		sql  = "INSERT INTO Orders(uid, pickUp, orderList, totalCost) VALUES ((SELECT uid FROM Userinfo WHERE userId = ?), ?, ?, ?)";
		
		db.InsertUpdateDB(sql, info);
		
		sql = "SELECT oid FROM Orders ORDER BY uid DESC LIMIT 1";
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
		
		return db.InsertUpdateDB(sql, info);
	}
}
