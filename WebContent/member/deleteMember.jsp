<%@page import="member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	MemberDao md = MemberDao.getInstance();
	String id = request.getParameter("id");
	int result = md.delete1(id);
	if(result > 0){
		response.sendRedirect("list.jsp");
	}else{

%>

    
<script type="text/javascript">
	alert("회원탈퇴를 실패했습니다.");
	history.go(-1);
</script>
<%}%>