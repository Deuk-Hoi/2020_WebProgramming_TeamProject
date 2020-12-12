<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.webprogramming.project.DatabaseManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="noticeDAO" class="com.webprogramming.project.NoticeDAO"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String pages = "1";
	if(request.getParameter("pages")!=null){
		pages = request.getParameter("pages");
	}
	JSONArray ja = noticeDAO.SelectNotice(pages);
	int Pagecount = noticeDAO.getCount();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Notice.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
	<section id="noticeSection">
		<div id="pageImg">
			<div id = "pageImgTxt" align="center">
				<p class="page_title">공지사항</p>
				<hr width="50px">
				<P class="page_letter">H.T.C 카페는 고객님들에게 최상의 커피를<br>제공하기 위해 노력 하겠습니다.</P>
			</div>
		</div>
		<div class="contents">
			<div id="pageLocation">
				<p>Home > 카페 소식 > 공지사항</p>
			</div>
			<div>
				<h1 id="subtitle">공지사항</h1>
			</div>
				<table id="noticeTable">
					<thead>
						<tr>
							<th class="cel-1">No.</th>
							<th class="cel-2">제목</th>
							<th class="cel-3">작성일</th>
							<th class="cel-4">조회수</th>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i = 0; i < ja.size(); i++){
								JSONObject element = (JSONObject)ja.get(i);
						%>
							<tr id="nr_<%= (String)element.get("nid") %>" class = "notice_row " onclick=" location.href='notice_detail.jsp?num=<%= (String)element.get("nid") %>'">
								<td id = "noticeNum" class="cel-1 "><%=(String)element.get("nid")%></td>
								<td id = "td-2" class="cel-2"><%=(String)element.get("title")%></td>
								<td class="cel-3"><%=(String)element.get("date")%></td>
								<td class="cel-4"><%=(String)element.get("views")%></td>
							</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<div id = "pagingForm">
					<div id="page" class = "pagination">
						 <a href="Notice.jsp?pages=1">&laquo;</a>
						<%
							for(int j=0;j<Pagecount+1;j++){
						%>
							<a href="Notice.jsp?pages=<%out.print(j+1);%>"><%out.print(j+1);%></a>
						<%
							}
						%>
						<a href="Notice.jsp?pages=<%=Pagecount+1 %>">&raquo;</a>
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