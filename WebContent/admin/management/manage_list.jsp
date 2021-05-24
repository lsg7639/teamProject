<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="admin.AdminDao"  %>    
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 관리자 로그인이 되어있는지 체크 -->
<%@ include file="../adminSessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">[관리자] 회원 목록</h1>
<table border="1" width="100%" >
		<tr  bgcolor="#d396d3">
			<th>id  &nbsp;</th>
			<th>password  &nbsp;</th>
			<th>이름  &nbsp;</th>
			<th>가입일  &nbsp;</th>
			<th>연락처  &nbsp;</th>
			<th>주소  &nbsp;</th>
		</tr> 
	
<%
	MemberDao md = MemberDao.getInstance();
	List<Member> list = md.selectListAll();
	
	for(Member member : list){	
%>	
	<tr>
		<td align="center"><a href="listDetailView.jsp?name=<%=member.getName()%>"><%=member.getId()%></a></td>
		<td align="center"><%=member.getPasswd() %></td>
		<td align="center"><%=member.getName()%></td>
		<td align="center"><%=member.getReg_date() %></td>
		<td align="center"><%=member.getTel() %></td>
		<td align="center"><%=member.getAddress() %></td>
	</tr>
	

<%} %>
</table>
<br>
<div align="center">
	<span><button><a  href="../adminMain.jsp">HOME</a ></button></span>
	<span><button><a href="manage_deletForm.jsp">삭제</a></button></span>
</div>
</body>
</html>

