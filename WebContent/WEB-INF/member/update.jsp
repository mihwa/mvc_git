<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "member.MemberServiceImpl" %>
    <%@ page import = "member.MemberService" %>
    <%@ page import = "member.MemberBean" %>
    
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>내 정보 수정</title>
	<link rel="stylesheet" href="${css}/member.css"/>
</head>
<body>
	
	<div class="header">
	회원정보 변경 페이지
	</div>
	<div style="text-align : center">
	<%
	MemberService service = MemberServiceImpl.getInstanceImpl();
	MemberBean member = new MemberBean();
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
		member.setPw(pw);
		member.setEmail(email);
		service.update(member);
		%>
		<h1>회원정보 수정에 성공하였습니다.</h1><br/>
		
		<a href="${context}/member/member_controller.jsp"><img src="${img}/member.jpg" alt="member" style="width:30px" /></a>
	<a href="${context}/index.jsp"><img src="${img}/home.jpg" alt="home" style="width:30px" /></a>
		<%
		
	
	%>
	</div>
	<div class="footer">
	Copyright � hanbit academy
	</div>
</body>
</html>
