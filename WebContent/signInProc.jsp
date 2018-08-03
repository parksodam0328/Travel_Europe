<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="login.css">
<link rel="stylesheet" href="main.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>
<body>
<br><br><br><br><br>
<center>
<form action="signInMember.jsp" method="post">
<div id="out">
	<div id="in">
		<table width="100%" align="center">
			<tr>
				<td><span style="font-size:20px; font-weight:900">로그인</span></td>
			</tr>
		</table>
		<br>
		<table width="100%" align="center" style="border-top:2px solid #ffcccc; border-bottom: 2px solid #ffcccc;">
			<tr style="border-bottom:1px solid #ffcccc;">
				<td width="30%" style="padding-left:10px;" class="userInfor"> 아이디</td><td width="70%" style="padding-left:10px;" ><input type="text" name="id" maxlength="10" minlength="6" required>&nbsp;&nbsp;&nbsp;</td>
			</tr>
			<tr style="border-bottom:1px solid #ffcccc;">
				<td width="30%" style="padding-left:10px;" class="userInfor"> 비밀번호</td><td width="70%" style="padding-left:10px;" ><input type="password" name="password" maxlength="10" minlength="8" required></td>
			</tr>
		</table>
		<table width="100%" align="center">
			<tr style="border-bottom:1px solid #ffcccc;">
				<td width="50%" align="right" style="padding:0px 5px;"><input type="submit" value="로그인"></td><td width="50%" align="left" style="padding:0px 5px;"><input type="button" onclick="location.href='signUp.jsp'" value="회원가입"></td>
			</tr>
		</table>
		<br><br><br><br>
	</div>
</div>
</form>
</center>
</body>
</html>