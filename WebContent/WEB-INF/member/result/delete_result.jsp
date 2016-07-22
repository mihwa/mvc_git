<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="member.MemberServiceImpl" %>
    <%@ page import="member.MemberService" %>
    <%@ page import="member.MemberBean" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${context}/css/member.css" />
</head>
<body>

<div class="box">
<embed src="${context}/img/송중기.gif">
<h1>탈퇴 페이지</h1>
<% 
	MemberService service = MemberServiceImpl.getInstanceImpl();
	MemberBean member = new MemberBean();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if(id.equals("")){
			%>
			<h2> 아디를 확인하세요</h2>
			<a href="../service/delete.jsp">다시 시도하기</a>
		
			<%
		}else {
			member.setId(id);
			
			String spec = service.delete(id);
			application.log("DB다녀온 이름:"+spec);
			if(spec.equals("")){
				%>
				<h2>로그인 실패!!</h2>
				<a href="../service/resgist.jsp">다시 시도하기</a>
				<%
			}else {
%>
				
				
				<br/><br /><br />
				그렇게.. 꼭 탈퇴를 했어야 했냐?? <%= request.getParameter("id") %> 님<br/>
<% 
			}
		}
		%>
	

<a href="${context}/memberController.jsp">
<img src="${context}/img/member.png" alt="member" style="width:30px" /></a>
<a href="${context}/index.jsp">
		<img src="${context}/img/home.png" alt="member" style="width:30px" />
		</a>

</div>
</body>
</html>
