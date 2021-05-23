<%@page import="member.service.LoginCheck"%>
<%@page import="member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	if(LoginCheck.pass(id,passwd)){
		session.setAttribute("id", id);
		session.setAttribute("login", "yes");
	}
	String login = (String)session.getAttribute("login");
	if(login != null && login.equals("yes")){
		MemberDao md = MemberDao.getInstance();
		int result = md.delete1(id);
		if(result > 0){
			response.sendRedirect("list.jsp");
		}else{	
	
	
	
	
%>    
<script type="text/javascript">
	alert("회원탈퇴를 실패했습니다.");
	history.go(-1);
</script>
<%}}%>