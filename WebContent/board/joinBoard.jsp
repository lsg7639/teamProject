<%@page import="java.io.PrintWriter"%>
<%@page import="board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="board" class="board.model.Board"/>
    <jsp:setProperty property="*" name="board"/>    
    
    
    <%
    
    	//현재 세션 상태 체크
    	String id = null;
    	if(session.getAttribute("id") != null){
    		id=(String)session.getAttribute("id");
    	}
    	
    	//로그인을 한 사람만 글 쓸수 있게
    	if(id == null){
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('로그인을 하세요')");
    		script.println("location.href='../member/login/memberLoginForm.jsp'");
    		script.println("</script>");
    	}else{
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('글쓰기 성공')");
    		script.println("location.href='boardList.jsp'");
    		script.println("</script>");
    	}
    
    
    	/* BoardDao bd = BoardDao.getInstance();
    	int result = bd.insert(board);
    	if(result > 0){
    		response.sendRedirect("boardList.jsp");
    	} else { */
    %>
    
    <script type="text/javascript">
    	alert("게시판 글쓰기를 실패했습니다.");
    	history.go(-1);
    </script>
