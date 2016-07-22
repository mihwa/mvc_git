<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="member.MemberServiceImpl" %>
    <%@page import="member.MemberService" %>
    <%@page import="member.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="${context}/css/member.css"/>

</head>
<body>
	<div class="box">
	<h2>검색(이름) 페이지</h2><br/>
		<a href="${context}/member/member_controller.jsp"><img src="${context}/img/member.jpg" alt="user" style="width: 30px"/></a>
		<a href="${context}/index.jsp"><img src="${context}/img/home.jpg" alt="home" style="width: 30px"/></a>

	</div>
</html>