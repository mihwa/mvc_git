<%@page import="member.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "member.MemberService" %>
    <%@ page import = "member.MemberServiceImpl" %>
    <%@ page import = "member.MemberBean" %>
	<% MemberService service = MemberServiceImpl.getInstanceImpl();%>

<!DOCTYPE html>
<html lang=en>
<head>
<meta charset="UTF-8">
<title>회원 상세 정보</title>

<link rel="stylesheet" href="${context}/css/member.css"/>
<style type="text/css">
div.box1 {
    border: 5px solid powderblue;
    padding: 30px;
    margin: 0 auto;
    width: 600px;
    text-align: center;
}
	#member_detail{border: 1px solid gray; width: 90%;height: 300px; margin: 0 auto;border-collapse: collapse;}
	#member_detail tr{border: 1px solid gray;height: 20%}
	#member_detail tr td{border: 1px solid gray;}
	.font_bold{font-weight: bold;}
	.bg_color_yellow{background-color:yellow}
</style>
</head>
<body>
<div class="box">
<!-- 	//id,age,name,regDate,gender,profileImg -->
	<h2>회원 상세정보</h2>
	<table id = "member_detail">
		<tr>
			<td rowspan="4" style ="width:30%">
			<img src="${context}/img/태후.jpg" alt="W3Schools.com" width="104" height="142"></td>
			<td style ="width:20%" class="font_bold bg_color_yellow">ID</td>
			<td style="width: 40%"></td>
		</tr>
		<tr>
			<td class="font_bold bg_color_yellow">이름</td>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td class="font_bold bg_color_yellow">성별</td>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td class="font_bold bg_color_yellow">이메일</td>
			
			<td colspan="2"></td>
		
		</tr>
		<tr>
			<td class="font_bold bg_color_yellow">생년월일</td>
						<td colspan="2"></td>
			
		</tr>
		<tr>
			<td class="font_bold bg_color_yellow">등록일</td>
			<td colspan="2"></td>
		</tr>
	</table>
	
	
		<br/><a href="${context}/member/member_controller.jsp"><img src="${img}/member/${member.profileImgs}.jpg" alt="user" style="width: 30px"/></a>
		<a href="${context}/index.jsp"><img src="${img}/home.jpg" alt="home" style="width: 30px"/></a>

	</div>
</body>
</html>