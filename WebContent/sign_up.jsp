<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="styles/login_page_css/sign_up.css?ver=4">
</head>
<body>
	<form method="post" action="sign_up_Action.jsp">
		<div class="entire" align="center">
			<div class="box">
				<div class="box_in">
					<p class="sign_up_ip">이름<font color="red">*</font></p>
					<input class = "login_ip" type="text" name="userName" placeholder="Name">
					<p class="sign_up_ip">아이디<font color="red">*</font></p>
					<input class = "login_ip" type="text" name="userId" placeholder="ID">
					<p class="sign_up_ip">비밀번호<font color="red">*</font></p>
					<input class = "login_ip" type="password" name="userPw" placeholder="PASSWORD">
					<p class="sign_up_ip">이메일<font color="red">*</font></p>
					<input class = "login_ip" type="email" name="userEmail" placeholder="e-mail">
					<p class="sign_up_ip">전화번호('-'없이 입력)<font color="red">*</font></p>
					<input class = "login_ip" type="text" name="userPhone" placeholder="Phone_Number">
					
					<input class="sign_up_sub" type="submit" value="확인">
					<div align="center" style="margin:-15px 0 0 0;">
						<input class="sign_up_exist" type="button" value="혹시 회원이신가요? 홈으로 돌아가기" onclick="location.href='login_main.jsp'">
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>