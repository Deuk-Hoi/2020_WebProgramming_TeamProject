<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주하는 질문</title>
<link rel="stylesheet" type="text/css" href="styles/Supports.css">
<style>
	.subtitle{
		padding: 80px 0px 30px 0;
		border-bottom: 1px solid #dadada;
	}
	.FAQDetail{
		margin-top: 20px;
		
	}
	.FAQelement{
		padding: 20px 30px 20px 30px;
	}
	
</style>
</head>
<body>
	<section>
		<div id="pageImg">
			<div id = "pageImgTxt" align="center">
				<p class="page_title">고객의 소리</p>
				<hr width="50px">
				<P class="page_letter">H.T.C 카페 고객님들이 자주하는 질문들입니다!</P>
			</div>
		</div>
		<div class="contents">
			<div id="pageLocation">
				<p>Home > 고객센터 > FAQ</p>
			</div>
			<div id = "FAQContent">
				<div class = "subtitle">
					<h2>자주하는 질문 [FAQ]</h2>
				</div>
				<%
					for(int i = 0; i < 10; i++){
				%>
					<details class="FAQDetail">
						<summary class="FAQelement">앙 기모띠</summary>
						<p class="FAQelement">호오...</p>
					</details>
				<%
					}
				%>
			</div>
		</div>
	</section>
</body>
</html>