<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>
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
<h1>[관리자 모드] 회원 삭제 </h1>
<form action="manage_delete.jsp" method="post" id="checkForm">
<table border="1" width="700px" >

		<tr bgcolor="#d396d3">	
			<th><input type="checkbox" id="allcheck" class="check" /></th>
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
		<th><input type="checkbox" id="allcheck" /></th>
		<td><a href="listDetailView.jsp?name=<%=member.getName()%>"><%=member.getId()%></a></td>
		<td><%=member.getPasswd() %></td>
		<td><%=member.getName()%></td>
		<td><%=member.getReg_date() %></td>
		<td><%=member.getTel() %></td>
		<td><%=member.getAddress() %></td>			
	</tr>

<%} %>


</table>
<p>
<input type="button" value="취소" onclick="location.href='manage_list.jsp'" >
<input type="button" value="삭제" onclick="location.href='mamage_chkDelete.jsp'">
</form>		



</body>
</html>