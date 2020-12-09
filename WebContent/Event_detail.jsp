<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webprogramming.project.DatabaseManager"%>
<%@ page import="com.webprogramming.project.Event_DTO"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<%
	String eventNum=request.getParameter("eventNum");
	DatabaseManager dao = new DatabaseManager();
	ArrayList<Event_DTO> list = dao.Event_detail(Integer.parseInt(eventNum));
	dao.view_update(Integer.parseInt(eventNum));

%>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" type="text/css" href="styles/Event_page.css?v=6">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="main" >
	<div class="main_head" align="center">
		<div class="main_font">
			<p style="font-size:60px;color:#000000;">이벤트</p>
			<br><br>
			<p style="font-size:19px;color:#000000;">호서대를 선도하는<br> H.T.C에서 준비한 이벤트에 참여하세요.</p>
		</div>
	</div>
	<div class="detail_body" align="center">
		<div class="detail_head">
			<table style="width:1100px;border-collapse:collapse;">
				<thead>
					<tr>
						<td align="left" style="font-weight:600;font-size:22px;padding:30px 0 30px 25px;">
						[<%out.println(list.get(0).getEtype()); %>]		
						<%
							out.println(list.get(0).getEtitle());
						%>
						</td>
						
						<td align=right style="padding:30px 10px 30px 0;">
							작성 날짜 :&nbsp
							<%
								out.println(list.get(0).getEdate());
							%>
							| 조회수 :&nbsp
							<%
								out.println(list.get(0).getEview());
							%>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2" align="center" style="padding:80px 0;">
							<img src="images/login_Event_Img/<%out.print(list.get(0).getEimage());%>.jpg" alt="None">
						</td>
					</tr>
				</tbody>		
			</table>
		</div>
		<input class="detail_but" type="button" onclick="location.href='Event_page.jsp'" value="목     록">
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>