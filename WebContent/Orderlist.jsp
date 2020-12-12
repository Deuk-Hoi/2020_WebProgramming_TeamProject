<jsp:include page="header.jsp"></jsp:include>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONArray"%><%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList"%>
<jsp:useBean id="userinfo" class="com.webprogramming.project.UserInfoDO"/>
<jsp:useBean id="userinfoDAO" class="com.webprogramming.project.UserInfoDAO"/>
<% request.setCharacterEncoding("UTF-8"); %>
<% ArrayList<String> list = (ArrayList) session.getAttribute("worldlist"); %>
<%
    String wow="";
	String money2="";
	int total = 0; 
	ArrayList cost = new ArrayList<Integer>();
    for(int i=0; i<list.size(); i++) {
    	wow += (list.get(i)+" ");
	}
    ArrayList bbb=new ArrayList<String>();
    String a[]=wow.split(" ");
    wow = "";
    for(int i = 0; i < a.length; i++){
		if(i %2 == 0){
			wow += (a[i]+" ");
			bbb.add(a[i]);
    	}
    	else{
    		cost.add(Integer.parseInt(a[i]));
    		money2 += (a[i]+" ");
    	}
    }
    for(Object money : cost){
    	total += (int)money;
    }
%>
<%
	userinfo.setUserId((String)session.getAttribute("userId"));
	JSONObject element = (JSONObject)userinfoDAO.SelectUserInfo(userinfo.getUserId()).get(0);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니</title>
    <link rel="stylesheet" href="styles/Order.css">
    
    <style>
        #bill_head{
            background-color: rgb(53, 59, 75);
        }
        #bill_table{
            width: 100%;
        }
        #bill_row{
            width: 100%;
        }
        #bill_row td:nth-child(1){
            text-align: left;
            padding-left: 20px;
            color: #06dd02;
        }
        #bill_row td:nth-child(2){
            text-align: right;
            padding-right: 20px;
            color: white;
            font-weight: bold;
        }
        #subform{
            margin: 15px;
        }
        #bill_detail{
            width: 100%;
            border-collapse: collapse;
           
        }
        .detail_row{
            width: 100%;
        }
        .detail_row td{
            border: 1px solid lightgray;
            padding: 15px;
        }
        .detail_row td:nth-child(1){
            width: 30%;
            background-color: lightgray;
        }
        .detail_row td:nth-child(2){
            width: 70%;
            font-size: 14px;
        }
        #notice{
            font-size: 11px;
            margin-top: 10px;
            color: #b5b8c1;
        }
        #workplace_info{
            width: 100%;
            border-bottom: 1px solid lightgray;
        }
        #workplace_info td:nth-child(1){
            width: 40%;
        }
        #workplace_info td:nth-child(2){
            width: 60%;
        }
        #workplace_info tr>td ul{
            font-size: 11px;
            line-height: 2em;
            padding: 0;
            color: gray;
        }
        #bill_button{
            text-align: center;
            margin-top: 10px;
        }
        #bill_button input:nth-child(1){
            margin-right: 10px;
            padding: 5px 15px 5px 15px;
            color: white;
            background-color: rgb(22, 190, 11);
            border: 1px solid rgb(22, 190, 11);
            border-radius: 2px;
        }
        #bill_button input:nth-child(2){
            margin-right: 10px;
            padding: 5px 15px 5px 15px;
            background-color: rgb(231, 231, 231);
            border: 1px solid rgb(231, 231, 231);
            border-radius: 2px;
        }
    </style>
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
                <td>주문목록</td>
                <td><%= wow %></td>
            </tr>
            <tr class = "detail_row">
                <td>상품 금액</td>
                <td><%= money2 %></td>
            </tr>
             <tr class = "detail_row">
                <td>총 합계</td>
                <td><%= total %></td>
            </tr>
            
        </table>
        <div id = "notice">구매 영수증은 세금계산서 등 세무상 증빙서류로 활용할 수 없으며, 거래내역 및 거래금액을 확인하는 용도로만 사용 가능합니다.</div>
        
        <div id = "bill_button">
            <input type="button" value="취소"   class="orderbtn" onclick="window.open('index.jsp')">
            <input type="button" value="이동하기" class="orderbtn" onclick="window.open('Orderhtc.jsp')">
        </div>
    </div>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>