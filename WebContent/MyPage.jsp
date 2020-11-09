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
				<p class="page_title">���� ����� �̿���Ȳ</p>
				<hr width="50px">
				<P class="page_letter">My Member's Status</P>
				<P class="page_letter">������ H.T.C ī�� ����� ���� �̿���Ȳ�Դϴ�.</P>
			</div>
		</div>
		<div class="contents">
			<div id="userSummary">
				<div class = "summaryLeft">
					<table class = "stamp_table">
						<tr>
							<td><img alt="������ ����" src="./images/userInfoImg/stamp_state.png"></td>
							<td class = "stamp_info">������ ��Ȳ<br><span class = "currentStamp">4</span> <sapn class = "totalStamp">/12</sapn></td>
						</tr>
					</table>
					<table class = "coupon_table">
						<tr>
							<td><img alt="���� ����" src="./images/userInfoImg/coupon.png"></td>
							<td class = "stamp_info">���� ����<br><span class = "currentCoupon">4</span></td>
						</tr>
					</table>
				</div>
				<div class = "summaryRight">
					<table>
						<tr>
							<td><img alt="��޻���" src="./images/userInfoImg/level_gold.png"></td>
							<td><span style="font-weight: bold;">���ȸ</span> ȸ������<br>
							<span class="rank_color">Gold Level</span> �Դϴ�.</td>
						</tr>
					</table>
					<div class = "userinfo">
						<p>���̵� : dh97k@naver.com</p>
						<p>�޴��� : 010-4304-2134</p>
						<p>�̸� : ���ȸ</p>
					</div>
					<div id="modifyButton">
						<input type="button" value="ȸ������ ����  >">
					</div>
					
				</div>
			</div>
		</div>
	</section>
</body>
</html>