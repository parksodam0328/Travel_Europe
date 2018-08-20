<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ page import="com.board.user.UserDAO" %>

<%@ page import="java.io.PrintWriter" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="com.board.user.User" scope="page" />

<jsp:setProperty name="user" property="userID" /> 

<jsp:setProperty name="user" property="userPassword" /> 

 

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 

<title>Insert title here</title>

</head>

<body>

<%
String userID = null;

if(session.getAttribute("userID") != null){//유저아이디이름으로 세션이 존재하는 회원들은 

userID = (String) session.getAttribute("userID");//유저아이디에 해당 세션값을 넣어준다.

}

if(userID != null){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('이미 로그인이 되어있습니다.')");

script.println("location.href = 'main.jsp'");

script.println("</script>");

 

}
UserDAO userDAO = new UserDAO();

int result = userDAO.login(user.getUserID(), user.getUserPassword());

if(result ==1){
	session.setAttribute("userID", user.getUserID()); 
PrintWriter script = response.getWriter();

script.println("<script>");

script.println("location.href = 'main.jsp'");

script.println("</script>");

}

else if (result == 0 ){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('비밀번호가 틀립니다.')");

script.println("history.back()");

script.println("</script>");

}

else if (result == -1){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('존재하지 않는 아이디입니다.')");

script.println("history.back()");

script.println("</script>");

}

else if (result == -2){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('데이터베이스 오류가 발생했습니다.')");

script.println("history.back()");

script.println("</script>");

}

%>

</body>

</html>