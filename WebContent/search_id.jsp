<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" type="text/css" href="styles/login_page_css/sign_up.css?ver=1">
</head>
<body>
	<form method="post" action="search_id_Action.jsp">
		<div class="entire" align="center">
			<div class="box_search_id">
				<div class="box_in">
					<p class="sign_up_ip">이메일<font color="red">*</font></p>
					<input class = "login_ip" type="email" name="userEmail" placeholder="e-mail">
					<input class="sign_up_sub" type="submit" value="확인">
					<div align="center" style="margin:-15px 0 0 0;">
						<input class="sign_up_exist" type="button" value="혹시 아이디가 존재하신가요? 홈으로 돌아가기" onclick="location.href='login_main.jsp'">
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>