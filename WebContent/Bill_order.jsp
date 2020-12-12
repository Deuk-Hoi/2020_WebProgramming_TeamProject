<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="userinfoDAO" class="com.webprogramming.project.UserInfoDAO"/>
<%
	JSONObject element = (JSONObject)userinfoDAO.UserOrderbill(request.getParameter("oid")).get(0);
%>
<!DOCTYPE html>
<html lang="en" style = "width: 520px; height: 641px;">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles/User_page_css/Bill_order.css">
    <title>영수증</title>
</head>
<body>
    <div id = "bill_head">
        <table id = "bill_table">
            <tr id = "bill_row">
                <td><h3>구매영수증</h3></td>
                <td>H.T.C Café</td>
            </tr>
        </table>
    </div>
    <div id = "subform">
        <table id = "bill_detail">
            <tr class = "detail_row">
                <td>주문번호</td>
                <td><%= (String)element.get("oid") %></td>
            </tr>
            <tr class = "detail_row">
                <td>상품명</td>
                <td><%= (String)element.get("orderList") %></td>
            </tr>
             <tr class = "detail_row">
                <td>합계</td>
                <td><%= (String)element.get("totalCost") %></td>
            </tr>
            <tr class = "detail_row">
                <td>픽업 여부</td>
                <td><%= (String)element.get("pickUp") %></td>
            </tr>
            <tr class = "detail_row">
                <td>예약 자리</td>
                <td><%= (String)element.get("seatNum") %></td>
            </tr>
            <tr class = "detail_row">
                <td>예약 시간</td>
                <td><%= (String)element.get("seatTime") %></td>
            </tr>
            <tr class = "detail_row">
                <td>구매자</td>
                <td><%= (String)element.get("userName") %></td>
            </tr>
        </table>
        <div id = "notice">구매 영수증은 세금계산서 등 세무상 증빙서류로 활용할 수 없으며, 거래내역 및 거래금액을 확인하는 용도로만 사용 가능합니다.</div>
        <div>
            <table id ="workplace_info">
                <tr>
                    <td><img width="175px" height="100px" alt="스탬프 사진" src="./images/main/logo.PNG"></td>
                    <td>
                        <ul type = none>
                            <li>충청남도 아산시 배방읍 호서로 79번길 20 (대표 김득회)</li>
                            <li>사업자 등록번호 : 111-11-0000</li>
                            <li>문의전화 : 041-000-0000 / 팩스 : 041-000-0000</li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
        <div id = "bill_button">
            <input type="button" value="인쇄" onclick="window.print();">
            <input type="button" value="확인" onclick="window.close();">
        </div>
    </div>
</body>
</html>