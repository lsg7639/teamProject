<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>    
<%	
	session.invalidate(); 
%>
<script type="text/javascript">
    alert("로그아웃 되었습니다.");
	location.href="memberLoginForm.jsp";
</script>
	