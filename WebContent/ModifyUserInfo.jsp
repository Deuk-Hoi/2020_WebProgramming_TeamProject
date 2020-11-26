<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원정보 수정</title>
<link rel="stylesheet" type="text/css" href="styles/ModifyUserInfo.css">
<style>
	.contents{
		margin-top: 150px;
	}
	#userForm h1{
		text-align: center;
	}
	#userFormTable{
		width: 100%;
	}
	#userFormTable .title{
		width: 20%;
		text-align: left;
		font-weight: bold;
	}
	
	#userFormTable .content{
		width: 80%;
		padding: 15px;
	}
	
	#userFormTable .content > input{
		width: 100%;
		height: 50px;
		font-weight: bold;
		padding: 0px 10px 0 10px;
	}
</style>
</head>
<body>
	<section id = "mypageSection">
		<div id="pageImg">
			<div id = "pageImgTxt" align="center">
				<p class="page_title">회원정보 수정</p>
				<hr width="50px">
				<P class="page_letter">Modify User Infomation!</P>
				<P class="page_letter">고객님의 회원 정보를 수정 해보세요!</P>
			</div>
		</div>
		<div class="contents">
			<form id = "userForm">
				<h1>회원정보 수정</h1>
				<table id = "userFormTable">
					<tr>
						<td class="title">이름</td>
						<td class="content"><input type="text" value="김득회" readonly="readonly"></td>
					</tr>
					<tr>
						<td class="title">이메일</td>
						<td class="content"><input type="email" value="dh97k@naver.com"></td>
					</tr>
					<tr>
						<td class="title">휴대폰</td>
						<td class="content"><input type="tel" value="01043042134"></td>
					</tr>
					<tr>
						<td class="title">회원 등급</td>
						<td class="content"><input type="text" value="gold" readonly="readonly"></td>
					</tr>
					<tr>
					
					</tr>
				</table>
			</form>
			<div id = "enroll">
				<input id = "reset" type="reset" value="취소">
				<input id = "submit" type="submit" value="등록">
			</div>
			
		</div>
	</section>
</body>
</html>
<style>
#enroll{
		text-align:center;
		margin-top: 20px;
	}
	#enroll input{
		width: 250px;
		height: 80px;
		font-size: 20px;
		border-radius: 5px;
		font-family : '맑은 고딕', sans-serif;
	}
	
	#reset{
		background-color: #572a31;
		border-color: #572a31;
		color: white;
		font-weight: bold;
		margin-right: 10px; 
		cursor:pointer;
	}
	#reset:hover{
		background-color: #3a181d;
	}
	
	#submit{
		background-color: #002f6c;
		border-color: #002f6c;
		color: white;
		font-weight: bold;
		margin-left: 10px;
		cursor:pointer;
	}
	#submit:hover{
		background-color: #002049;
	}
 </style>