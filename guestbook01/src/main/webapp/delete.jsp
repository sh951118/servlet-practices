<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String password = request.getParameter("password");
	String no = request.getParameter("no");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(Integer.parseInt(no));
	vo.setPassword(password);

	new GuestbookDao().delete(vo);
	response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>