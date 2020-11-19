<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>move</title>
</head>
<style>
    .orderbtn{
        background-color: black;
        color:white;
        width:100pt;
        height:70pt;
    }
</style>
<body>
    <h1 align="center">주문목록 페이지로 이동하시겠습니까?</h1>
    
    <input type="button" value="이동하기" class="orderbtn" onclick="window.open('Orderlist.jsp')">
    <input type="button" value="닫기" class="orderbtn" onclick="window.close()">
</body>
</html>