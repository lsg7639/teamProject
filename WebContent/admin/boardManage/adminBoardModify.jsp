<%@page import="board.model.Board"%>
<%@page import="admin.AdminDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <jsp:usebean id="admin" class="admin.Admin"/>
  <jsp:setProperty property="*" name="admin" />
  
  <%
  	Board board = new Board();
  	AdminDao ad = AdminDao.getInstance();
  int result = ad.updateAdminBoard(board);
  if(result>0){
	  response.sendRedirect("adminMain.jsp");
  }else{
  %>
  
  <script type="text/javascript">
  	alert("관리자님, 게시판 수정에 실패하셨습니다.");
  	history.go(-1);
  	
  </script>
  <%}%>