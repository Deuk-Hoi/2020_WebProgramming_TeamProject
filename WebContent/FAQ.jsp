<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.webprogramming.project.DatabaseManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="FaqDAO" class="com.webprogramming.project.FaqDAO"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	JSONArray ja = FaqDAO.LoadFAQ();
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
	.question, .answer{
		padding: 30px;
		border-bottom : 1px solid #dadada;
		margin: 0px 0px;
		
	}
	.question{
		font-size: 18px;
        font-weight: 800; 
    }
    .question>span{
        color: darkblue;
        font-size: 25px;
        font-weight: 800;
    }
    .question:hover{
        border: 2px solid blueviolet;
        color: blueviolet;
    }
    .answer{
        display: none;
        background-color: #F6F6F6;
        font-size: 16px;
        font-weight: 800;
    }
    .answer>span{
        color:darkred;
        font-size: 25px;
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
					for(int i = 0; i < ja.size(); i++){
						JSONObject element = (JSONObject)ja.get(i);
				%>
					<div id = "FAQDetail">
				        <p class = "question" id = "que-<%=i %>"><span>Q.&nbsp;&nbsp;</span><%=(String)element.get("question")%></p>
				        <p class = "answer" id = "ans-<%=i %>"><span>A.&nbsp;&nbsp;</span><%=(String)element.get("answer")%></p>
				    </div>
				<%		
					}
				%>
			</div>
		</div>
	</section>
</body>
</html>
<script>
    const items = document.querySelectorAll('.question');
    function openCloseAnswer() {

        const answerId = this.id.replace('que', 'ans');
        console.log(answerId);
        if(document.getElementById(answerId).style.display ==='block'){
            document.getElementById(answerId).style.display = 'none';
        }else{
            document.getElementById(answerId).style.display = 'block';
        }
    }
    items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>