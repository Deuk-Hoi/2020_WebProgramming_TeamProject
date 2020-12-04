package com.webprogramming.project;

import java.sql.ResultSet;
import java.util.HashMap;

public class QnaDAO {
	
	public String sql = null;
	public int result = 0;
	public ResultSet rs = null;
	
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

}
