<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<form action="update.jsp" method="post">
            <tr>
                <td>아이디</td>
                <td>
                    <input type="text" name="userId" value="${member.id }" readonly="readonly"/>
                </td>
            </tr><br />
            <tr>
                <td>패스워드</td>
                <td>
                    <input type="text" name="pass" required="required" />
                </td>
            </tr><br />
            
        <tr>
            <td colspan="2">
                <input type="submit" value="수정" /> <br />
                <a href="./">로그아웃</a><br />
                <a href="./deleteMember?Id=${member.id}">회원탈퇴</a>
            </td>
        </tr>
    </form>
</table>
</body>
<script>
    //하나로 넘어올경우 변수에 담을 수 있다.
    var msg = "${msg}";
    
    if(msg != ""){
        alert(msg);
    }
</script>

</html>