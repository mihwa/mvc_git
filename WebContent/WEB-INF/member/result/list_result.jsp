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
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<div >
	<h2>리스트 페이지</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>이 름</th>
			<th>등록일</th>
			<th>생년월일</th>
		</tr>
		<tr>
			<td>lee</td>
			<td><a href="detail.jsp">이순신</a></td>
			<td>2016-07-01</td>
			<td>780121</td>
		</tr>
		<tr>
			<td>iu90</td>
			<td><a href="detail.jsp">아이유</a></td>
			<td>2016-07-01</td>
			<td>901212</td>
		</tr>
		<tr>
			<td>song</td>
			<td><a href="detail.jsp">송지효</a></td>
			<td>2016-07-01</td>
			<td>830505</td>
		</tr>
		<tr>
			<td>park</td>
			<td><a href="detail.jsp">박지성</a></td>
			<td>2016-07-01</td>
			<td>820120</td>
		</tr>
		<tr>
			<td>sin</td>
			<td><a href="detail.jsp">김유신</a></td>
			<td>2016-07-01</td>
			<td>560811</td>
		</tr>
	</table>
		<a href="${context}/member/member_controller.jsp"><img src="${context}/img/member.jpg" alt="user" style="width: 30px"/></a>
		<a href="${context}/index.jsp"><img src="${context}/img/home.jpg" alt="home" style="width: 30px"/></a>

	</div>
</body>
</html>