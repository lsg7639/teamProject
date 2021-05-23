<%@page import="java.sql.Timestamp"%>
<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>   
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 
 
<%
	MemberDao member = MemberDao.getInstance();
	String id = request.getParameter("id");
	int result = member.delete(id);
	if(result > 0){
		response.sendRedirect("manage_list.jsp");
	
%>
<%-- <script type="text/javascript">   
	alert("<%=member %> 회원정보 삭제 완료");
	location.href = 'manage_list.jsp';
</script> --%>



<%}else{	 %>
<script type="text/javascript">
	alert("회원 정보 삭제 되지 않았습니다.")
	history.go(-1);
</script>

> 

<%} %>