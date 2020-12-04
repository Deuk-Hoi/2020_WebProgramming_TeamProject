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
	public int login(DB_DTO db_dto) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT userPw FROM Userinfo WHERE userId=?");
			pstmt.setString(1, db_dto.getUserId());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(db_dto.getUserPw())) {
					return 1; //�꽦怨�
				}else {
					return 0; //遺덉씪移�
				}
			}else {
				return -1; //�븘�씠�뵒x
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	public int register(DB_DTO db_dto) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("INSERT INTO Userinfo(userName,userId,userPw,userEmail,userPhone,rank,couponNum) VALUES (?,?,?,?,?,'bronze',0)");
			pstmt.setString(1, db_dto.getUserName());
			pstmt.setString(2, db_dto.getUserId());
			pstmt.setString(3, db_dto.getUserPw());
			pstmt.setString(4, db_dto.getUserEmail());
			pstmt.setString(5, db_dto.getUserPhone());
			PreparedStatement pstmt_2 = conn.prepareStatement("SELECT userId FROM Userinfo WHERE userId=?");
			pstmt_2.setString(1, db_dto.getUserId());
			rs = pstmt_2.executeQuery();
			if(db_dto.getCheckPw().equals(db_dto.getUserPw())) {
				if(rs.next()) {
					return -3;
				}else {
					return pstmt.executeUpdate();
				}
			}else {
				return -2;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;//db�삤瑜�
	}
	public String searchId(DB_DTO db_dto) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT userId FROM Userinfo WHERE userEmail=?");
			pstmt.setString(1, db_dto.getUserEmail());
			rs=pstmt.executeQuery();
			String result=" | ";
			if(rs.next()) {
				result=result+rs.getString(1)+" | ";
				while(rs.next()) {
					result=result+rs.getString(1)+" | ";
				}
			}else {
				return "-2"; //email x
			}
			return result; //�꽦怨�
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "-1";//db�삤瑜�
	}
	public String searchPw(DB_DTO db_dto) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT userPw FROM Userinfo WHERE userId=?");
			pstmt.setString(1, db_dto.getUserId());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1); //�꽦怨�
			}else {
				return "-1"; //�뾾�뒗 Id
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "-2";//db�삤瑜�
	}
	public ArrayList<Event_DTO> getList(String pageNum){
		ArrayList<Event_DTO> list = new ArrayList<Event_DTO>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Event LIMIT ?, 10 ");
			pstmt.setInt(1, (Integer.parseInt(pageNum)-1)*10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Event_DTO dto = new Event_DTO();
				dto.setEid(rs.getString(1));
				dto.setEtype(rs.getString(2));
				dto.setEtitle(rs.getString(3));
				dto.setEdate(rs.getString(4));
				dto.setEview(rs.getString(5));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int maxPage() {
		int n=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT MAX(Eid) FROM Event");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				n=Integer.parseInt(rs.getString(1));
			}
			if(n%10==0) {
				return (n/10)-1;
			}
			return n/10;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public ArrayList<Event_DTO> Event_detail(int eid){
		ArrayList<Event_DTO> list = new ArrayList<Event_DTO>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Event WHERE eid=?");
			pstmt.setInt(1, eid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				Event_DTO dto = new Event_DTO();
				dto.setEid(rs.getString(1));
				dto.setEtype(rs.getString(2));
				dto.setEtitle(rs.getString(3));
				dto.setEdate(rs.getString(4));
				dto.setEview(rs.getString(5));
				dto.setEcontent(rs.getString(6));
				dto.setEimage(rs.getString(7));
				list.add(dto);
				return list;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int view_update(int eid) {
		int view=1;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT eview FROM Event WHERE eid=?");
			pstmt.setInt(1, eid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				view = Integer.parseInt(rs.getString(1));
			}
			pstmt = conn.prepareStatement("UPDATE Event SET eview=? WHERE eid=?");
			pstmt.setInt(1, view+1);
			pstmt.setInt(2, eid);
			return pstmt.executeUpdate();
		}catch (Exception e){
			e.printStackTrace();
		}
		return -1;
	}
	
	public JSONArray searchUserInfo(DB_DTO db_dto) {
		JSONArray Jarray = new JSONArray();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Userinfo where userId = ?");
			pstmt.setString(1, db_dto.getUserId());
			rs = pstmt.executeQuery();
			
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
