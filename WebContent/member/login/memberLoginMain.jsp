<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.dao.MemberDao"%>    
<%@page import="member.model.Member"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%   
	request.setCharacterEncoding("utf8");
	String id = (String) session.getAttribute("id"); 
	
%>
<div align="right">
<input type="submit"  value="로그아웃" onclick="location.href='memberLogout.jsp'" /><br>
</div>
<h2 align="center"> <%=id %> 님 환영합니다.</h2>
<div align="center">
<input type="submit"  value="게시판" onclick="location.href='../../board/boardList.jsp'"/><br>
</div>
</body>
</html>