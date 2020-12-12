package com.webprogramming.project;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

public class EventDAO {
	public String sql = null;
	public int result = 0;
	public ResultSet rs = null;
	DatabaseManager db = new DatabaseManager();
	public ArrayList<Event_DTO> getList(String pageNum){
		ArrayList<Event_DTO> list = new ArrayList<Event_DTO>();
		try {
			sql="SELECT * FROM Event WHERE CAST(? as UNSIGNED)<eid AND eid<=(CAST(? as UNSIGNED))*10";
			HashMap<Integer, String> info = new HashMap<Integer, String>();
			info.put(1, Integer.toString((Integer.parseInt(pageNum)-1)*10));
			info.put(2, Integer.toString(Integer.parseInt(pageNum)));
			rs = db.selectDB(sql, info);
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
			HashMap<Integer, String> info = new HashMap<Integer, String>();
			sql="SELECT MAX(Eid) FROM Event";
			rs = db.selectDB(sql, info);
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
			HashMap<Integer, String> info = new HashMap<Integer, String>();
			info.put(1, Integer.toString(eid));
			sql="SELECT * FROM Event WHERE eid=CAST(? AS UNSIGNED)";
			rs= db.selectDB(sql, info);
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
			HashMap<Integer, String> info = new HashMap<Integer, String>();
			info.put(1, Integer.toString(eid));
			sql = "SELECT eview FROM Event WHERE eid=CAST(? AS UNSIGNED)";
			rs = db.selectDB(sql, info);
			if(rs.next()) {
				view = Integer.parseInt(rs.getString(1));
			}
			sql = "UPDATE Event SET eview=CAST(? AS UNSIGNED) WHERE eid=CAST(? AS UNSIGNED)";
			info.put(1, Integer.toString(view+1));
			info.put(2, Integer.toString(eid));
			return db.InsertUpdateDB(sql, info);
		}catch (Exception e){
			e.printStackTrace();
		}
		return -1;
	}
}
