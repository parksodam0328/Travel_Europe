<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.board.bbs.BbsDAO" %>	
<%@ page import="com.board.bbs.Bbs" %>	
<%@ page import="java.util.ArrayList" %>	
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
	border:1px solid #bcbcbc;
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
		int pageNumber = 1;
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
			 <div style="margin-top:5px;margin-right:12%;text-align: right;"><span style="font-size:14px; font-weight:500; "><a href="logoutAction.jsp"><%=userID %>님 로그아웃</a></span></div>		
			 <%	

				}

		   	 %><br><br>
		   	 <center>
<a href="write.jsp"><input type="button" value="글쓰기"></a>
</center>
<center>
		 	<table width="80%" height="80%" style="text-align:center;"  cellspacing=20>
				<tr height="350px">
		 			<%
		 				BbsDAO bbsDAO = new BbsDAO();
		 				ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
		 				for(int i=0; i < list.size(); i++){
		 			%>
		 				<%if((i+1)%3==0) {%>
		 			<td width="26%">
		 				<a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><img width="80%" height="280px" src="imageFile/<%=list.get(i).getBbsImage()%>"></a>
		 			</td>
		 		</tr>	
					<tr height="350px">
					<%}else{%><td width="26%"><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><img width="80%" height="280px" src="imageFile/<%=list.get(i).getBbsImage()%>"></a></td><%} %>
					
		 			<%		

		 				}

		 			%>

		 	</table>
</center>
		 	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
<script src="js/bootstrap.min.js"></script> 
</body>
</html>

