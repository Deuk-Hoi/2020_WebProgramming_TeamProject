<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	
	
</style>
</head>
<body>
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
							<td class = "stamp_info">스탬프 현황<br><span class = "currentStamp">4</span> <sapn class = "totalStamp">/12</sapn></td>
						</tr>
					</table>
					<table class = "coupon_table">
						<tr>
							<td><img alt="쿠폰 사진" src="./images/userInfoImg/coupon.png"></td>
							<td class = "stamp_info">보유 쿠폰<br><span class = "currentCoupon">4</span></td>
						</tr>
					</table>
				</div>
				<div class = "summaryRight">
					<table>
						<tr>
							<td><img alt="등급사진" src="./images/userInfoImg/level_gold.png"></td>
							<td><span style="font-weight: bold;">김득회</span> 회원님은<br>
							<span class="rank_color">Gold Level</span> 입니다.</td>
						</tr>
					</table>
					<div class = "userinfo">
						<p>아이디 : dh97k@naver.com</p>
						<p>휴대폰 : 010-4304-2134</p>
						<p>이름 : 김득회</p>
					</div>
					<div id="modifyButton">
						<input type="button" value="회원정보 수정  >">
					</div>
					
				</div>
			</div>
		</div>
	</section>
</body>
</html>