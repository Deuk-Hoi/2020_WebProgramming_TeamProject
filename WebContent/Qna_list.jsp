<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="QnaDAO" class="com.webprogramming.project.QnaDAO"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String pages = "1";
	if(request.getParameter("pages")!=null){
		pages = request.getParameter("pages");
	}
	JSONArray ja = QnaDAO.SelectQna(pages);
	int Pagecount = QnaDAO.getCount();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>묻고 답하기 (관리자)</title>
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Supports.css">
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Qna_list.css">
</head>

<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<main>
		<section id="QnaSection">
			<div id="pageImg">
				<div id = "pageImgTxt" align="center">
					<p class="page_title">묻고 답하기</p>
					<hr width="50px">
					<P class="page_letter">H.T.C 카페는 고객님들에게 최상의 서비스를<br>제공하기 위해 항상 노력 하겠습니다.</P>
				</div>
			</div>
			<div class="contents">
				<div id="pageLocation">
					<p>Home > 고객센터 > 묻고 답하기(관리자) </p>
				</div>
				<div>
					<h1 id="subtitle">Q & A</h1>
				</div>
				<table id="qnaTable">
					<thead>
						<tr>
							<th class="cel-1">No.</th>
							<th class="cel-2">제목</th>
							<th class="cel-3">작성일</th>
							<th class="cel-4">작성자</th>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i = 0; i < ja.size(); i++){
								JSONObject element = (JSONObject)ja.get(i);
						%>
							<tr id="nr_<%= (String)element.get("qid") %>" class = "notice_row " onclick=" location.href='Qna_ans.jsp?num=<%= (String)element.get("qid") %>'">
								<td id = "noticeNum" class="cel-1 "><%=(String)element.get("qid")%></td>
								<td id = "td-2" class="cel-2"><%=(String)element.get("title")%></td>
								<td class="cel-3"><%=(String)element.get("date")%></td>
								<td class="cel-4"><%=(String)element.get("name")%></td>
							</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<div id = "pagingForm">
					<div id="page" class = "pagination">
						 <a href="Qna_list.jsp?pages=1">&laquo;</a>
						<%
							for(int j=0;j<Pagecount+1;j++){
						%>
							<a href="Qna_list.jsp?pages=<%out.print(j+1);%>"><%out.print(j+1);%></a>
						<%
							}
						%>
						<a href="Qna_list.jsp?pages=<%=Pagecount+1 %>">&raquo;</a>
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