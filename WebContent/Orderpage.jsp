<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order</title>
    <link rel="stylesheet" href="styles/Order.css">
</head>
<body>
    <div id="pageImg">
		<div id = "pageImgTxt" align="center">
			<p class="page_title">Order</p>
			<hr width="50px">
			<P class="page_letter">H.T.C Cafe에서 함께하는 한잔의 여유</P>
		</div>
	</div>
    <ul id="menu">
        <li class="menubar"><a href="OrderHot.jsp" target="_self">Hot</a></li>
        <li class="menubar"><a href="OrderIce.jsp"target="_self">Ice</a></li>
        <li class="menubar"><a href="OrderNonCoffee.jsp"target="_self">NonCoffee</a></li>
        <li class="menubar"><a href="OrderBakery.jsp"target="_self">Bakery</a></li>
    </ul>
    
    <div align="center">
		<input type="button" value="장바구니 이동" class="orderbtn" onclick="window.open('Orderlist.jsp')">
    </div>
</body>
</html>
