function LoginCheck(obj){
	if(!obj.d.value || obj.id.value.trim().length == 0){
		alert("아이디가 입력되지 않았습니다.");
		obj.id.value="";
		obj.id.focus();
		return false;
	}
	if(!obj.passwd.value ||obj.passwd.value.trim().lenght ==0){
		alert("비밀번호를 입력하세요");
		obj.passwd.value="";
		obj.passwd.focus();
		return false;
	}
	return true;
}