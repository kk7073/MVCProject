<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
        table{
            /* border: 1px solid black; */
            /* border-collapse: collapse; */
            margin : 0 auto;
        }
        /* td{
            border: 1px solid black; 

        } */
        input{
            border: 0px;
            border-bottom: 1px solid black;
            width: 400px;
            height: 40px;
            outline-style: none;
        }
        tr:nth-child(4) td{
            display: flex;
            flex-direction: column;
        }
        tr:nth-child(7) input{
            border : 0px;
            background-color: black;
            color: white;
            font-weight: 800;
        }
        #pwcmsg{
            display: none; 
            color: red;
            font-size: 12px;
        }

    </style>
    <script>
        
    function passwordCheck(){
        let pwo = document.getElementById("pworigin").value;
        let pwc = document.getElementById("pwcheck").value;
        let pwcmsg = document.getElementById("pwcmsg");

        if(pwo != "" && pwc == ""){
            null;
        }else if(pwo != "" || pwc != ""){
            if(pwo == pwc){
                pwcmsg.style.display = 'none';
            }else{
                pwcmsg.style.display = 'block';
            }
        }
    }
    
    function reg(){
    	let uname = document.getElementById("uname");
        let uid = document.getElementById("uid");
        let pwo = document.getElementById("pworigin");
        let pwc = document.getElementById("pwcheck");
        let tel = document.getElementById("tel");
        let addr = document.getElementById("addr");

        if(uname.value == ""){
            uname.focus();
            return false;
        }
        else if(uid.value == ""){
            alert("아이디를 입력하세요");
            uid.focus();
            return false;
        }else if(pwo.value != pwc.value){
            pwc.focus();
            return false;    
        }else if(tel.value == ""){
            tel.focus();
            return false;
        }else if(addr.value == ""){
            addr.focus();
            return false;
        }else{
            return true;
        }
        
    }
        
       
    </script>
</head>
<body>
    
    <form name="frm" action="/Teamproject/reg" method="post" onsubmit="return reg()">
        <table>
         	<tr>
                <td><input type="text" placeholder="이름" name="name" id="uname"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="아이디" name="uid" id="uid"></td>
            </tr>
            <tr>
                <td><input type="password" placeholder="비밀번호" name="pw" id="pworigin" onkeyup="passwordCheck()"></td>
            </tr>
            <tr>
                <td><input type="password" placeholder="비밀번호 확인" name="pwc" id="pwcheck" onkeyup="passwordCheck()">
                    <span id="pwcmsg">비밀번호가 일치하지 않습니다.</span></td>
            </tr>
            <tr>
                <td><input type="tel" placeholder="전화번호" name="tel" id="tel"></td>
            </tr>
            <tr>
                <td><input type="text" placeholder="주소" name="addr" id="addr"></td>
            </tr>
            <tr>
                <td><input type="submit" value="등록하기"></td>
            </tr>
        </table>
    </form>
</body>
</html>