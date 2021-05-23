<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="member.model.Member"  %>   
  
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
	
	<p>회원 관리 메뉴 </p>
	<input type="button" value="회원 조회" onclick="location.href='management/manage_list.jsp'" />
	
	<p>게시판 관련 작업</p>
	<p><a href="boardProcess/boardRegister.jsp">게시판 등록</a></p>
	<p><a href="boardProcess/boardList.jsp?board_title=all">게시판수정/삭제</a></p>

</body>
</html>