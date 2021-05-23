<%@page import="member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="member.model.Member" />
<jsp:setProperty property="*" name="member"/>
<%
	MemberDao md = MemberDao.getInstance();
	int result = md.insert(member);
	if (result > 0) {
		response.sendRedirect("../../html/main.html");
	} else {
%>
		<script type="text/javascript">
		alert("회원 가입 실패 다시!");
		history.go(-1);
		</script>   
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>가입 완료</title>
</head>
<body>
</body>
</html>