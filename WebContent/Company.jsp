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
	    <link rel="stylesheet" href="styles/css/default.css">
	    <link rel="stylesheet" href="styles/css/company.css">
	    <link rel="stylesheet" href="styles/css/index_tablet.css" media="all and (max-width:1120px)">
	    <link rel="stylesheet" href="styles/css/index_moblie.css" media="all and (max-width:960px)">
 	</head>

  <body>
    <jsp:include page="header.jsp"></jsp:include>

    <main>
        <section class="companystart">
            <div>
                <p>
                    <span class = "member_title">H.T.C 회사</span><br><br>
                    특별한 H.T.C의 회사를 소개합니다.<br>
                    회사의 로고와 마인드에 대해서 소개드립니다.<br>
                </p>
            </div>
        </section>

        <section class="companyindex">
            <div>
                <p>
                    <span class = "member_index">HOME  >  매장소개  >  H.T.C</span><br><br>
                </p>
            </div>
        </section>

        <section>
            <div class="companytitle">
                <div class="clear">
                    <div class="tit">
                        <h1>H.T.C 커피</h1><br>
                        <p>Always Beside You, H.T.C 커피는 언제나 당신 곁에 함께 합니다.</p><br>
                    </div>
                  </div>
            </div>
        </section>

        <section class="companyarticle">
          <div>
              <div class="img1"><img src="images/main/combk.PNG" alt="소개 배경 1" width="450" height="350"></div>
          </div>
          <div>
            <div class="info">
              <span>"커피 한잔의 진심"</strong></span>
              <p>
                ___________<br>
                해외에 로열티를 내지 않는 순수 국내 브랜드 H.T.C커피, 품질 좋고 맛있는 커피를 합리적인 가격으로<br>소비자에게 제공하는 것을 우리의 진심이라 믿습니다.
                더 맛있는 커피를 만들기위해 2010년 커피연구소<br>설립을 시작으로 2016년 4월 ‘고객과 소통하는 커피연구소’를 테마로 [H.T.C커피랩]을 오픈하여 더 나은<br>커피를 위해 끊임없는 연구 개발을 진행하고 있습니다.<br>
              </p>
            </div>
          </div>
        </section>

        <section class="companyarticle2">
            <div>
                <div class="img1"><img src="images/main/combk2.PNG" alt="소개 배경2" width="450" height="350"></div>
            </div>
            <div>
              <div class="info">
                <span>"함께 행복하기 위한 상생협력"</strong></span>
                <p>
                  ___________<br>
                    H.T.C커피는 고객, 가맹점주, 협력사와의 상생협력을 무엇보다 소중하게 생각합니다.
                    H.T.C커피의<br> ‘상생협력’은 정직과 신뢰를 기반으로 장기적으로 구축되었습니다. 
                    고객들에겐 우리의 진심을 제공하고,<br>가맹점주에게는 다양한 지원정책으로 미래의 행복으로 인도하며, 협력사와는 오랜기간 쌓아온 굳건한 신뢰로<br>양질의 원부자재를 공급받고 있습니다.
                </p>
              </div>
            </div>
          </section>
          <section class="companylogo">

            <section>
                <div class="companytitle">
                    <div class="clear">
                        <div class="tit">
                            <h1>경영철학</h1><br>
                            <p>고객과 가맹점주, 협력사의 상생의 가치를 실천합니다.</p><br>
                        </div>
                      </div>
                </div>
            </section>

            <section class="companylogoin">
              <div>
                
                <div class="mind">
                      <a>
                          <strong>기본을 지키는 정직한 기업</strong><br><br>
                          <p class="field">
                              고객에게 우수한 품질의 커피를 합리적인 가격에<br>
                              제공하고, 가맹점주를 위해 매장 수익을 최우선하며,<br>
                              협력업체와의 오랜 신뢰를 이어갑니다.<br>
                          </p>
                          
                      </a>
                </div>
              </div>
  
              <div>
                 
                  <div class="love">
                        <a>
                            <strong>사람을 생각하는 따뜻한 기업</strong><br><br>
                            <p class="field">
                                늘 고객의 입장에서 먼저 생각하고,<br>
                                가맹점주의 입장을 배려하며,<br>
                                사회와 함께하려고 노력합니다.<br>
                            </p>
                            
                        </a>
                  </div>
                </div>

                <div>
                   
                    <div class="lock">
                          <a>
                              <strong>신나고 행복한 즐거운 기업</strong><br><br>
                              <p class="field">
                                수평적 소통이 이루어지는 젊은 기업문화<br>
                                업계 최고 수준의 복지혜택을 통해<br>
                                직원 모두가 즐겁게 일하는 기업을 만듭니다.<br>
                              </p>
                          </a>
                    </div>
                  </div>
            </section>
          </section>
    </main>

	<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>