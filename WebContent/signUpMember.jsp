<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jsp.project.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	String email  = request.getParameter("email");
	
	Connection connection = DBConnection.getMySqlConnection();
	System.out.print("연결정보 : "+connection);
	Statement statement = connection.createStatement();
	
	String sql = "insert into user values('"+id+"','"+pw+"','"+name+"','"+email+")";
	statement.executeQuery(sql);
	response.sendRedirect("home.jsp");
	
%>
</body>
</html>