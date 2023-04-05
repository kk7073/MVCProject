<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="model.dao.Goods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	ul{
        width: 640px;
        display: flex;
        flex-wrap: wrap;
        margin: 0 auto;
      }
	li{
		border: 1px solid black;
		width: 200px;
		height: 200px;
		margin: 3px;
	    list-style:none;
	    text-align: center;
	    }
	img{
		width: 150px;
		height: 150px;
		object-fit: contain;
	}
</style>
</head>
<body>
<header></header>
<section>
<ul>
<%
	
	ArrayList<Goods> list = (ArrayList<Goods>)request.getAttribute("list");

	for( Goods goods : list ){
	
%>
<li>
	<%=goods.getGno()%>
	<img src="<%= goods.getImg()%>">
	<%= goods.getGname()%>
	<%= goods.getPrice()%>
	<%= goods.getColor()%>
	<%= goods.getQty()%>

</li>
<%} %>
</ul>
</section>
<footer></footer>
</body>
</html>