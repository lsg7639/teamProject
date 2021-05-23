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
<h1 align="center">[관리자 모드] 회원 삭제 </h1>
<form action="manage_delete.jsp" method="post" id="checkForm">
<table border="1" width="100%"  >

		<tr bgcolor="#d396d3"  >	
			<th><input type="checkbox" id="allcheck" class="check" /></th>
			<th >id  &nbsp;</th>
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
		<th ><input type="checkbox" id="allcheck" name="checkRow" value="${content.IDX}" />
		<td align="center" name="checkRow"><a href="listDetailView.jsp?name=<%=member.getName()%>"><%=member.getId()%></a></td>
		<td align="center" name="checkRow"><%=member.getPasswd() %></td>
		<td align="center" name="checkRow"><%=member.getName()%></td>
		<td align="center" name="checkRow"><%=member.getReg_date() %></td>
		<td align="center" name="checkRow"><%=member.getTel() %></td>
		<td align="center" name="checkRow"><%=member.getAddress() %></td>			
		</th>	
	</tr>

<%} %>


</table>
<p>
<div align="center">
<input type="button" value="취소" onclick="location.href='manage_list.jsp'"  >
<input type="button" value="삭제" onclick="location.href='mamage_chkboxDelete.jsp'" >
</div>
</form>		



</body>
</html>