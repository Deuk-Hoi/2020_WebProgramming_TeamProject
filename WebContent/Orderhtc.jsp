<jsp:include page="header.jsp"></jsp:include>
<%@page contentType="text/html; charset=UTF-8" import="java.util.ArrayList" %>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.webprogramming.project.DatabaseManager"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="seattable" class="com.webprogramming.project.DatabaseManager"/>
<jsp:useBean id="userinfo" class="com.webprogramming.project.UserInfoDO"/>
<jsp:useBean id="userinfoDAO" class="com.webprogramming.project.UserInfoDAO"/>
<jsp:useBean id="setOrder" class = "com.webprogramming.project.OrderDO"/>
<jsp:useBean id="InsertOrder" class = "com.webprogramming.project.OrderDAO"/>
<jsp:setProperty name="setOrder" property="*"/>
<%
    ArrayList<String> list = (ArrayList)session.getAttribute("worldlist");
%> 
<%
    String wow="";
	int total = 0; 
	ArrayList cost = new ArrayList<Integer>();
    for(int i=0; i<list.size(); i++) {
    	wow += (list.get(i)+" ");
	}
    
    String a[]=wow.split(" ");
    wow = "";
    for(int i = 0; i < a.length; i++){
		if(i %2 == 0){
			wow += (a[i]+" ");
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
<%
	if((setOrder.getAb() != null)){
		if(InsertOrder.InsertOrd(setOrder, userinfo.getUserId()) == 1){
			out.print("<script>alert('주문 감사합니다.');location.href='./index.jsp';</script>");
		}
	}
%>
<%
	DatabaseManager dm = new DatabaseManager();
	String htcseat = dm.Loadseat();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
 <link rel="stylesheet" href="styles/Wow.css">
</head>
<body>
    <div id="pageImg">
		<div id = "pageImgTxt" align="center">
			<p class="page_title">H.T.C pay</p>
			<hr width="50px">
			<P class="page_letter"></P>
		</div>
	</div>
    <form accept-charset="UTF-8" method="POST">
    <div align="center">
    <table id="htctable">
    	<thead>
    		<th colspan="3" id="paymain">H.T.C pay</th>
    	</thead>
    	<tr>
    		<th>주문 내역</th>
    		<td>
    			<input type="text" name="ab" value="<%=wow %>" id="wowlist" readonly>
    		<td>
    			<select name="pickup" id="sel" onchange='hello()'>
    				<option name="cafe">매장 내 섭취</option>
    				<option name="takeout">Takeout</option>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<th>좌석 선택</th>
    		<td><img src=images/coffee/seat.png alt="" style="width:500px;height:500px;"></td>
    		<td colspan="2">
    			<%
            		JSONParser parser = new JSONParser();
            		Object o = parser.parse(htcseat);
            		JSONArray ja = (JSONArray)o;
               
              			for(int i = 0; i < ja.size(); i++){
                  			JSONObject hello = (JSONObject)ja.get(i);
         		%>
    			 <label>
    			 	<input type="checkbox" name=seatnum class="seatnum" value="<%=(String)hello.get("csname")%>"><%=(String)hello.get("csname")%><br>
    			 </label>
    		 	<%
            		}
           		%>
    		</td>
    	</tr>
    	<tr>
    		<th>예약</th>
    		<td>
    			<select name="cafetime" id="timesel">
    				<option value="10:00~12:00">10:00~12:00</option>
    				<option value="12:00~14:00">12:00~14:00</option>
    				<option value="14:00~16:00">14:00~16:00</option>
    				<option value="16:00~18:00">16:00~18:00</option>
    				<option value="18:00~20:00">18:00~20:00</option>
    				<option value="20:00~22:00">20:00~22:00</option>
   				</select>
    		</td>
    		<td>
    			Takeout 전용<br>
    		 	<input type="datetime" id="takeouttime" name="takeouttime">
    		</td>
    	</tr>
    	<tr>
    		<th>결제 수단</th>
    		<td colspan="2"></td>
    	</tr>
    	<tr>
    		<th>총 결제 금액</th>
    		<td colspan="2" id="univ">
    			<input type="text" name="price" value="<%=total %>" id="tex" readonly>원
    		</td>
    	</tr>
    </table>
    <div align="center">
    	<input type="submit" value="결제하기" class="orderbtn">
    </div>
    </div>
    </form>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>