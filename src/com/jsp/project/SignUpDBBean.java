package com.jsp.project;
import java.lang.Exception;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class SignUpDBBean {
	private static SignUpDBBean instance = new SignUpDBBean();
	public static SignUpDBBean getInstance() {
		return instance;
	}
	private SignUpDBBean() {
	
	}
	public Connection getConnection() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/travel_europe";
		String user = "root";
		String password = "1234";
		Connection connection = DriverManager.getConnection(url, user, password);
	
		return connection;
	}
	public void insertMember(SignUpDataBean member) throws Exception{
		Connection connection = null;
		PreparedStatement pstatement = null;
		
		try {
			connection = getConnection();
			pstatement = connection.prepareStatement("insert into user values(?,?,?,?)");
			pstatement.setString(1, member.getId());
			pstatement.setString(2, member.getPassword());
			pstatement.setString(3, member.getName());
			pstatement.setString(4, member.getEmail());
			pstatement.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstatement!=null){
				try {pstatement.close();}catch(SQLException ex) {}
			}
			if(connection!=null){
				try {connection.close();}catch(SQLException ex) {}
			}
		}
	}
	public int userCheck(String id, String password) throws Exception{
		Connection connection = null;
		PreparedStatement pstatement = null;
		ResultSet resultSet = null;
		String dbPassword="";
		int x=-1;
		
		try {
			connection = getConnection();
			pstatement = connection.prepareStatement("select password from user where id = ?");
			pstatement.setString(1, id);
			resultSet = pstatement.executeQuery();
			
			if(resultSet.next()) {
				dbPassword = resultSet.getString("password");
				if(dbPassword.equals(password)) x = 1; //인증 성공
				else x = 0; //인증 실패
			}else x = -1; //해당 아이디 없음
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(resultSet!=null) try {resultSet.close();} catch(SQLException ex) {}
			if(pstatement!=null) try {pstatement.close();} catch(SQLException ex) {}
			if(connection!=null) try {connection.close();} catch(SQLException ex) {}
		}
		return x;
	}
}
