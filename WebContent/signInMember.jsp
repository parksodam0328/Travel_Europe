<%@page import="com.jsp.project.SignUpDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	SignUpDBBean connection = SignUpDBBean.getInstance();
	int check = connection.userCheck(id, password);
	
	if(check==1){
		session.setAttribute("id",id);
		response.sendRedirect("index.jsp");
	}else if(check==0) {%>
	<script>
		alert("비밀번호가 맞지 않습니다");
		history.go(-1);
	</script>
	<%}else{%>
		<script>
			alert("아이디가 존재하지 않습니다.");
			history.go(-1);
		</script>
	<%}
%>
</body>
</html>