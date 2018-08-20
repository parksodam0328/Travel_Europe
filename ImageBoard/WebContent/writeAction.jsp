<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.bbs.BbsDAO" %>	
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="com.board.bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" /> 
<jsp:setProperty name="bbs" property="bbsContent" />
<jsp:setProperty name="bbs" property="bbsImage" />
  

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
<%
	 String realFolder ="";
	String filename="";
	MultipartRequest imageUp = null;
	String saveFolder="imageFile";
	String encType="UTF-8";
	int maxSize=2*1024*1024;
	ServletContext context = getServletContext();
	realFolder = context.getRealPath(saveFolder);
	String userID = null;
	try{
		imageUp = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		Enumeration files = imageUp.getFileNames();
		while(files.hasMoreElements()){
			String name=(String)files.nextElement();
			filename = imageUp.getFilesystemName(name);
			//System.out.println(filename);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	//if(imageUp ==null) System.out.println("null");
	if(session.getAttribute("userID") != null){//유저아이디이름으로 세션이 존재하는 회원들은 
		userID = (String) session.getAttribute("userID");//유저아이디에 해당 세션값을 넣어준다.
	}

	
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}else{
		String bbsTitle = imageUp.getParameter("bbsTitle");
		String bbsContent = imageUp.getParameter("bbsContent");
		String bbsImage = imageUp.getParameter("bbsImage");
		bbs.setBbsTitle(bbsTitle);
		bbs.setBbsContent(bbsContent);
		bbs.setBbsImage(filename);
		System.out.print(bbsImage);
		if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null|| bbs.getBbsImage() == null){
			 PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			BbsDAO BbsDAO = new BbsDAO();
			int result = BbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent(),  bbs.getBbsImage());
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패했습니다')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href='bbs.jsp'");
				script.println("history.back()");
				script.println("</script>");
			}
		
	}

	
		
	}
	
%>
</body>
</html>