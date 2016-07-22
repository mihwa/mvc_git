<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
<title>ID 검색</title>
<link rel="stylesheet" href="${css}/member.css"/>
<style>
	iframe.ifrm{border:none; width:250px; height: 250px;}
	span.meta{width: 200px; background-color:yellow; float: center}
</style>
</head>
<body>
<div class ="header">
<h1>회원 검색</h1>
</div>
	<div style="text-align: center">
	
	<form action="${context}/member/result/find_by.jsp" method="post">
	<span class="meta">검색할 ID를 입력해주세요</span><input type="text" name="id"> <br/><br/>
	<input type="submit" value="검색">
	<input type="reset" value="취소">
	</form>
	<a href="${context}/member/member_controller.jsp"><img src="${img}/member.jpg" alt="member" style="width:30px" /></a>
	<a href="${context}/global/main.jsp"><img src="${img}/home.jpg" alt="home" style="width:30px" /></a>
	</div>
		<div class="footer">
	Copyright � hanbit academy
	</div>
</body>
</html>
