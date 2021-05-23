<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<script type="text/javascript">
	function chk() {
		if (!form1.id.value) {
			alert("관리자 아이디를 입력하세요");
			form1.id.focus();
			return false;
		}
		if (!form1.passwd.value) {
			alert("관리자 비밀번호를 입력하세요");
			form1.passwd.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<h2>관리자 로그인</h2>
	<form method="post" action="adminLoginPro.jsp" name="form1" onsubmit="return chk()">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" maxlength="12"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="passwd" maxlength="12"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="로그인"></td>
			</tr>
		</table>
	</form>
</body>
</html>