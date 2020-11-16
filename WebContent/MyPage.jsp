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
	#stamp_area{
		margin-bottom: 100px;
	}
	
	#coupon{
		margin: auto;
	}
	
	#coupon .couponList{
		text-align: center;
		margin: 0 12em 0 12em;
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
			<div id = "stamp_area">
				<div class="stamp_notice">
					<h2>������ �߱� ��Ȳ &nbsp;</h2>
					<span>������ 12���� �����Ͻø� ������Ʈ ����Ƽ + ���� ��������ũ ���� ������ �߱��� �帳�ϴ�.</span>
				</div>
				<div id = "coupon">
					<div class = "couponList">
						<img alt="���� ����" src="./images/userInfoImg/coupon_stamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
						<img alt="���� ����" src="./images/userInfoImg/coupon_nostamp.png">
					</div>
				</div>
			</div>
			<div id = "MemberShip">
				<div class = "Benefits">
					<h2>H.T.C ����� ����</h2>
				</div>
				<table>
					<tr>
						<td class = "Benefit_img"><img alt="������ ����" src="./images/userInfoImg/benefit.png"></td><td class="Benefit_contents">���� ���� 1�� ���� ��<br>������ 1�� ����</td>
						<td class = "Benefit_img"><img alt="����ī��" src="./images/userInfoImg/coupon_collect.png"></td><td class="Benefit_contents">������ 10�� ���� �ø���<br>���� ���� 1�� ���� ����</td>
						<td class = "Benefit_img"><img alt="��������" src="./images/userInfoImg/discount.png"></td><td class="Benefit_contents">���� �ҽ� ��<br>�̺�Ʈ ���� ����</td>
					</tr>
				</table>
			</div>
			<div id = "UsageGuide">
				<div class = "Benefits">
					<h2>���� ��� �ȳ�</h2>
				</div>
				<table>
					<tr>
						<td class = "Benefit_img"><img alt="������ ����" src="./images/userInfoImg/coupon_full_collect.png"></td>
						<td class="Benefit_contents"><p><strong>������ ī�� ����</strong></p><span>�������� �����Ͽ� �ϼ��� ���� ���� �������� ������ī�� �޴����� ����� �� �ֽ��ϴ�.<br>(������ ī�� ������ �����ϱⰡ �Ұ��մϴ�.)</span></td>
					</tr>
					<tr>
						<td class = "Benefit_img"><img alt="������ ����" src="./images/userInfoImg/discount.png"></td>
						<td class="Benefit_contents"><p><strong>�̺�Ʈ ����</strong></p><span>�̺�Ʈ�� ��� �Ǵ� ������ ���� ������ ���������� ����� �� �ֽ��ϴ�.</span></td>
					</tr>
					<tr>
						<td class = "Benefit_img"><img alt="������ ����" src="./images/userInfoImg/coupon_info.png"></td>
						<td class="Benefit_contents"><p><strong>�̿�ȳ�</strong></p><span>���� ���� ������ ���ڷ� ����� �Ұ��ϸ� ���� ����� ȸ�� ���� �� ���������� ���� ��� �� ����� �� �ֽ��ϴ�.<br>��� ������ ���� ��ȣ�� ���ڵ� �̹����δ� 
						����� �Ұ��ϸ� ���� �����Ͽ� ������ ��츸 ����� �����մϴ�.</span></td>
					</tr>
				</table>
			</div>
		</div>
	</section>
</body>
</html>