<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="admin.AdminDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		String sql = "select * from board where  "+
					"board_title, board_id, reg_date, board_count";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();

%>
<script type="text/javascript">

	function Submit(){
		if(confirm("작성하신 글을 수정하시겠습니까?")){
			return true;
		}return false;
	}
	
	function Reset(){
		if(confirm("입력하신 내용을 삭제하겠습니까?")){
			Load();
			retrun true;
		}return false;
	}
	
	function Load(){
		document.regForm.board_id.focus();
	}
</script>
</head>
<body>
	<div align="center">
	<h3>[게시판 수정]</h3>
	<form action="joinBoard.jsp" method="post" name="regForm" onsubmit="return Submit()" onreset="return Reset()">
		<%
			while(rs.next()){
		%>
		<table border="1">
			<tr>
				<th>작성자</th>
				<td><input type="text" name="board_id" maxlength="20" value="<%=rs.getString("board_id") %>" readonly="readonly" /></td>
			</tr>
		
			<tr>
				<th>제목</th>
				<td><input type="text" name="board_title" maxlength="50" required="required" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="10" cols="50" name="board_content"required="required"></textarea>
				</td>
			</tr>
			<tr>
				<th>등록일</th>
				<td><input type="date" name="reg_date"  /></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="수정"/>
				</td>
			</tr>
				<%} %>
		</table>
	</form>
</div>
<%
	}catch(Exception e){
		e.printStackTrace();
		}
%>
</body>
</html>