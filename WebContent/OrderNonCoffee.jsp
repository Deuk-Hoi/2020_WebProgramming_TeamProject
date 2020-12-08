<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.webprogramming.project.DatabaseManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="menudb" class="com.webprogramming.project.DatabaseManager"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	DatabaseManager dm = new DatabaseManager();
	String menu = dm.LoadorderNonCoffee();
%>
<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Non Coffee</title>
    <link rel="stylesheet" href="styles/Order.css">
</head>
<body>
    <div class="banner">
        <p class="bannertext">Order</p>
    </div>
    <ul id="menu">
        <li class="menubar"><a href="OrderHot.jsp">Hot</a></li>
        <li class="menubar"><a href="OrderIce.jsp">Ice</a></li>
        <li class="menubar"><a href="OrderNonCoffee.jsp">NonCoffee</a></li>
        <li class="menubar"><a href="OrderBakery.jsp">Bakery</a></li>
    </ul>
    <hr width="800px">
    <div class="moly">
        <%
				JSONParser parser = new JSONParser();
				Object o = parser.parse(menu);
				JSONArray ja = (JSONArray)o;
					
					for(int i = 0; i < ja.size(); i++){
						JSONObject element = (JSONObject)ja.get(i);
			%>
			<div class="cof">
				<img src="images/coffee/<%=(String)element.get("img")%>" alt=""><br>
            	<label><input type="checkbox" name="world"><%=(String)element.get("menuName")%></label>
            </div>
        	<%
				}
        	%>
    </div>
    <div align="center">
    	<a href="Orderchoose.jsp" onclick="window.open(this.href, '_blank', 'width=500px, height=500px, toolbars=no, scrollbars=yes'); return false">
			<input type="button" value="주문하기" class="orderbtn">
    	</a>
    
		<input type="button" value="장바구니 이동" class="orderbtn" onclick="window.open('Orderlist.jsp')">
    </div>
</body>
</html>