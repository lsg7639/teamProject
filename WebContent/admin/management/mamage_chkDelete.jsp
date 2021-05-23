<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>   
    
 <%
	MemberDao member = MemberDao.getInstance();
	String id = request.getParameter("id");
	int result = member.chk_delete(id);
	if(result > 0){
		response.sendRedirect("manage_list.jsp");
	}else{	
%>

<script type="text/javascript">
 $(document).ready(function(){
	$("allcheck").change(function(){
		if(this.checked){
			$(".check").prop("checked",true);
		}else{
			$(".check").prop("checked",false);
		}
	});
	$("#checkForm").submit(function(){
		if($(".check").filter(":checked").size()==0){
			alert("회원 선택 되지 않았습니다.")
		};
		return false;
	});
		
 });
</script>
<%} %>