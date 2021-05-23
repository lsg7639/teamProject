<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="admin.AdminDao"  %>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String name = request.getParameter("name");
	MemberDao md = MemberDao.getInstance();
	Member member = md.select(name);
	session.setAttribute("Member", member);
	if(member !=null){ 
%>

<h2>[관리자] 회원 상세 정보</h2>
<table border="1" width="300px" text-align= "center">
	<tr>
		<th width="25%">id </th>
		<td><%=member.getId()%></td>
	</tr>		
	<tr>
		<th width="25%">password</th>
		<td> <%=member.getPasswd() %></td>
	</tr>	
	<tr>
		<th width="25%">이름</th>
		<td> <%=member.getName()%></td>
	</tr>	
	<tr>
		<th width="25%">가입일</th>
		<td><%=member.getReg_date() %></td>
	</tr>	
	<tr>
		<th width="25%">연락처</th>
		<td><%=member.getTel() %></td>
	</tr>
	<tr>
		<th width="25%">주소</th>
		<td><%=member.getAddress() %></td>
</table>
<%} else {out.print("회원 정보가 없습니다.");} %>
<br/>
	<input type="button" value="회원 조회" onclick="location.href='manage_list.jsp'" />
	<input type="button" value="회원 삭제" onclick="location.href='manage_delete.jsp?id=<%=member.getId()%>'"/>
</body>
</html>