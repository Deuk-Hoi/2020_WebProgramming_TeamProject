<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport"content = "width = device-width, initial-scale = 1">
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Supports.css">
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Customer_Sound.css">
<title>고객의 소리</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<section>
		<div id="pageImg">
			<div id = "pageImgTxt" align="center">
				<p class="page_title">고객의 소리</p>
				<hr width="50px">
				<P class="page_letter">H.T.C 카페에 전하고 싶은 불만, 칭찬을 보내주세요.<br>항상 고객의 소리에 귀 기울이며 고객만족 향상을 위해 노력 하겠습니다.</P>
			</div>
			<div class="contents">
				<div id="pageLocation">
					<p>Home > 고객센터 > 고객의 소리</p>
				</div>
				<div id="Customer_Accept" align="center">
					<p class = "title_theme">고객의 소리 접수채널</p>
					<hr width="30px" size="4" color="black">
					
					<ul id = "sol_process">
						<li>1. 매장 및 인터넷 전화 등 다양한 채널을 통해 접수</li>
						<li>2. 고객의 소리 접수, 관할 부서/담당자에게 통보</li>
						<li>3. 공정거래 위원회 고시 소비자 분쟁 해결 기준에 의거하여 처리</li>
					</ul>
				</div>
				<div style="text-align: center;">
					<ul id="Customer_Accept_info" type = "none">
						<li>
							<img src="images/supportImg/customer_accept_info1.gif">
							<h3>매장</h3>
							<div class="title_notice">방문매장 확인</div>
							<div class="notice">매장 위치를 검색하세요</div>
							<a href="#">확인하기</a>
						</li>
						<li>
							<img src="images/supportImg/customer_accept_info2.gif">
							<h3>인터넷</h3>
							<div class="title_notice">www.htcafe.com</div>
							<div class="notice">상담접수 시간 : 24시간</div>
							<a href="./Q&A.jsp">접수하기</a>
						</li>
						<li>
							<img src="images/supportImg/customer_accept_info3.png">
							<h3>FAQ</h3>
							<div class="title_notice">자주하는 질문</div>
							<div class="notice">H.T.C 카페에 자주하는 질문</div>
							<a href="./FAQ.jsp">확인하기</a>
						</li>
					</ul>				
				</div>
			</div>
			<div class = "contents" align="center">
				<p class = "title_theme">소비자분쟁 해결 기준</p>
				<hr width="30px" size="4" color="black">
				
				<table id="dispute_sol_table" border="1">
					<thead></thead>
					<tbody>
						<tr>
							<th class = "th1">구분</th>
							<th class = "th2">유형</th>
							<th class = "th3">해결기준</th>
						</tr>
						<tr>
							<td rowspan="6">식품</td>
							<td>제품 불량</td>
							<td rowspan="5">제품 교환 또는 구입가 환불</td>
						</tr>
						<tr>
							<td>함량, 용량 부족</td>
						</tr>
						<tr>
							<td>부패 변질</td>
						</tr>
						<tr>
							<td>유통기간 경과</td>
						</tr>
						<tr>
							<td>이물 혼입</td>
						</tr>
						<tr>
							<td>부작용, 상해사고</td>
							<td>치료비, 경비 및 일실소득</td>
						</tr>
					</tbody>
					<tfoot></tfoot>
				</table>
			</div>
		</section>
	</main>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>