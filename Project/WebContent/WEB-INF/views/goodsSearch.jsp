<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="teamproject.GoodsSearch" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
        table{
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            margin: 0 auto;
        }

        td{
            border: 1px solid blue;
        }
        img{
            width: 100px;
            height: 100px;
        }
    </style>
    <script>
    	function goodsInsert(){
    		
    	}
    </script>
</head>
<body>
    
        <table>
            <tr>
                <td>상품번호</td>
                <td>상품이미지</td>
                <td>상품이름</td>
                <td>가격</td>
                <td>색상</td>
                <td>수량</td>
            </tr>
            <%
            	ArrayList<GoodsSearch> list = (ArrayList<GoodsSearch>) request.getAttribute("list");
                        	for(GoodsSearch g : list){
            %>
            
            <tr>
                <td><%= g.getGno() %></td>
                <td><img src="<%= g.getImg() %>"></td>
                <td><%= g.getGname() %></td>
                <td><%= g.getPrice() %></td>
                <td><%= g.getColor() %></td>
                <td><%= g.getQty() %></td>
                <td>
                	<input type="button" value="수정">
                	<input type="button" value="삭제">
               	</td>
            </tr>
            <% } %>
        </table>
	<form name="frm" action="/Teamproject/goodsSearch" method="post" onsubmit="return goodsInsert()">
        <table>
            <tr>
                <td>상품번호</td>
                <td>상품이미지</td>
                <td>상품이름</td>
                <td>가격</td>
                <td>색상</td>
                <td>수량</td>
            </tr>
            <tr>
                <td><input type="text" name="gno" id="gno"></td>
                <td><input type="text" name="gimg" id="gimg"></td>
                <td><input type="text" name="gname" id="gname"></td>
                <td><input type="text" name="gprice" id="gprice"></td>
                <td><input type="text" name="gcolor" id="gcolor"></td>
                <td><input type="text" name="gqty" id="gqty"></td>
                
            </tr>
            <tr>
                <td colspan="6">
                    <input type="submit" value="추가">
                    <input type="reset" value="취소">
                </td>
            </tr>
        </table>
    </form>


</body>
</html>