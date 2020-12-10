package com.webprogramming.project;

import java.security.MessageDigest;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

public class LoginDAO {
	public String sql = null;
	public int result = 0;
	public ResultSet rs = null;
	DatabaseManager db = new DatabaseManager();
	public static String encrypt(String planText) {
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(planText.getBytes());
			byte byteData[] = md.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) {
				String hex = Integer.toHexString(0xff & byteData[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			return hexString.toString();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	public int login(DB_DTO db_dto) {
		try {
			HashMap<Integer, String> info = new HashMap<Integer, String>();
			info.put(1, db_dto.getUserId());
			
			sql ="SELECT userPw FROM Userinfo WHERE userId=?" ;
			
			rs = db.selectDB(sql, info);
			
			if(rs.next()) {
				String pw_sha = LoginDAO.encrypt(db_dto.getUserPw());
				if(rs.getString(1).equals(pw_sha)) {
					return 1;
				}else {
					return 0;
				}
			}else {
				return -1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	public int register(DB_DTO db_dto) {
		try {
			HashMap<Integer, String> info = new HashMap<Integer, String>();
			info.put(1, db_dto.getUserName());
			info.put(2, db_dto.getUserId());
			String pw_sha = LoginDAO.encrypt(db_dto.getUserPw());
			info.put(3, pw_sha);
			info.put(4, db_dto.getUserEmail());
			info.put(5, db_dto.getUserPhone());
			sql="INSERT INTO Userinfo(userName,userId,userPw,userEmail,userPhone,rank,couponNum) VALUES (?,?,?,?,?,'bronze',0)";
			
			HashMap<Integer, String> info_2 = new HashMap<Integer, String>();
			String sql_2 = "SELECT userId FROM Userinfo WHERE userId=?";
			info_2.put(1, db_dto.getUserId());
			rs = db.selectDB(sql_2, info_2);
			String pw_sha_2 = LoginDAO.encrypt(db_dto.getCheckPw());
			if(pw_sha_2.equals(pw_sha)) {
				if(rs.next()) {
					return -3;
				}else {
					return db.InsertUpdateDB(sql, info);
				}
			}else {
				return -2;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	public String searchId(DB_DTO db_dto) {
		try {
			HashMap<Integer, String> info = new HashMap<Integer, String>();
			info.put(1, db_dto.getUserEmail());
			sql = "SELECT userId FROM Userinfo WHERE userEmail=?";
			rs=db.selectDB(sql, info);
			String result=" | ";
			if(rs.next()) {
				result=result+rs.getString(1)+" | ";
				while(rs.next()) {
					result=result+rs.getString(1)+" | ";
				}
			}else {
				return "-2"; //email x
			}
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "-1";
	}
	public String searchPw(DB_DTO db_dto) {
		try {
			if(db_dto.getUserPw().equals(db_dto.getCheckPw())) {
				sql="UPDATE Userinfo SET userPw=? WHERE userId=?";
				HashMap<Integer, String> info = new HashMap<Integer, String>();
				String pw_sha = LoginDAO.encrypt(db_dto.getUserPw());
				info.put(1, pw_sha);
				info.put(2, db_dto.getUserId());
				
				db.InsertUpdateDB(sql, info);
				return "1";
			}else {
				return "-3";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "-2";
	}
	public String searchPw_Check(DB_DTO db_dto) {
		try {
			int i = IdCheck(db_dto.getUserId());
			if(i==1) {
				HashMap<Integer, String> info = new HashMap<Integer, String>();
				info.put(1, db_dto.getUserEmail());
				sql="SELECT userEmail FROM Userinfo WHERE userEmail=?";
				rs = db.selectDB(sql, info);
				if(rs.next()) {
					return "1";
				}else {
					return "-3";
				}
			}else {
				return "-1";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "-2";
	}
	public int IdCheck(String id) {
		int rst=0;
		try {
			HashMap<Integer, String> info = new HashMap<Integer, String>();
			info.put(1, id);
			sql="SELECT * FROM Userinfo WHERE userId=?";
			rs=db.selectDB(sql, info);
			if(rs.next()) {
				rst=1;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return rst;
	}
}
