<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="styles/login_page_css/login_main.css?v=2">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="main">
	<form method="post" action="login_main_Action.jsp">
		<div class="entire" align="center">
			<div class="box">
				<div class="ip">
					<input class = "login_ip" type="text" name="userId" placeholder="ID"><br>
					<input class = "login_ip" type="password" name="userPw" placeholder="PASSWORD"><br>
				</div>
				<div class="ip_2">
					<input id="login_button" type="submit" value="로그인"><br>
					<input class = "small_button" type="button" value="회원가입" onclick="location.href='sign_up.jsp'">
					<input class = "small_button" type="button" value="ID 찾기" onclick="location.href='search_id.jsp'">
					<input class = "small_button" type="button" value="PW 찾기" onclick="location.href='search_pw_check.jsp'">
				</div>
			</div>                 
		</div>
	</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>