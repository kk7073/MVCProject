<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
        .wrap{
            text-align: center;
        }
        #wrap2{
            width: 800px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            text-align: center;
            
        }

        .button{
            width: 200px;
            height: 300px;
            border: 1px solid;
            padding: 130px 0 130px 0;
            box-sizing: border-box;
        }

    </style>
</head>
<body>
    <div class="wrap">
        <h2>관리자 메뉴</h2>
        <div id="wrap2" class="wrap">
            <a href="/project/adminOrder"><div class="button">주문조회</div></a>
            <a href="/project/adminOrder"><div class="button">회원조회</div></a>
            <a href="/project/goodsSearch"><div class="button">상품조회 및 관리</div></a>
        </div>
    </div>
</body>
</html>