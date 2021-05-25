<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:setProperty name="member" property="*"/>
<!-- 로그인이 되어있는지 체크 -->
<%@ include file="../member/login/memberSessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function submit2(){
		if(confirm("작성하신 글을 등록하시겠습니까?")){
			return true;
		}return false;
	}
	
	function reset(){
		if(confirm("입력하신 내용을 삭제하겠습니까?")){
			load();
			retrun true;
		}return false;
	}
	
	function load(){
		document.regForm.board_id.focus();
	}
</script>
</head>
<body>
	<div align="center">
	<h3>[게시판 글쓰기]</h3>
	<form action="joinBoard.jsp" method="post" name="regForm" onsubmit="return submit2()" onreset="return reset()">
		<table border="1">
			<tr>
				<th>작성자</th>
				<td><input type="text" name="board_id" maxlength="20" required="required" value="<%=(String)session.getAttribute("id")%>" readonly/></td>
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
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="등록"/>
					<input type="button" value="글 목록" onclick="location.href='boardList.jsp'" />
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>