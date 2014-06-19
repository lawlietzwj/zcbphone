package com.jczcb.dao;

import java.sql.*;
import java.text.SimpleDateFormat;

/**
 * @author Lawliet
 */
public class Conn {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String drive = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	String url = "jdbc:sqlserver://127.0.0.1;databaseName=jczcb";
	String user = "sa";
	String pwd = "sa";
	public Conn(String sql){
		try {
			Class.forName(drive);
			conn = DriverManager.getConnection(url,user,pwd);
			pstmt = conn.prepareStatement(sql); 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void executeUpdate(String sql) throws SQLException {  
		pstmt.executeUpdate(sql); 
		}
	
	public void executeUpdate() throws SQLException {
		pstmt.executeUpdate();
	}
	
	public ResultSet executeQuery() throws SQLException { 
		rs = pstmt.executeQuery(); 
		return rs; 
	} 
	
	public void setString(int i,String s) throws SQLException{
		pstmt.setString(i, s);
	}
	
	public void setInt(int i,int x) throws SQLException{
		pstmt.setInt(i, x);
	}

	public void setTimestamp(int i,Timestamp x) throws SQLException{
		pstmt.setTimestamp(i, x);
	}
	
	public void setDouble(int i,double x) throws SQLException{
		pstmt.setDouble(i, x);
	}
	
	public void close() { 
		if (rs != null) { 
			try { 
				rs.close(); 
			} catch (Exception e) { 
				// TODO: handle exception 
			} 
		} 
		if (pstmt != null) { 
			try { 
				pstmt.close(); 
			} catch (Exception e) { 
				// TODO: handle exception 
			} 
		} 
		if (conn != null) { 
			try { 
				conn.close(); 
			} catch (Exception e) { 
				// TODO: handle exception 
			} 
		} 
	}
	public static void main(String[] args) throws Exception{
		String sql = "select * from overloadCase where id=1";
	
		Conn conn = new Conn(sql);
		ResultSet rs = conn.executeQuery();
		String a = "";
		while(rs.next()){
			a = String.format("%05d",rs.getInt(1));
		}
		Timestamp t = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		String time = df.format(t);
		System.out.println(time);
		
		String caseNumber = time + a;
		System.out.println(caseNumber);
		
	}
}
	

