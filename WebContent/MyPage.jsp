<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<jsp:useBean id="userinfo" class="com.webprogramming.project.UserInfoDO"/>
<jsp:useBean id="userinfoDAO" class="com.webprogramming.project.UserInfoDAO"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	userinfo.setUserId((String)session.getAttribute("userId"));
	JSONObject element = (JSONObject)userinfoDAO.SelectUserInfo(userinfo.getUserId()).get(0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이 페이지</title>
<link rel="stylesheet" type="text/css" href="styles/User_page_css/MyPage.css">
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<main>
		<section id="mypageSection">
			<div id="pageImg">
				<div id = "pageImgTxt" align="center">
					<p class="page_title">나의 멤버십 이용현황</p>
					<hr width="50px">
					<P class="page_letter">My Member's Status</P>
					<P class="page_letter">고객님의 H.T.C 카페 멤버스 서비스 이용현황입니다.</P>
				</div>
			</div>
			<div class="contents">
				<div id="userSummary">
					<div class = "summaryLeft">
						<table class = "stamp_table">
							<tr>
								<td><img alt="스템프 사진" src="./images/userInfoImg/stamp_state.png"></td>
								<td class = "stamp_info">스탬프 현황<br><span id ="stampNum" class = "currentStamp"></span> <sapn class = "totalStamp">/12</sapn></td>
							</tr>
						</table>
						<table class = "coupon_table">
							<tr>
								<td><img alt="쿠폰 사진" src="./images/userInfoImg/coupon.png"></td>
								<td class = "stamp_info">보유 쿠폰<br><span id ="couponNum" class = "currentCoupon"></span></td>
							</tr>
						</table>
					</div>
					<div class = "summaryRight">
						<table>
							<tr>
								<td><img id = "rankImg" alt="등급사진"></td>
								<td><span id = "userName" style="font-weight: bold;"></span> 회원님은<br>
								<span id= "rankColor" class="rank_color"><span id="rank"></span> Level</span> 입니다.</td>
							</tr>
						</table>
						<div class = "userinfo">
							<p>이메일 : <span id="userEmail"></span></p>
							<p>휴대폰 : <span id="userPhone"></span></p>
							<p>이름 : <span id="userinfoName"></span></p>
						</div>
						<div id="modifyButton">
							<input type="button" value="회원정보 수정  >" onclick="location.href='ModifyUserInfo.jsp'">
						</div>
					</div>
				</div>
				<div id = "stamp_area">
					<div class="stamp_notice">
						<h2>스탬프 발급 현황 &nbsp;</h2>
						<span>스탬프 12개를 수집하시면 딸기요거트 스무티 + 초코 쉬폰케이크 무료 쿠폰을 발급해 드립니다.</span>
					</div>
					<div id = "coupon">
						<div class = "couponList">
							<%
								for(int i = 0; i < 12; i++){
									if(i < Integer.parseInt((String)element.get("stampNum"))){
							%>
										<img alt="쿠폰 사진" src="./images/userInfoImg/coupon_stamp.png">
							<%
									}else{
							%>
										<img alt="쿠폰 사진" src="./images/userInfoImg/coupon_nostamp.png">
							<%
									}
								}
							%>
						</div>
					</div>
				</div>
				<div id = "MemberShip">
					<div class = "Benefits">
						<h2>H.T.C 멤버십 혜택</h2>
					</div>
					<table>
						<tr>
							<td class = "Benefit_img"><img alt="스탬프 사진" src="./images/userInfoImg/benefit.png"></td><td class="Benefit_contents">제조 음료 1잔 결제 시<br>스탬프 1개 적립</td>
							<td class = "Benefit_img"><img alt="쿠폰카드" src="./images/userInfoImg/coupon_collect.png"></td><td class="Benefit_contents">스탬프 12개 적립 시마다<br>무료 음료 세트 교환권 제공</td>
							<td class = "Benefit_img"><img alt="할인정보" src="./images/userInfoImg/discount.png"></td><td class="Benefit_contents">매장 소식 및<br>이벤트 쿠폰 제공</td>
						</tr>
					</table>
				</div>
				<div id = "UsageGuide">
					<div class = "Benefits">
						<h2>쿠폰 사용 안내</h2>
					</div>
					<table>
						<tr>
							<td class = "Benefit_img"><img alt="스탬프 사진" src="./images/userInfoImg/coupon_full_collect.png"></td>
							<td class="Benefit_contents"><p><strong>스탬프 카드 쿠폰</strong></p><span>스탬프를 적립하여 완성된 무료 음료 쿠폰으로 스탬프카드 메뉴에서 사용할 수 있습니다.<br>(스탬프 카드 쿠폰은 선물하기가 불가합니다.)</span></td>
						</tr>
						<tr>
							<td class = "Benefit_img"><img alt="스탬프 사진" src="./images/userInfoImg/discount.png"></td>
							<td class="Benefit_contents"><p><strong>이벤트 쿠폰</strong></p><span>이벤트나 행사 또는 선물로 받은 쿠폰은 내쿠폰에서 사용할 수 있습니다.</span></td>
						</tr>
						<tr>
							<td class = "Benefit_img"><img alt="스탬프 사진" src="./images/userInfoImg/coupon_info.png"></td>
							<td class="Benefit_contents"><p><strong>이용안내</strong></p><span>선물 받은 쿠폰은 문자로 사용이 가능하며 H.T.C 카페 마이페이지 하단의 내쿠폰에서도 사용할 수 있습니다.<br>모든 쿠폰은 쿠폰 번호나 바코드 이미지로 
							사용이 가능하며 다른 고객이 양도 받아 사용 할  수 있습니다.</span></td>
						</tr>
					</table>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>
<script>
	document.getElementById("stampNum").innerText = <%= element.get("stampNum")%>;
	document.getElementById("couponNum").innerText = <%= element.get("couponNum")%>;
	document.getElementById("userName").innerText = "<%= element.get("userName")%>";
	document.getElementById("rank").innerText = "<%= element.get("rank")%>";
	document.getElementById("userEmail").innerText = "<%= element.get("userEmail")%>";
	document.getElementById("userPhone").innerText = "<%= element.get("userPhone")%>";
	document.getElementById("userinfoName").innerText = "<%= element.get("userName")%>";
	
	var rank = document.getElementById("rank").innerText;
	switch(rank){
		case "Bronze":
			document.getElementById("rankImg").src="./images/userInfoImg/Bronze.png";
			document.getElementById("rankColor").style.color = "#b89854";
			break;
		case "Silver":
			document.getElementById("rankImg").src="./images/userInfoImg/Silver.png";
			document.getElementById("rankColor").style.color = "#c0c0c0";
			break;
		case "Gold":
			document.getElementById("rankImg").src="./images/userInfoImg/Gold.png";
			document.getElementById("rankColor").style.color = "#f7a300";
			break;
		case "Platinum":
			document.getElementById("rankImg").src="./images/userInfoImg/Platinum.png";
			document.getElementById("rankColor").style.color = "#00bfff";
			break;
	}
	
</script>