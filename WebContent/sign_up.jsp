<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
<link rel="stylesheet" href="sign_up.css?ver=2">
</head>
<body>
<form action="./userJoinAction.jsp" method="post">
	<input type="button" value="home"
		onclick="location.href='login.jsp'">
		<div class = "login_all">
			<h2>SIGN UP</h2>
			<h5 class="sign_up_ip">ID �Է�(<font color="red">�ʼ�</font>)</h5>
			<input class = "login_ip" type="text" name="userID" placeholder="ID"><br>
			<h5 class="sign_up_ip">PASSWORD �Է�(<font color="red">�ʼ�</font>)</h5>
			<input class = "login_ip" type="password" name="userPassword" placeholder="PASSWORD"><br>
			<h5 class="sign_up_ip">E-Mail �Է�(<font color="red">�ʼ�</font>)</h5>
			<input class = "login_ip" type="email" name="userEmail" placeholder="e-mail"><br>
			<input class="sign_up_cp" type="submit" value="Complete">
		</div>
</form>
</body>
</html>