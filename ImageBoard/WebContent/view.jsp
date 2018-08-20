<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>	
<%@ page import="com.board.bbs.Bbs" %>	
<%@ page import="com.board.bbs.BbsDAO" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
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
td{
	
	background-color:#fff;
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
</style>
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
		int bbsID = 0 ;
		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다..')");
			script.println("location.href = bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		 String realFolder ="";
		 String saveFolder="iamgeFile";
		 ServletContext context = getServletContext();
			realFolder = context.getRealPath(saveFolder);
			System.out.print(realFolder);
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
			 	<table width="60%" style="text-align:center;" align="center" cellspacing=0>
			 		
			 			<tr height="600px">
			 				<td><img width="80%" height="500px" src="imageFile/<%=bbs.getBbsImage() %>"></td>
			 			</tr>
			 			<tr height="60px">
			 				<td><b><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("/n","<br>")%></b></td>
			 			</tr>
			 			
			 			<tr height="100px">
			 				<td style="min-height:200px; text-align:center;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("/n","<br>")%></td>
			 			</tr>
			 			<tr height="60px">
			 				<td><%= bbs.getUserID() %></td>
			 			</tr>
			 	</table>
			 	<%
				 		if(userID != null && userID.equals(bbs.getUserID())){
				 	%>
			 	<table width="60%" style="text-align:center;" align="center" cellspacing=0>
			 		<tr>
			 			<td width="23%"><a href="bbs.jsp"><input type="button" value="목록"></a></td>
			 			<td width="23%"><a href="update.jsp?bbsID=<%= bbsID %>"><input type="button" value="수정"></a></td>
			 			<td width="23%"><a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%= bbsID %>"><input type="button" value="삭제"></a></td>
			 		</tr>
			 	</table> 
			 	<br><br><br>	
				 	<% 		
				 		}else{%>
				 			<table width="60%" height="300px" style="text-align:center;" align="center" cellspacing=0>
					 		<tr>
					 			<td width="100%"><a href="bbs.jsp"><input type="button" value="목록"></a></td>
					 			
					 		</tr>
					 	</table> 
				 		<%}
				 	%>
	<br><br><br>
	
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
<script src="js/bootstrap.min.js"></script> 
</body>
</html>