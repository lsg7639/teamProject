<%@page import="board.model.Board"%>
<%@page import="board.dao.BoardDao"%>
<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="admin.AdminDao"%>    
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
	String board_title = request.getParameter("board_title"); 
	BoardDao bd = BoardDao.getInstance();
	Board board = bd.selectBoard(board_title);
	session.setAttribute("Board", board);
	if(board !=null){ 
%>

<h2 align="center"> [ 글 상세 ]</h2>
<table border="1" width="50%"  align="center" >
	<tr>
		<th colspan="2" bgcolor="#EAB1D4"> 글 보기 </th>
	</tr>
	<tr>
		<th width="20%">board_num </th>
		<td align="center"><%=board.getBoard_num()%></td>
	</tr>		
	<tr>
		<th width="20%">board_title</th>
		<td align="center"> <%=board.getBoard_title() %></td>
	</tr>	
	<tr>
		<th width="20%">board_id</th>
		<td align="center"> <%=board.getBoard_id()%></td>
	</tr>	
	<tr>
		<th width="20%">reg_date</th>
		<td align="center"><%=board.getReg_date() %></td>
	</tr>	
</table>
<%} else {out.print("회원 정보가 없습니다.");} %>
<br/>
<div align="center">
	<input type="button" value="목록"  onclick="location.href='boardList.jsp'" />
	<input type="button" value="수정" onclick="location.href='updateBoardForm.jsp?board_title=<%=board.getBoard_title()%>'" />
	<input type="button" value="삭제" onclick="location.href='deleteBoard.jsp?board_title=<%=board.getBoard_title()%>'" />
</div>	
</body>
</html>