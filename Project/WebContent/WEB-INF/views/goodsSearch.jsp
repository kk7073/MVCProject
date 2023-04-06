
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.dao.GoodsSearch" %>
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
    		let gno = document.getElementById("gno");
    		
    		if(gno.value == ""){
    			alert("상품번호는 필수 입력사항입니다.");
    			gno.focus();
    			return false;
    		}else if()
    		return true;
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
               <form name="editfrm" action="/project/goodsEdit" method="post">
	                <td><input type="text" value="<%= g.getGno() %>" name="editgno" readonly></td>
	                <td>
	                	<img src="<%= g.getImg() %>">
	                	<input type="text" value="<%= g.getImg() %>" name="editgimg">
	               	</td>
	                <td><input type="text" value="<%= g.getGname() %>" name="editgname"></td>
	                <td><input type="text" value="<%= g.getPrice() %>" name="editgprice"></td>
	                <td><input type="text" value="<%= g.getColor() %>" name="editgcolor"></td>
	                <td><input type="text" value="<%= g.getQty() %>" name="editgqty"></td>
	                <td>
	                	<input type="submit" value="수정">
	                	<a href = "/project/goodsDelete?gno=<%= g.getGno() %>">삭제</a>
               		</td>
             	</form>
            </tr>
            
            
            <% } %>
        </table>
	<form name="frm" action="/project/goodsSearch" method="post" onsubmit="return goodsInsert()">
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
