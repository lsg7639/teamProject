<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 관리자 로그인이 되어있는지 체크 -->
<%@ include file="adminSessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자</title>
</head>
<body>
	<b>관리작업중.. </b>
	<input type="button" value="로그아웃" onclick="location.href='logon/adminLogout.jsp'"><br>
	<p><a href="./management/manage_list.jsp">회원 관리</a></p>
	<p><a href="./boardManage/adminBoard.jsp">게시판 관리</a></p>
</body>
</html>