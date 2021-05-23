<%  
	String adminId ="";
	String path = application.getContextPath();
	adminId = (String)session.getAttribute("adminId");
	if(adminId == null || adminId.equals("")){
       response.sendRedirect(path+"/admin/logon/adminLoginForm.jsp");
	} 
%>