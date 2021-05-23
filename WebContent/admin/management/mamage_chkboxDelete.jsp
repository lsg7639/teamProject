<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="member.model.Member"%>
<%@page import="member.dao.MemberDao"%>   
    
 <%
	MemberDao member = MemberDao.getInstance();
	String id = request.getParameter("id");
	int result = member.chk_delete(id);
	if(result > 0){
		response.sendRedirect("manage_list.jsp");
	}else{	
%>

<!-- <script type="text/javascript">
function checkAll(){
    if( $("#th_checkAll").is(':checked') ){
      $("td[name=checkRow]||input[name=checkRow] ").prop("checked", true);
    }else{
      $("td[name=checkRow]||input[name=checkRow]").prop("checked", false);
    }
}

function deleteAction(){
	  var checkRow = "";
	  $( "input[name='checkRow']:checked" ).each (function (){
	    checkRow = checkRow + $(this).val()+"," ;
	  });
	  checkRow = checkRow.substring(0,checkRow.lastIndexOf( ",")); //맨끝 콤마 지우기
	 
	  if(checkRow == ''){
	    alert("삭제할 대상을 선택하세요.");
	    return false;
	  }
	  console.log("### checkRow => {}"+checkRow);
	 
	  if(confirm("정보를 삭제 하시겠습니까?")){
	      
	      //삭제처리 후 다시 불러올 리스트 url      
	      var url = document.location.href;
	      var page = $("#page").val();
	      var saleType = $("#saleType").val();
	      var schtype = $("#schtype").val();
	      var schval = $("#schval").val();
	      location.href="${rc.contextPath}/test_proc.do?idx="+checkRow+"&goUrl="+url+"&page="+page+"&saleType="+saleType+"schtype="+schtype+"schval="+schval;      
	  }
	}



</script> -->





<!-- <script type="text/javascript">
 $(document).ready(function(){
	$("allcheck").change(function(){
		if(this.checked){
			$(".check").prop("checked",true);
		}else{
			$(".check").prop("checked",false);
		}
	});
	$("#checkForm").submit(function(){
		if($(".check").filter(":checked").size()==0){
			alert("회원 선택 되지 않았습니다.")
		};
		return false;
	});
		
 });
</script> -->
<%} %>