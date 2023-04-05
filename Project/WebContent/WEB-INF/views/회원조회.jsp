<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList" %>


<%@ page import="model.dao.Member" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	table{
		border: 1px solid black;
		margin: 0 auto;
	}
	td{
		border: 1px solid black;
	}
</style>
</head>
<body>
	<form>
	<table>
	<caption> 회원 조회 </caption>
	<tr>
	<td> 고객번호 </td>
	<td> 고객명 </td>
	<td> 고객아이디 </td>
	<td> 고객비밀번호 </td>
	<td> 휴대폰번호 </td>
	<td> 포인트 </td>
	<td> 등급 </td>
	<td> 주소 </td>
	</tr>
	<% 
		ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
	
		for( Member member : list ){
		
		
	%>
	<tr>
	<td><%=member.getMno()%></td>
	<td><%=member.getMname()%></td>
	<td><%=member.getId()%></td>
	<td><%=member.getPw()%></td>
	<td><%=member.getTel()%></td>
	<td><%=member.getPoint()%></td>
	<td><%=member.getGrade()%></td>
	<td><%=member.getAddr()%></td>
	</tr>
	<%} %>
	</table>
	</form>
</body>
</html>