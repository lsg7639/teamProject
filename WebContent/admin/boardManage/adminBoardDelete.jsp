<%@page import="admin.AdminDao"%>
<%@page import="admin.Admin"%>
<%@page import="board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<%
      BoardDao bd = BoardDao.getInstance();
      String title = request.getParameter("board_title");
      int result = bd.deleteBoardList(title);
      if(result > 0){
         response.sendRedirect("adminBoard.jsp");
      } else {
%>
	<script type="text/javascript">
		alert("게시글 삭제 실패");
		history.go(-1);
	</script>
<%
}%>