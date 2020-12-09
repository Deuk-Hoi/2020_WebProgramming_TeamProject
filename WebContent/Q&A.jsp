<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.webprogramming.project.DatabaseManager"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="userinfo" class="com.webprogramming.project.UserInfoDO"/>
<jsp:useBean id="userinfoDAO" class="com.webprogramming.project.UserInfoDAO"/>
<jsp:useBean id="setQnA" class = "com.webprogramming.project.QnADO"/>
<jsp:useBean id="InsertQnA" class = "com.webprogramming.project.QnaDAO"/>
<jsp:setProperty name="setQnA" property="*"/>
<%
	userinfo.setUserId((String)session.getAttribute("userId"));
	JSONObject element = (JSONObject)userinfoDAO.SelectUserInfo(userinfo.getUserId()).get(0);
%>
<%
	if((setQnA.getTitle() != null) && (setQnA.getContents() != null)){
		if(InsertQnA.InsertQna(setQnA, userinfo.getUserId()) == 1){
			out.print("<script>alert('소중한 문의 감사합니다!');location.href='./Main.jsp';</script>");
		}else{
			out.print("<script>alert('문의 실패!');</script>");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Supports.css">
<link rel="stylesheet" type="text/css" href="styles/Support_page_css/Q&A.css">
<title>고객의 소리</title>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<main>
		<section id="qnaSection">
			<div id="pageImg">
				<div id = "pageImgTxt" align="center">
					<p class="page_title">고객의 소리</p>
					<hr width="50px">
					<P class="page_letter">H.T.C 카페에 전하고 싶은 불만, 칭찬을 보내주세요.<br>항상 고객의 소리에 귀 기울이며 고객만족 향상을 위해 노력 하겠습니다.</P>
				</div>
			</div>
			<div class="contents">
				<div id="pageLocation">
					<p>Home > 고객센터 > Q & A</p>
				</div>
				<div>
					<h1 id="subtitle">Q & A</h1>
				</div>
				<div id = "notice">
					<h2>귀한 말씀 들려주십시오. 작은 소리도 듣겠습니다.</h2>
					<p>
						H.T.C 카페에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br>
						만족스러운 서비스 였는지, 불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다. 보다 나은 서비스로 보답하겠습니다.<br><br>
						고객의 소리 운영시간 : 월요일 ~ 금요일 10:00 AM ~ 6:00 PM / 휴일 및 공휴일 제외
					</p>				
				</div>
				<div id = "qna_form">
					<form accept-charset="UTF-8" method="POST" onsubmit="return formCheck()">
						<div id ="term_check" class="border_design">
							<h3>개인정보 수집동의</h3>
							<div id = "terms">
								<p>H.T.C 카페는 아래와 같이 개인정보를 수집하고 있습니다.</p>
								<p>개인정보의 수집 및 이용에 관한 내용을 충분히 읽어보신 후 동의하여 주시기 바랍니다.</p><br>
								<p><strong>개인정보 수집･이용에 관한 사항<span style = "color : red;">(필수)</span></strong></p>
								<p>1. 수집항목 : 이름, 휴대폰번호, 이메일</p>
								<p>2. 이용목적 : 문의, 불만 등 민원처리, 고지사항 전달</p>
								<p>3. 보유기간 : 3년(전자상거래법 제 6조 제 3항에 따름)</p>
								<p>위의 개인정보 수집, 이용에 대한 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 해당페이지의 이용(고객의 소리 접수)에제한이 있습니다.</p><br>
							</div>
							<div align="right"><label><input id = "checkAgree" type = "checkbox" name = "agree"> 개인정보 수집 이용에 동의합니다.</label></div>
						</div>
						<div id = "insert_userinfo" class="border_design">
							<h3>개인정보입력 </h3>
							<span>* 항목은 필수 입력 사항 입니다.</span>
							<table class = "table_design">
								<tbody>
									<tr>
										<th>이름<span>*</span></th>
										<td colspan="2"><input id = "username" type="text" name="userName" placeholder="김득회" readonly="readonly"></td>
									</tr>
									<tr>
										<th>연락처<span>*</span></th>
										<td colspan="2"><input id = "phone" type="tel" name="phone" placeholder="010-4304-2134" readonly="readonly"></td>
									</tr>
									<tr>
										<th>이메일<span>*</span></th>
										<td colspan="2"><input id = "email" type="email" name="email" placeholder="dh97k@naver.com" readonly="readonly"></td>
									</tr>
									<tr>
										<th>방문날짜<span>*</span></th>
										<td><input id = "visitDate" type="date" name="date" placeholder="날짜 선택"></td>
										<td><input id = "visitTime" type="time" name="time" placeholder="시간 선택"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div id = "insert_qna" class="border_design">
							<h3>문의내용 </h3>
							<span>* 항목은 필수 입력 사항 입니다.</span>
							<table class = "table_design">
								<tbody>
									<tr>
										<th>제목<span>*</span></th>
									</tr>
									<tr>
										<td><input id ="title" type="text" name="title" placeholder="제목을 입력하세요."></td>
									</tr>
									<tr>
										<th>문의내용<span>*</span></th>
									</tr>
									<tr>
										<td><textarea id = "contents" name = "contents" placeholder="문의 내용을 입력하세요."></textarea></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div id = "enroll">
							<input id = "reset" type="reset" value="취소">
							<input id = "submit" type="submit" value="등록">
						</div>
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
<script>
	
	var username = document.getElementById("username");
	var phone = document.getElementById("phone");
	var email = document.getElementById("email");
	
	username.value = "<%= element.get("userName")%>";
	phone.value = "<%= element.get("userPhone")%>";
	email.value = "<%= element.get("userEmail")%>";
	
	function formCheck(){
		var checkAgree = document.getElementById("checkAgree").checked;
		var visitDate = document.getElementById("visitDate").value;
		var visitTime = document.getElementById("visitTime").value;
		var title = document.getElementById("title").value;
		var contents = document.getElementById("contents").value;
		
		if(checkAgree == false){
			alert("약관에 동의해 주세요!");
			return false;
		}else{
			console.log(visitDate);
			if(visitDate == ""){
				alert("방문 날짜를 입력해 주세요!");
				return false;
			}
			else if(visitTime == ""){
				alert("방문 시간을 입력해 주세요!");
				return false;
			}
			else if(title == ""){
				alert("제목을 입력해 주세요!");
				return false;
			}
			else if(contents == ""){
				alert("내용을 작성해 주세요!");
				return false;
			}
			else{
				return true;
			}
		}
		
	}
	
</script> 