<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "member.MemberServiceImpl" %>
    <%@ page import = "member.MemberService" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>로그아웃</title>
	<link rel="stylesheet" href="${context}/css/member.css" />
	
</head>
<body>
<div class="header">
<h1>로그아웃 페이지</h1>
</div>
<div style="text-align: center">
	<%
	MemberService service = MemberServiceImpl.getInstanceImpl();
	if(service.getSession() == null||service.getSession().getId() == null){
		%><h1>먼저 로그인을 해주세요</h1><br/>
		<a href="${context}/member/service/login.jsp">로그인 하시겠습니까?</a><br/><br/>
		<%
	}else{
		%>
		<form action="${context}/member/result/logout.jsp" method="post">
		정말 로그아웃 하시겠습니까?<br/><br/>
		<input type="hidden" name="id" value="<%=service.getSession().getId()%>">
		<input type="hidden" name="pw" value="<%=service.getSession().getPw()%>">
		<input type="submit" value="로그아웃"><br/><br/>
		<a href="${context}/member/member_controller.jsp"><img src="${img}/member.jpg" alt="member" style="width:30px" /></a>
	<a href="${context}/global/main.jsp"><img src=""${img}/home.jpg" alt="home" style="width:30px" /></a>
		<%
	}
	
	%>
	</form>
	</div>
		<div class="footer">
	Copyright � hanbit academy
	</div>
</body>
</html>
