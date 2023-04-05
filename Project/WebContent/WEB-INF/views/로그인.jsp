<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.net.*" %>
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
		padding: 5px;
	}
	td:nth-child(1){
		text-align: center;
	}
	
</style>
<script>

	function check(){
		let frm = document.frm;
		let id = frm.id;
		let pw = frm.pw;
		
		if( id.value == ""){
			alert("아이디를 입력하세요");
			return false;
		}else if( pw.value == ""){
			alert("비밀번호를 입력하세요");
			return false;
		}
		return true;
	}
	
</script>
</head>
<body>
<header></header>

<section>

<% 
	
%>

<form name="frm" action="/project/login" method="post" onsubmit="return check()">
<table>
<caption> 로그인 </caption>
<tr>
	<td> 아이디 </td>
	<td><input type="text" name="id"></td>
</tr>

<tr>
	<td> 비밀번호 </td>
	<td><input type="text" name="pw"></td>
</tr>

<tr>
<td colspan="2">
	<input type="submit" value="로그인">
	<a href="/WEB-INF/views/index.jsp"><input type="button" value="회원가입"></a>
</td>
</tr>

</table>
</form>
</section>


<footer></footer>
</body>
</html>