<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="admin.AdminDao"  %>    
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>[관리자] 회원 목록</h1>
<table border="1" width="700px" >
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
		<td><a href="listDetailView.jsp?name=<%=member.getName()%>"><%=member.getId()%></a></td>
		<td><%=member.getPasswd() %></td>
		<td><%=member.getName()%></td>
		<td><%=member.getReg_date() %></td>
		<td><%=member.getTel() %></td>
		<td><%=member.getAddress() %></td>
	</tr>
	

<%} %>
</table>
<br>
	<span><button><a  href="../adminMain.jsp">HOME</a ></button></span>
	<span><button><a href="manage_deletForm.jsp">삭제</a></button></span>

</body>
</html>

