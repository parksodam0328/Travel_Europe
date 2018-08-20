<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">

<link rel="stylesheet" href="css/custorm.css">
<link rel="stylesheet" href="css/main.css">

<title>Travelstagram</title>
</head>
<body>
	<!-- 로그인이 된 사람들의 세션을 만들어 준다. 
		 회원값이 있는 사람들은 userID에 정보가 담기게 되고
		 아닌 사람은 null값을 가지게 된다.
	-->
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID==null){%>
			<script>
				location.href="join.jsp";
			</script>
		<%}else{%>
			<script>
				location.href="bbs.jsp";
			</script>
		<%}
	%>
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
<script src="js/bootstrap.min.js"></script> 
</body>
</html>