<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="login/memberSessionChk.jsp"%> --%>

<!DOCTYPE html>
<html>
<head>

<title>마이페이지</title>
<%
	String id = request.getParameter("id");
	MemberDao md = MemberDao.getInstance();
	Member member = md.selectById(id);
	session.setAttribute("Member", member);
	if (member != null) {
%>
</head>
<body>
		<table border="1" width="50%" align="center">
			<tr>
				<th colspan="2" bgcolor="#EAB1D4">마이 페이지</th>
			</tr>
			<tr>
				<th width="20%">id</th>
				<td align="center"><%=member.getId()%></td>
			</tr>
			<tr>
				<th width="20%">password</th>
				<td align="center"><%=member.getPasswd()%></td>
			</tr>
			<tr>
				<th width="20%">이름</th>
				<td align="center"><%=member.getName()%></td>
			</tr>
			<tr>
				<th width="20%">가입일</th>
				<td align="center"><%=member.getReg_date()%></td>
			</tr>
			<tr>
				<th width="20%">연락처</th>
				<td align="center"><%=member.getTel()%></td>
			</tr>
			<tr>
				<th width="20%">주소</th>
				<td align="center"><%=member.getAddress()%></td>
		</table>
		<%} else {out.print("회원 정보가 없습니다.");}%>
	<div align="center">
		<input type="button" value="수정" onclick="location.href='updateMemberForm.jsp?id=<%=member.getId()%>'" />
		<input type="button" value="회원탈퇴" onclick="location.href='deleteMember.jsp?id=<%=member.getId()%>'" />
	</div>
</body>
</html>