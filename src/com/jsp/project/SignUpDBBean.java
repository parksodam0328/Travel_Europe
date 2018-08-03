package com.jsp.project;
import java.lang.Exception;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
}
