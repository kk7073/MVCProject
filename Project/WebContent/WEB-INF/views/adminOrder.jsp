<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.dao.adminOrder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h2>회원 주문 조회</h2>
	<table>
		<tr>
			<td>주문번호</td>
			<td>상품이름</td>
			<td>수량</td>
			<td>고객번호</td>
			<td>고객명</td>
			<td>총가격</td>
			<td>날짜</td>
		</tr>

<% 
	ArrayList<adminOrder> list = (ArrayList<adminOrder> ) request.getAttribute("list");
	for(adminOrder ao : list){

%>
		<tr>
			<td><%= ao.getOno()%></td>
			<td><%=ao.getGname() %></td>
			<td><%=ao.getAmt() %></td>
			<td><%=ao.getMno() %></td>
			<td><%=ao.getMname() %></td>
			<td><%=ao.getPrice() %></td>
			<td><%=ao.getDate() %></td>
		</tr>
<%} %>
	</table>

</body>
</html>