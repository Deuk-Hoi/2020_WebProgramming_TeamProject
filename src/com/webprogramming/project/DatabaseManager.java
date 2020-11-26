package com.webprogramming.project;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class DatabaseManager {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String dbURL = "";
	private String dbID = "";
	private String dbPW = "";
	
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
	
	public String LoadNotice() {
		JSONArray Jarray = new JSONArray();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Notice");
			rs = pstmt.executeQuery();
			
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
					return 1; //성공
				}else {
					return 0; //불일치
				}
			}else {
				return -1; //아이디x
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
		return -1;//db오류
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
			return result; //성공
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "-1";//db오류
	}
	public String searchPw(DB_DTO db_dto) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT userPw FROM Userinfo WHERE userId=?");
			pstmt.setString(1, db_dto.getUserId());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1); //성공
			}else {
				return "-1"; //없는 Id
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "-2";//db오류
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
	
	public String searchUserInfo(DB_DTO db_dto) {
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
				Jarray.add(obj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Jarray.toString();
	}
	
	public int InsertQnA(QnAManager qm, String userId) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("INSERT INTO Qna(uid, NAME, phone, email, DATE, title, contents) VALUES ((SELECT uid FROM Userinfo WHERE userId = ?), ?, ?, ?, ?, ?, ?)");
			pstmt.setString(1, userId);
			pstmt.setString(2, qm.getUserName());
			pstmt.setString(3, qm.getPhone());
			pstmt.setString(4, qm.getEmail());
			pstmt.setString(5, qm.getDate()+" "+qm.getTime());
			pstmt.setString(6, qm.getTitle());
			pstmt.setString(7, qm.getContents());
			
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		
		return result;
	}
	
	public String NoticeDetail(String noticeNum) {
		JSONArray Jarray = new JSONArray();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
			pstmt = conn.prepareStatement("SELECT * FROM Notice where nid = "+noticeNum);
			rs = pstmt.executeQuery();
			
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
		return Jarray.toString();
	}
}
