<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>order</title>
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
    <h1 align="center">이 상품을 주문 하시겠습니까?</h1>
    <input type="text" name="count" size="30px">개
    
    <a href="Order.jsp" onclick="window.open(this.href, '_blank', 'width=500px, height=500px, toolbars=no, scrollbars=yes'); return false">
		<input type="button" value="주문하기" class="orderbtn">
    </a>
    <input type="button" value="닫기" class="orderbtn" onclick="window.close()">
</body>
</html>

