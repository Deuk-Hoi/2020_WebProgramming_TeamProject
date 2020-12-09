<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="QnaDAO" class="com.webprogramming.project.QnaDAO"/>
<jsp:useBean id="qnaAnswer" class ="com.webprogramming.project.QnADO"/>
<jsp:setProperty name="qnaAnswer" property="answer"/>
<%
	JSONObject element = (JSONObject)QnaDAO.SelectQna_detail(request.getParameter("num")).get(0);
%>
<%
	if((qnaAnswer.getAnswer()!= null)){
		if(QnaDAO.UpdateAnswer(request.getParameter("num"), qnaAnswer.getAnswer()) == 1){
			out.print("<script>alert('답변 등록 성공');location.href='./Qna_list.jsp';</script>");
		}else{
			out.print("<script>alert('답변 등록 실패!');</script>");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Qna_ans.css">
<title>문의 답변(관리자)</title>
</head>

<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<main>
		<section id="qnaSection">
			<div id="pageImg">
				<div id = "pageImgTxt" align="center">
					<p class="page_title">공지사항</p>
					<hr width="50px">
					<P class="page_letter">H.T.C 카페는 고객님들에게 최상의 커피를<br>제공하기 위해 노력 하겠습니다.</P>
				</div>
			</div>
			<div class="contents">
				<div id="pageLocation">
					<p>Home > 고객센터 > 문의 답변하기(관리자)</p>
				</div>
				<div id = "qna_form">
					<div class = "qna_headline">
						<h2>문의 답변하기</h2>
					</div>
					<div class = "qna_title_date">
						<table>
							<tr>
								<td><h3><%=(String)element.get("title")%></h3></td>
								<td><span>발생시점:&nbsp;&nbsp;</span><%=(String)element.get("date")%></td>
								<td><span>이메일:&nbsp;&nbsp;</span><%=(String)element.get("email")%></td>
							</tr>
						</table>
					</div>
					<div class = "qna_contents">
						<table>
							<tr>
								<td><div><%=(String)element.get("contents")%></div></td>
							</tr>
						</table>
					</div>
				</div>
				<div id = "ans_form">
					<form method="POST">
						<table id ="ans_table">
							<tr id = "ans_tr">
								<td><textarea class = "ans_text" name = "answer"></textarea></td>
								<td><input class = "ans_btn" type="submit" value = "등록"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>