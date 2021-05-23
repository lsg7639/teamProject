<%@page import="admin.AdminDao"%>
<%@page import="admin.Admin"%>
<%@page import="board.dao.BoardDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <jsp:usebean id ="admindao" class="admin.AdminDao"/>   
<%
	
 	AdminDao ad = new AdminDao();
	String check = ad.adminCheck(id, passwd);
	if(adminCheck == 1){
		int result = ad.delete(board);
		
	}
%>    

	<script type="text/javascript">
		alert("관리자님께서 게시글 삭제를 실패했습니다!!");
		history.go(-1);
	</script>
<%-- 
<%} } %> --%>