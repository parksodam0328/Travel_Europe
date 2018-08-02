<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="login.css">
<link rel="stylesheet" href="main.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
span#star{
	color:red;
}
</style>
</head>
<body>
<br><br><br><br><br>
<center>
<form action="signUpMember.jsp" method="post">
<div id="out">
	<div id="in">
		<table width="100%" align="center">
			<tr>
				<td><span style="font-size:20px; font-weight:900">회원가입</span></td>
			</tr>
		</table>
		<br>
		<table width="100%" align="center" style="border-top:2px solid #ffcccc; border-bottom: 2px solid #ffcccc;">
			<tr style="border-bottom:1px solid #ffcccc;">
				<td width="30%" style="padding-left:10px;" class="userInfor"><span id="star">*</span> 아이디</td><td width="70%" style="padding-left:10px;" ><input type="text" name="name" placeholder="띄어쓰기 없는 영문, 숫자로만 6~15자" maxlength="10" minlength="6" required>&nbsp;&nbsp;&nbsp;<input type="button" onclick="checkId()" value="중복확인"></td>
			</tr>
			<tr style="border-bottom:1px solid #ffcccc;">
				<td width="30%" style="padding-left:10px;" class="userInfor"><span id="star">*</span> 비밀번호</td><td width="70%" style="padding-left:10px;" ><input type="password" name="password" placeholder="띄어쓰기 없는 영문, 숫자로만 8~15자" maxlength="10" minlength="8" required></td>
			</tr>
			<tr style="border-bottom:1px solid #ffcccc;">
				<td width="30%" style="padding-left:10px;" class="userInfor"><span id="star">*</span> 이름</td><td width="70%" style="padding-left:10px;" ><input type="text" name="name" required></td>
			</tr>
			<tr style="border-bottom:1px solid #ffcccc;">
				<td width="30%" style="padding-left:10px;" class="userInfor"><span id="star">*</span> E-mail</td><td width="70%" style="padding-left:10px;" ><input type="email" name="email" placeholder="aaa@naver.com" required></td>
			</tr>
		</table>
		<table width="100%" align="center">
			<tr style="border-bottom:1px solid #ffcccc;">
				<td width="50%" align="right" style="padding:0px 5px;"><input type="submit" value="회원가입"></td><td width="50%" align="left" style="padding:0px 5px;"><input type="reset" value="다시입력"></td>
			</tr>
		</table>
		<br><br><br><br>
	</div>
</div>
</form>
</center>
</body>
</html>