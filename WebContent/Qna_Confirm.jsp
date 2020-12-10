<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="QnaDAO" class="com.webprogramming.project.QnaDAO"/>
<jsp:useBean id="qnaAnswer" class ="com.webprogramming.project.QnADO"/>
<%
	JSONObject element = (JSONObject)QnaDAO.Qna_answer(request.getParameter("num")).get(0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Qna_Confirm.css">
<title>���� ���� Ȯ�� �ϱ�</title>
</head>

<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<main>
		<section id="qnaSection">
			<div id="pageImg">
				<div id = "pageImgTxt" align="center">
					<p class="page_title">��������</p>
					<hr width="50px">
					<P class="page_letter">H.T.C ī��� ���Ե鿡�� �ֻ��� Ŀ�Ǹ�<br>�����ϱ� ���� ��� �ϰڽ��ϴ�.</P>
				</div>
			</div>
			<div class="contents">
				<div id="pageLocation">
					<p>Home > ������ > ���� �亯�ϱ�(������)</p>
				</div>
				<div id = "qna_form">
					<div class = "qna_headline">
						<h2>���� �亯�ϱ�</h2>
					</div>
					<div class = "qna_title_date">
						<table>
							<tr>
								<td><h3><%=(String)element.get("title")%></h3></td>
								<td><span>�߻�����:&nbsp;&nbsp;</span><%=(String)element.get("date")%></td>
								<td><span>�̸���:&nbsp;&nbsp;</span><%=(String)element.get("email")%></td>
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
					<div class="qna_header">
						<h3>���� �亯</h3>
					</div>
					<div>
						<%=(String)element.get("answer")%>
					</div>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>