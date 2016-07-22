<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="member.MemberService" %>
    <%@page import="member.MemberServiceImpl" %>
    <%@page import="member.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="${context}/css/member.css"/>

<style>
body {background-color: yellow;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
<body>
	<div class="box">
	<embed width="100%" height="60px" src="${context}/img/desert.jpg"/>
	<h2>내정보보기(ID) 페이지</h2>
	<img src="${context}/img/w3schools.jpg" alt="W3Schools.com" width="104" height="142">
		<a href="${context}/member/member_controller.jsp"><img src="${context}/img/member.jpg" alt="user" style="width: 30px"/></a>
		<a href="${context}/index.jsp"><img src="${context}/img/home.jpg" alt="home" style="width: 30px"/></a>

	</div>
	</body>
</html>