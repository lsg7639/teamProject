<%@page import="board.model.Board"%>
<%@page import="java.util.List"%>
<%@page import="board.dao.BoardDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="member.model.Member"%>
<!-- 관리자 로그인이 되어있는지 체크 -->
<%@ include file="../adminSessionChk.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 모드</title>
</head>
<body>
	<h2 align="center">게시판 목록</h2>

	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr height="1" bgcolor="#7B33A3">
			<td colspan="6"></td>
		</tr>
		<tr height="1" bgcolor="#8E37A2">
			<td colspan="6" width="752"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>제목</td>
			<td>등록일</td>
		</tr>
		<%
			BoardDao bd = BoardDao.getInstance();
			List<Board> list = bd.selectBoardList();
			for (Board board : list) {
		%>
		<tr>
			<td><%=board.getBoard_id()%></td>
			<td><%=board.getBoard_title()%></td>
			<td><%=board.getReg_date()%></td>
			<td><a href="adminBoardDelete.jsp?board_title=<%=board.getBoard_title()%>">삭제</a></td>
		</tr>
		<tr height="1" bgcolor="#7B33A3">
			<td colspan="6"></td>
		</tr>
		<tr height="1" bgcolor="#8E37A2">
			<td colspan="6" width="752"></td>
		</tr>
		<%
			}
		%>
	</table>
	<div align="center">
		<span><button><a href="../adminMain.jsp">HOME</a></button></span>
	</div>
</body>
</html>