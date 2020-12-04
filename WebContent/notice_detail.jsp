<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<jsp:useBean id="noticeDAO" class="com.webprogramming.project.NoticeDAO"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String noticeNum = (String)request.getParameter("num");
	JSONObject element = (JSONObject)noticeDAO.SelectNoticeDetail(noticeNum).get(0);
%>
<!DOCTYPE html>
<html style="height: 100%">
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="styles/Notice_detail.css">
<style>
	#noticeSection{
		height: 100%;
	}
	#notice_form .notice_title_date>table{
		width : 100%;
		padding : 10px;
		border-bottom: 2px solid #dadada;
	}
	#notice_form .notice_title_date>table td:nth-child(1){
		width: 70%;
	}
	#notice_form .notice_title_date>table td:nth-child(2){
		width: 30%;
		text-align: right;
	}
	#notice_form .notice_contents>table{
		margin-top: 20px;
		text-align: center;
	}
	#notice_form .notice_contents>table tr:nth-child(2){
		padding-top: 30px;
	}
	#notice_form .notice_contents>table tr:nth-child(2) td{
		text-align: left;
	}

</style>
</head>
<body style="height: 100%">
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
			<div id = "notice_form">
				<div class = "notice_headline">
					<h2>공지사항</h2>
				</div>
				<div class = "notice_title_date">
					<table>
						<tr>
							<td><h3><%=(String)element.get("title")%></h3></td>
							<td><%=(String)element.get("date")%></td>
						</tr>
					</table>
				</div>
				<div class = "notice_contents">
					<table>
						<tr>
							<td><img id = "photoImg" src="images/noticeImg/<%=(String)element.get("photo")%>" width = "100%" height="100%"></td>
							<%
								String photoName = (String)element.get("photo");
								if(photoName == null){
									out.print("<script>document.getElementById('photoImg').style.display='none';</script>");
								}
								
							%>
						</tr>
						<tr>
							<td><div><%=(String)element.get("content")%></div></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</section>
</body>
</html>