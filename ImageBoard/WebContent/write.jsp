<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/custorm.css">
<title>Travelstagram</title>
<style>
img{
	opacity:0.7;
}
img:hover{
	opacity:1.0;
}
body{background:#F6F6F6}
a,a:hover {
	color: #000000;
	text-decoration: none;
}
input[type=button]{
	width: 77.8%;
    padding: 8px 0;
    margin: 2px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    background-color:#8EBAFB;
    color:#fff;
    font-weight:700;
}

input[type=text]{
	width: 100%;
    padding: 9px 0;
    margin: 2px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-weight:700;
}
textarea{
	width: 100%;
    padding: 9px 0;
    margin: 2px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-weight:700;
}
input[type=submit]{
	width: 100%;
    padding: 9px 0;
    margin: 2px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    color:#fff;background-color:#8EBAFB;
    font-weight:700;
}
</style>
</head>
<body>
	<!-- 로그인이 된 사람들의 세션을 만들어 준다. 
		 회원값이 있는 사람들은 userID에 정보가 담기게 되고
		 아닌 사람은 null값을 가지게 된다.
	-->
	<%
	//request.setCharacterEncoding("UTF-8");
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
<header width="100%" style="margin-top:15px;text-align: center;"><span style="font-size:30px; font-weight:900; "><a href="main.jsp">Travelstagram</a></span></header>
	
	<%
				if(userID == null){
			%>
			<!-- 접속하기는 로그인안한 사람만 보여주게하기 -->
	<div style="margin-top:5px;margin-right:10%;text-align: right;"><span style="font-size:14px; font-weight:500; "><a href="login.jsp">로그인</a> | <a href="join.jsp">회원가입</a></span></div>
			
			 <% 
				}else{
			 %>	
			 <div style="margin-top:5px;margin-right:10%;text-align: right;"><span style="font-size:14px; font-weight:500; "><a href="logoutAction.jsp"><%=userID %>님 로그아웃</a></span></div>		
			 <%	

				}

		   	 %><br><br>

		 	<form method="post" action="writeAction.jsp" enctype="multipart/form-data">

			 	<table width="70%" style="text-align:center;" align="center" cellspacing=1>
			 			<tr>
			 				<td style="background-color:#8EBAFB;border-radius: 4px;color:#fff;">제목</td><td><input type="text" class="form-control" placeholder="제목" name="bbsTitle" maxlength="50"></td>

			 			</tr>

			 			<tr>	

			 				<td style="background-color:#8EBAFB;border-radius: 4px;color:#fff;">내용</td><td><textarea class="form-control" placeholder="내용" name="bbsContent" maxlength="2048" style="height:350px"></textarea> </td>

			 			</tr>	

						<tr>	

			 				 <td style="background-color:#8EBAFB;border-radius: 4px;color:#fff;">사진</td><td><input type="file" class="form-control" name="bbsImage" ></td> 
			 			</tr>
			 		</tbody>

			 	</table>

				 <table width="70%" align="center">
				 	<tr><td width="100%"><input type="submit" value="글쓰기"></td></tr>
				 </table>

			</form>

	

	

	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	

<script src="js/bootstrap.min.js"></script> 

</body>

</html>