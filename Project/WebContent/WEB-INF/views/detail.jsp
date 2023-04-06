<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.dao.Goods" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        #order{
            display: flex;
            margin: 0 auto;
        }
        #infobox{


        }
    </style>
    
<% 
	Goods goods = (Goods)request.getAttribute("item");
	System.out.println(goods);
	
%>
<script>
	function checkAmt(){
		let amt = document.getElementById("amt").value;
		if(amt><%=goods.getQty()%>){
			alert("주문가능 수량을 초과했습니다")
			return false;
		}else{
			return true;
		}
	}
</script>
</head>

<body>
    <section>
    <form id="frm" action="/project/order" method="post" onsubmit="return checkAmt()">
        <div id="order">
            <img src="<%=goods.getImg()%>">
            <div id="infobox">
                <h2><%=goods.getGname() %></h2>
                <p>색상: <span><%=goods.getColor() %></span></p>
                <p>가격: <span><%=goods.getPrice()%></span></p>
           		<p>주문가능 수량: <input type="hidden" name="qty" value="<%=goods.getQty() %>"><span><%=goods.getQty() %> 개</span>
                <p>주문수량: <input type="hidden" name="gno" value="<%=goods.getGno() %>"><input type="text" id="amt" name="amt"></p>
                <input type="submit" value="주문하기"></input>
            </div>
        </div>
     </form>
    </section>
</body>
</html>