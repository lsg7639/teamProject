<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="member.model.Member"  %>   
<!-- 관리자 로그인이 되어있는지 체크 -->
<%@ include file="../adminSessionChk.jsp" %>
  
<%
	if((session.getAttribute("adminId")== null) || (!((String)session.getAttribute("adminId")).equals("admin"))){
		out.println("<script>");
		out.println("location.href='adminLoginForm.jsp'");
		out.println("</script>");
	}
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		conn = pstmt.getConnection();
		String sql = "select * from board where board_num.nextval, "+
					"board_title, board_id, reg_date, board_count";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
	
%>
	<script type="text/javascript">
		alert("admin으로 로그인 하셨습니다.");
	</script>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 모드</title>
</head>
<body>
	<h2 align="center">게시판 목록</h2>
	<%
		while(rs.next()){
	%>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	 <tr height="1" bgcolor="#7B33A3"><td colspan="6"></td></tr>
 	<tr height="1" bgcolor="#8E37A2"><td colspan="6" width="752"></td></tr>
		<tr>
			<td>번호<%=rs.getInt("board_num.nextval") %></td>
			<td>제목<%=rs.getString("board_title") %></td>
			<td>작성자<%=rs.getString("board_id") %></td>
			<td><a href="adminBoardModifyForm.jsp">수정</a></td>
			<td><a href="adminBoardDelete.jsp"><%=rs.getString("board_id") %>삭제</a></td>
			
		</tr>
		<%} %>
	 <tr height="1" bgcolor="#7B33A3"><td colspan="6"></td></tr>
  <tr height="1" bgcolor="#8E37A2"><td colspan="6" width="752"></td></tr>
 </table>
	

</body>
</html>
<%
	}catch(Exception e){
		e.printStackTrace();
		}
%>