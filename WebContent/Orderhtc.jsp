<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
 <link rel="stylesheet" href="styles/Wow.css">
</head>
<body>
	<div class="banner">
        <p class="bannertext">Order</p>
    </div>
    <div align="center">
    <table class="htctable">
    	<thead>
    		<th colspan="3">htcpay</th>
    	</thead>
    	<tr>
    		<td>주문 내역</td>
    		<td><label><input type="radio" name="pickup" value="매장">매장</label></td>
    		<td><label><input type="radio" name="pickup" value="TakeOut">TakeOut</label></td>
    	</tr>
    	<tr>
    		<td>좌석 선택</td>
    		<td><img src=images/coffee/seat.png alt="" style="width:500px;height:500px;"></td>
    		<td>
    			<select name="seatnum" style="width:130px;">
    				<option>1</option>
    				<option>2</option>
    				<option>3</option>
    				<option>4</option>
    				<option>5</option>
    				<option>6</option>
    				<option>7</option>
    				<option>8</option>
    				<option>9</option>
    				<option>10</option>
    				<option>11</option>
    				<option>12</option>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td>시간 선택</td>
    		<td>
    			<select name="seatnum" style="width:130px;">
    				<option>10:00~12:00</option>
    				<option>12:00~14:00</option>
    				<option>14:00~16:00</option>
    				<option>16:00~18:00</option>
    				<option>18:00~20:00</option>
    				<option>20:00~22:00</option>
   				</select>
    		</td>
    		<td>
    		 	/*TakeOut 이용 고객만 사용해 주시길 바랍니다.*/
    			<input type="time" name="pickuptime">
    		</td>
    	</tr>
    	<tr>
    		<td>멤버쉽 혜택</td>
    		<td colspan="2"></td>
    	</tr>
    	<tr>
    		<td>결제 수단</td>
    		<td colspan="2"></td>
    	</tr>
    	<tr>
    		<td>총 결제 금액</td>
    		<td colspan="2"></td>
    	</tr>
    </table>
    </div>
</body>
</html>