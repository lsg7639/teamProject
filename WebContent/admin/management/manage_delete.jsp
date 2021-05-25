<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDao member = MemberDao.getInstance();
	String id = request.getParameter("id");
	int result = member.delete(id);
	if(result > 0){
		response.sendRedirect("manage_list.jsp");
}else{
%>
<script type="text/javascript">
	alert("회원 정보 삭제 되지 않았습니다.")
	history.go(-1);
</script>
<%
} %>