<%@page import="board.dao.BoardDao"%>
<%@page import="board.model.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인이 되어있는지 체크 -->
<%@ include file="../member/login/memberSessionChk.jsp" %>
<%
      BoardDao bd = BoardDao.getInstance();
      String title = request.getParameter("board_title");
      int result = bd.deleteBoardList(title);
      if(result > 0){
         response.sendRedirect("boardList.jsp");
      } else {
%>
	<script type="text/javascript">
		alert("게시글 삭제 실패");
		history.go(-1);
	</script>
<%}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>