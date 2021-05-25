<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../member/login/memberSessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>

</head>
<body>
	<form action="updateMember.jsp" method="post">
		<p>
			아이디:<br/><input type="text" name="id" value = "<%=(String)session.getAttribute("id")%>" readonly/>
		</p>
		<p>
			비밀번호:<br/><input type="password" name="passwd">
			<c:if test="${errors.passwd}">암호를 입력하세요.</c:if>
		</p>
		<p>
			암호 확인:<br/><input type="password" name="confirmPasswd">
			<c:if test="${errors.confirmPasswd}">확인을 입력하세요.</c:if>
			<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if>
		</p>
		<p>
			이름:<br/><input type="text" name="name" >
			<c:if test="${errors.name}">이름을 입력하세요.</c:if>
		</p>
		<p>
			연락처:<br/><input type="text" name="tel" >
			<c:if test="${errors.tel}">연락처를 입력하세요.</c:if>
		</p>
		<p>
			주소:<br/><input type="text" name="address" >
			<c:if test="${errors.address}">주소를 입력하세요.</c:if>
		</p>
		<input type="submit" value="수정"/>
	</form>
</body>
</html>