<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <meta name="format-detection" content="telephone=no">
	    <title>Hoseo TimeOut Cafe</title>
	    <link rel="stylesheet" type="text/css" href="styles/css/XEIcon-2.2.0/xeicon.min.css">
	    <link rel="stylesheet" href="styles/css/default2.css">
	    <link rel="stylesheet" href="styles/css/member.css">
	    <link rel="stylesheet" href="styles/css/index_tablet.css" media="all and (max-width:1120px)">
	    <link rel="stylesheet" href="styles/css/index_moblie.css" media="all and (max-width:960px)">
	</head>

  <body>
    <jsp:include page="header.jsp"></jsp:include>

    <main>
        <section class="memberstart">
            <div>
                <p>
                    <span class = "member_title">H.T.C 멤버</span><br><br>
                    H.T.C 커피의 특별한 멤버를 소개합니다.<br>
                    H.T.C 특별한 웹 디자이너들을 만나보세요.<br>
                    <a href="#memberSo">멤버 보기</a>
                </p>
            </div>
        </section>

        <section class="memberindex">
            <div>
                <p>
                    <span class = "member_index">HOME  >  H.T.C 멤버  >  멤버 소개</span><br><br>
                </p>
            </div>
        </section>

        <section>
            <div class="member block">
                <div class="clear">
                    <div class="tit">
                        <h1>멤버 소개</h1>
                        <p>H.T.C 제작한 인물을 소개합니다!</p>
        </section>

        <section ID="memberSo">
        
          <section class="producer2">
            <section class="producer">
              <div>
                <div class="barista_img1"><img src="images/main/deuk.PNG" width="300" height="300"></div>
                <div class=" Written_deuk">
                      <a>
                          <strong>웹 제작자 : 김득회</strong><br><br>
                          <p class="belong">소속 : 호서대학교 컴퓨터 공학과<br><br></p>
                          <p class="field">
                              [ 담당 분야 ]<br>
                              - H.T.C 공지사항 페이지<br>
                              - H.T.C 문의사항 페이지<br>
                              - H.T.C 마이페이지 페이지<br>
                          </p>
                          
                      </a>
                </div>
              </div>
  
              <div>
                  <div class="barista_img2"><img src="images/main/park.png" width="300" height="300"></div>
                  <div class=" Written_park">
                        <a>
                            <strong>웹 제작자 : 박우식</strong><br><br>
                            <p class="belong">소속 : 호서대학교 컴퓨터 공학과<br><br></p>
                            <p class="field">
                                [ 담당 분야 ]<br>
                                - H.T.C 로그인 페이지<br>
                                - H.T.C 회원가입 페이지<br>
                                - H.T.C 이벤트 페이지<br>
                            </p>
                            
                        </a>
                  </div>
                </div>
            </section>
  
            <section class="producer">
              <div>
                <div class="barista_img3"><img src="images/main/song.png" width="300" height="300"></div>
                <div class=" Written_song">
                      <a>
                          <strong>웹 제작자 : 송준하</strong><br><br>
                          <p class="belong">소속 : 호서대학교 컴퓨터 공학과<br><br></p>
                          <p class="field">
                              [ 담당 분야 ]<br>
                              - H.T.C 메인 페이지<br>
                              - H.T.C 멤버 소개 페이지<br>
                              - H.T.C 멤버스 소개 페이지<br>
                          </p>
                          
                      </a>
                </div>
              </div>
  
              <div>
                  <div class="barista_img4"><img src="images/main/jung.png" width="300" height="300"></div>
                  <div class=" Written_jung">
                        <a>
                            <strong>웹 제작자 : 정승원</strong><br><br>
                            <p class="belong">소속 : 호서대학교 컴퓨터 공학과<br><br></p>
                            <p class="field">
                                [ 담당 분야 ]<br>
                                - H.T.C 음료 페이지<br>
                                - H.T.C 주문 페이지<br>
                                - H.T.C 예약 페이지<br>
                            </p>
                            
                        </a>
                  </div>
                </div>
            </section>
          </section>
        </section>

        <section>
            <div class="languageSo block">
                <div class="clear">
                    <div class="tit">
                        <h1>Computer Language</h1>
                        <p>H.T.C 제작에 사용한 언어를 소개합니다!</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="visual_m">
            <div>
                <div class="img1"><img src="images/main/language.png" alt="언어" width="300" height="300"></div>
            </div>
        </section>

        <section>
            <div class="language">
                <div class="clear">
                    <div class="tit">
                        <p>HTML5 &nbsp;&nbsp;|&nbsp;&nbsp;  CSS3  &nbsp;&nbsp;|&nbsp;&nbsp;  TOMCAT  &nbsp;&nbsp;|&nbsp;&nbsp;  SQL  &nbsp;&nbsp;|&nbsp;&nbsp;  JAVA  &nbsp;&nbsp;|&nbsp;&nbsp;  JAVA SCRIPT</p>
                    </div>
                </div>
            </div>
        </section>


        
    </main>

    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>