package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAO {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userid = "scott";
	String passwd = "tiger";
	
	public UserDAO() {
		super();
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public UserDTO get(String input_email) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		UserDTO dto = null;
		
		try {
			con = DriverManager.getConnection(url, userid, passwd);
			String sql = "SELECT * FROM AUCTION_USER WHERE EMAIL = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, input_email);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				System.out.println(">>>>>>>>>>>");
				int userid = rs.getInt("USER_ID");
				String username = rs.getString("USER_NAME");
				String email = rs.getString("EMAIL");
				String password = rs.getString("PASSWORD");
				String registerdate = rs.getString("REGISTER_DATE");
				int auth = rs.getInt("AUTH");
								
				dto = new UserDTO();
				
				dto.setUserid(userid);
				dto.setUsername(username);
				dto.setPassword(password);
				dto.setEmail(email);
				dto.setRegisterdate(registerdate);
				dto.setAuth(auth);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(con != null) con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}
		
		return dto;
	}

	public ArrayList<UserDTO> getAll() {
		ArrayList<UserDTO> list = new ArrayList<UserDTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		UserDTO dto = null;
		
		try {
			con = DriverManager.getConnection(url, userid, passwd);
			String sql = "SELECT * FROM AUCTION_USER";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				System.out.println(">>>>>>>>>>>");
				int userid = rs.getInt("USER_ID");
				String username = rs.getString("USER_NAME");
				String email = rs.getString("EMAIL");
				String registerdate = rs.getString("REGISTER_DATE");
				int auth = rs.getInt("AUTH");
								
				dto = new UserDTO();
				
				dto.setUserid(userid);
				dto.setUsername(username);
				dto.setEmail(email);
				dto.setRegisterdate(registerdate);
				dto.setAuth(auth);
				
				list.add(dto);
			}
			
			System.out.println("[Auction-User]getAll: " + list.size());
		} catch (SQLException e) {
			System.out.println("[catch]????");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	public void delete(String user_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DriverManager.getConnection(url, userid, passwd);
			String sql = "DELETE FROM AUCTION_USER WHERE USER_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			
			rs = pstmt.executeQuery();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}





















