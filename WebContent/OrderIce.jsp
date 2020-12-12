<jsp:include page="header.jsp"></jsp:include>
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
	String menu = dm.LoadorderIce();
%>
<!DOCTYPE html>
<%@page contentType="text/html; charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ice</title>
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
        <li class="menubar"><a href="OrderHot.jsp">Hot</a></li>
        <li class="menubar"><a href="OrderIce.jsp">Ice</a></li>
        <li class="menubar"><a href="OrderNonCoffee.jsp">NonCoffee</a></li>
        <li class="menubar"><a href="OrderBakery.jsp">Bakery</a></li>
    </ul>
	<hr width="800px">
   <form action="Orderaction.jsp" method=post>
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
            	<label><input type="checkbox" name="hoseo" value="<%=(String)element.get("menuName")%> <%=(String)element.get("price")%>"><%=(String)element.get("menuName")%></label>
            	<br>
            	<%=(String)element.get("price")%>원
            </div>
        	<%
				}
        	%>
    </div>    	
    <div align="center">
    	<input type="submit" value="주문하기" class="orderbtn" >
    	<input type="button" value="장바구니 이동" class="orderbtn" onclick="window.open('Orderlist.jsp')">
    </div>
    </form>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>