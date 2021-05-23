<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:setproperty name="member" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function Submit(){
		if(confirm("작성하신 글을 등록하시겠습니까?")){
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
	<h3>[게시판 글쓰기]</h3>
	<form action="joinBoard.jsp" method="post" name="regForm" onsubmit="return Submit()" onreset="return Reset()">
		<table border="1">
			<tr>
				<th>작성자</th>
				<td><input type="text" name="board_id" maxlength="20" required="required" /></td>
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
				<td><input type="text" name="reg_date"maxlength="50" /></td>
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