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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles/MyPage.css">
<style>
	#userSummary{
		text-align: center;
	}
	.summaryLeft{
		display: inline-block;
		margin-right: 100px;
	}
	.summaryLeft .currentStamp{
		font-size: 45px;
		font-weight: 700;
		color : #b461ff;
	}
	.summaryLeft .totalStamp{
		font-size: 30px;
	}
	.summaryLeft .currentCoupon{
		font-size: 45px;
		font-weight: 700;
		color : #b461ff;
	}
	.stamp_info{
		font-size: 20px;
		padding: 60px;
	}
	.summaryRight{
		display: inline-block;
	}
	.summaryRight table{
		margin-top: 100px;
	}
	.summaryRight td{
		text-align: left;
		font-size: 30px;
		padding: 10px;
	}

	.rank_color{
		color: #f7a300;
		font-weight: bold;
		font-size: 45px;
	}
	.userinfo{
		text-align: left;
		margin-top: 30px;
		font-size: 15px;
		color: #7a7a7a;
		padding: 40px;
		line-height: 10px;
		font-weight: bold;
	}
	
	#modifyButton{
		text-align: right;
	}
	
	#modifyButton input{
		background-color: #253b84;
		color: white;
		font-weight: bold;
		padding : 5px 20px 5px 20px;
		border-radius: 5px;
		border: 1px solid #253b84;
	}
	#stamp_area{
		margin-bottom: 100px;
	}
	
	#coupon{
		margin: auto;
	}
	
	#coupon .couponList{
		text-align: center;
		margin: 0 6em 0 6em;
	}
	
	#coupon .couponList img{
		padding: 10px;
	}
	#stamp_area .stamp_notice{
		border-bottom: 1px solid #dadada;
		margin-top: 150px;
		margin-bottom: 50px;
		padding-bottom: 17px;
	}
	#stamp_area .stamp_notice>h2{
		display: inline-block;
	}
	#stamp_area .stamp_notice>span{
		font-size: 15px;
		font-weight: bold;
		color: #7b7b7b;
	}
	#MemberShip {
		margin-top: 150px;
		margin-bottom: 150px;
	}
	#MemberShip table{
		margin:auto;
		text-align: center;
	}
	#MemberShip .Benefits{
		border-bottom: 1px solid #dadada;
		padding-bottom: 17px;
		margin-bottom: 30px;
	}
	#MemberShip .Benefit_img{
		padding: 30px;
	}
	
	#MemberShip .Benefit_contents{
		padding : 30px;
	}
	#UsageGuide .Benefits{
		border-bottom: 1px solid #dadada;
		padding-bottom: 17px;
		margin-bottom: 30px;
	}
	#UsageGuide table{
		margin: 20px;
	}
	#UsageGuide .Benefit_img{
		padding: 30px;
		text-align: center;
	}
	#UsageGuide .Benefit_contents{
		padding : 30px 30px 30px 50px;
	}
	#UsageGuide .Benefit_contents>span{
		color: #666666;
	}
	
	@media screen and (max-width:1440px) { 
		.summaryLeft{
			margin-right: 0;
		}
		#coupon .couponList{
			text-align: center;
			margin: 0 5em 0 5em;
		}
		#MemberShip .Benefit_contents{
			padding : 30px 0px 30px 0px;
			font-size: 14px;
		}
		#UsageGuide .Benefit_contents{
			font-size: 14px;
		}
	}

		
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
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
	<jsp:include page="footer.jsp"></jsp:include>
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