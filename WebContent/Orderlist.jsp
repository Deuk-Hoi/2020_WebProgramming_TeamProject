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
</head>
<body>
	<div id="pageImg">
		<div id = "pageImgTxt" align="center">
			<p class="page_title">Cart</p>
			<hr width="50px">
			<P class="page_letter">고객님의<br>장바구니 입니다.</P>
		</div>
	</div>
    <table align="center" id="ordertable" style="padding-top:30px;">
    	<thead class="word">
    		<td colspan="3">
    			만약 내가 여자라면 나는 커피를 향수로 뿌리고 다닐것이다. - 존 반드루텐
    		</td>
    	</thead>
    	<tbody>
    		<tr>
				<th colspan="2" id="list1">주문 목록</th>
				<th id="list2">상품 금액</th>
			</tr>
			<%
				for(int i=0; i<bbb.size() ;i++){
			%>
			<tr>
    			<th colspan="2">
    				<input type="text" name="cart" value="<%=(String)bbb.get(i) %>" class="cartnow" readonly>
    			</th>
    			<th>
    				<input type="text" name="cartcost" value="<%=cost.get(i) %>" class="cartco" readonly>원
    			</th>
    		</tr>
    		<%
				}
    		%>
    	</tbody>
    	<tfoot>
    		<tr>
    			<td colspan="3">
    				합계 금액&nbsp;<input type="text" name="cartcost" value="<%=total %>" id="cartmay" readonly>원
    			</td>
    		</tr>
    	</tfoot>
    </table>
    
    <div align="center">
    	<input type="button" onClick="history.back()" value="뒤로가기" class="orderbtn">
		<input type="button" value="이동하기" class="orderbtn" onclick="window.open('Orderhtc.jsp')">
    </div>
</body>
</html>