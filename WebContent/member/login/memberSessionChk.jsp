<%  
	String adminId ="";
	String path = application.getContextPath();
	adminId = (String)session.getAttribute("id");
	if(adminId == null || adminId.equals("")){
       response.sendRedirect(path+"/member/login/memberLoginForm.jsp");
	} 
%>