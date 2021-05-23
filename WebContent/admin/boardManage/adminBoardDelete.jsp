<%@page import="admin.AdminDao"%>
<%@page import="admin.Admin"%>
<%@page import="board.dao.BoardDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	AdminDao ad = AdminDao.getInstance();
	String id = request.getParameter("board_title");
	int result = ad.delete(board_title);
	if(result > 0){
		response.sendRedirect("adminMain.jsp");
	} else{
 	
%>    

	<script type="text/javascript">
		alert("관리자님께서 게시글 삭제를 실패했습니다!!");
		history.go(-1);
	</script>
<%
}%>