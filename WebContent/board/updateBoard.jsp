<%@page import="java.io.PrintWriter"%>
<%@page import="board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="board" class="board.model.Board"/>
<jsp:setProperty property="*" name="board"/>    
<%
	BoardDao md = BoardDao.getInstance();
	int result = md.update(board);
	if (result > 0) {
		response.sendRedirect("boardList.jsp");
	} else {
%>
		<script type="text/javascript">
		alert("게시판 수정 실패");
		history.go(-1);
		</script>   
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<title>작성 완료</title>
</head>
<body>
</body>
</html>    