<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.dao.Orderlist" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
      .Myinfo_ul {
        background-color: rgb(130, 188, 226);
        color: rgb(255, 255, 255);
        border-width: 1px 1px 1px 0px;
        border-top-style: solid;
        border-right-style: solid;
        border-bottom-style: solid;
        border-top-color: rgb(119, 174, 209);
        border-right-color: rgb(119, 174, 209);
        border-bottom-color: rgb(119, 174, 209);
        border-image: initial;
        border-left-style: initial;
        border-left-color: initial;
        height: 122px;
        font-weight: 100;
        font-style: normal;
        box-sizing: border-box;
      }

      .Myinfo_item {
        position: relative;
        float: left;
        min-width: 156px;
        height: 120px;
        padding: 19px 0px 0px 30px;
        border-right: 1px solid rgb(155, 201, 232);
        border-left: 1px solid rgb(120, 173, 208);
        box-sizing: border-box;
        list-style: none;
      }
      .order_container {
        height: 800px;
      }
      .table-box {
        border-radius: 8px;
        border: 1px solid rgb(238, 238, 238);
        background-color: rgb(255, 255, 255);
        margin-top: 16px;
      }
    </style>
</head>
<body>
 <div class="Myinfo">
      <ul class="Myinfo_ul">
        <li class="Myinfo_item">
          <strong>MY에이콘</strong>
        </li>
        <li class="Myinfo_item">
          <strong>이름</strong>
          <div class="Myinfo_Container">
            <a href="#">
              <span class="i18n-wrapper">
                <span class="number">0</span>
                <span class="unit">장</span></span
              >
            </a>
          </div>
        </li>
        <li class="Myinfo_item">
          <strong>등급</strong>
          <div class="Myinfo_Container">
            <a href="#">
              <span class="i18n-wrapper">
                <span class="number">0</span>
                <span class="unit">장</span></span
              >
            </a>
          </div>
        </li>
        <li class="Myinfo_item">
          <strong>포인트</strong>
          <div class="Myinfo_Container">
            <a href="#">
              <span class="i18n-wrapper">
                <span class="number">0</span>
                <span class="unit">장</span></span
              >
            </a>
          </div>
        </li>
      </ul>
    </div>

    <table>
    	<tr>
    		<td>사진</td>
    		<td>이름</td>
    		<td>가격</td>
    		<td>색상</td>
    		<td>날짜</td>
    		<td>수량</td>
    	</tr>
    
    
    <% ArrayList<Orderlist> list = (ArrayList<Orderlist>) request.getAttribute("list"); 
       for(Orderlist ao : list){
    	   
       
    %>
    	<tr>
    		<td><img src=<%= ao.getImg()%>> </td>
    		<td><%= ao.getGname() %></td>
    		<td><%= ao.getPrice() %></td>
    		<td><%= ao.getColor() %></td>
    		<td><%= ao.getOdate() %></td>
    		<td><%= ao.getAmt() %></td>
    	</tr>
    	<%} %>
    </table>
   
</body>
</html>