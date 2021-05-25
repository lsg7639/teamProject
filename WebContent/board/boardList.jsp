<%@page import="board.model.Board"%>
<%@page import="java.util.List"%>
<%@page import="board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>

<body>
	<h2 align="center">게시판 목록</h2>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr height="1" bgcolor="#7B33A3"><td colspan="6"></td></tr>
 		<tr height="1" bgcolor="#8E37A2"><td colspan="6" width="752"></td></tr>
 
		<tr style="text-align:center;">
			<td >번호</td>
			<td >제목</td>
			<td >작성자</td>
			<td >작성일</td>
		</tr>

	<%
		BoardDao bd = BoardDao.getInstance();
		List<Board> list = bd.selectAll();
		for(Board board : list){
	%>
  
		<tr>
			<td><%=board.getBoard_num() %></td>
			<td><a href="updateBoardDetailView.jsp?board_title=<%=board.getBoard_title() %>"><%=board.getBoard_title() %></a></td>
			<td><%=board.getBoard_id() %></td>
			<td><%=board.getReg_date() %></td>
		</tr>
  
 		<%}%>
 	</table>
 
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr><td colspan="4" height="5"></td></tr>
		<tr align="center">
		<td><a href='joinBoardForm.jsp'><input type=button value="글쓰기"></a></td>
		<td><a href='../main/main_Login.jsp'><input type=button value="홈으로"></a></td>
		</tr>
	</table>

</body>
</html>