
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/custorm.css">
<title>JSP 게시판 만들기</title>
</head>
<body>
<center>
	<div width="350px" style="border:1px solid #ccc; margin:25% 35% 0 35%;">
	<form method="post" action="loginAction.jsp">
	<table style="width:350px;">
		<tr>
			<td style="padding:20px 0 8px 0;" height="60px" align="center"><span style="font-weight:700;font-size:30px;"><a href="main.jsp">Travelstagram</a></span></td>
		</tr>
		<tr>
			<td align="center" height="25px"><input type="text" placeholder="아이디" name="userID" maxlength="20"></td>
		</tr>
		<tr>
			<td align="center" height="25px"><input type="password" placeholder="비밀번호" name="userPassword" maxlength="20"></td>		
		</tr>
		
		<tr>
			<td align="center" style="padding:10px 0 30px 0px;" height="40px"><input type="submit" value="로그인"></td>
		</tr>
	</table>
	</form>
	</div>
	<div style="border:1px solid #ccc;margin:10px 35% 25% 35%;">
		<table>
		<tr>
			<td height="60px">계정이 없으신가요? <span id="word" style="color:#5F9BF7;"><a href="join.jsp">가입하기</a></span></td>
		</tr>
	</tabl1e>
	</div>
	</center>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
<script src="js/bootstrap.min.js"></script> 
</body>
</html>