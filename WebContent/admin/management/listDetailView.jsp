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

<h2 align="center">[관리자] 회원 상세 정보</h2>
<table border="1" width="50%"  align="center">
	<tr>
		<th colspan="2" bgcolor="#EAB1D4"> 회원 상세정보 </th>
	</tr>
	<tr>
		<th width="20%">id </th>
		<td align="center"><%=member.getId()%></td>
	</tr>		
	<tr>
		<th width="20%">password</th>
		<td align="center"> <%=member.getPasswd() %></td>
	</tr>	
	<tr>
		<th width="20%">이름</th>
		<td align="center"> <%=member.getName()%></td>
	</tr>	
	<tr>
		<th width="20%">가입일</th>
		<td align="center"><%=member.getReg_date() %></td>
	</tr>	
	<tr>
		<th width="20%">연락처</th>
		<td align="center"><%=member.getTel() %></td>
	</tr>
	<tr>
		<th width="20%">주소</th>
		<td align="center"><%=member.getAddress() %></td>
</table>
<%} else {out.print("회원 정보가 없습니다.");} %>
<br/>
<div align="center">
	<input type="button" value="회원 조회"  onclick="location.href='manage_list.jsp'" />
	<input type="button" value="회원 삭제" onclick="location.href='manage_delete.jsp?id=<%=member.getId()%>'" />
</div>	
</body>
</html>