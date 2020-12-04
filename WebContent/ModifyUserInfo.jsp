<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<jsp:useBean id="userinfo" class="com.webprogramming.project.UserInfoDO"/>
<jsp:useBean id="userinfoDAO" class="com.webprogramming.project.UserInfoDAO"/>
<jsp:setProperty name="userinfo" property="userName"/>
<jsp:setProperty name="userinfo" property="userEmail"/>
<jsp:setProperty name="userinfo" property="userPhone"/>
<jsp:setProperty name="userinfo" property="rank"/>
<%
	request.setCharacterEncoding("UTF-8");
	userinfo.setUserId((String)session.getAttribute("userId"));
	JSONObject element = (JSONObject)userinfoDAO.SelectUserInfo(userinfo.getUserId()).get(0);
%>
<%
	if((userinfo.getUserEmail()!= null) && (userinfo.getUserPhone() != null)){
		if(userinfoDAO.UpdateUserInfo(userinfo, userinfo.getUserId()) == 1){
			out.print("<script>alert('업데이트 성공!');</script>");
		}else{
			out.print("<script>alert('업데이트 실패!');</script>");
		}
	}
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
	#formborder{
		border: 1px solid #dadada;
		border-radius: 20px;
		padding : 50px 100px 50px 100px;
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
			<div id="formborder">
				<form id = "userForm" method="POST">
					<h1>회원정보 수정</h1>
					<table id = "userFormTable">
						<tr>
							<td class="title">이름</td>
							<td class="content"><input id="userName" type="text" name = "userName" readonly="readonly"></td>
						</tr>
						<tr>
							<td class="title">이메일</td>
							<td class="content"><input id="userEmail" type="email" name = "userEmail" ></td>
						</tr>
						<tr>
							<td class="title">휴대폰</td>
							<td class="content"><input id="userPhone" type="tel" name = "userPhone"></td>
						</tr>
						<tr>
							<td class="title">회원 등급</td>
							<td class="content"><input id ="rank" type="text" name = "rank" readonly="readonly"></td>
						</tr>
						<tr>
						
						</tr>
					</table>
					<div id = "enroll">
						<input id = "reset" type="reset" value="취소">
						<input id = "submit" type="submit" value="등록">
					</div>
				</form>
			
				
			</div>
		</div>
	</section>
</body>
</html>
<script>
	document.getElementById("userName").value = "<%= element.get("userName")%>";
	document.getElementById("userEmail").value = "<%= element.get("userEmail")%>";
	document.getElementById("userPhone").value = "<%= element.get("userPhone")%>";
	document.getElementById("rank").value = "<%= element.get("rank")%>";
</script>
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