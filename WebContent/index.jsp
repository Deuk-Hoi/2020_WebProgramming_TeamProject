<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <link rel="stylesheet" href="styles/css/index.css">
    <link rel="stylesheet" href="styles/css/index_tablet.css" media="all and (max-width:1120px)">
    <link rel="stylesheet" href="styles/css/index_moblie.css" media="all and (max-width:960px)">
  </head>

  <body>
    <header>
      <div>
        <h1><a href="#a"><img src="images/main/logo.PNG" alt="Hoseo TimeOut Cafe LOGO"></a></h1>
        <h2 class="hide">대메뉴</h2>
        <nav>
            <ul>
                <li><a href="#a">COFFEE</a></li>
                <li><a href="#a">ORDER</a></li>
                <li><a href="#a">MENU</a></li>
                <li><a href="#a">MEMBERSHIP</a></li>
                <li><a href="#a">EVENT</a></li>
                <li><a href="#a">Service Center</a></li>
            </ul>
        </nav>
          <ul class="spot">
            <li><a href="#a"><i class="xi-user"></i><span>  Sign In</span></a></li>
            <li><a href="#a"><i class="xi-user-plus-o"></i>  Sign Up</a></li>
            <li><a href="#a"><i class="xi-map-o"></i><span>  Find a Store</span></a></li>
          </ul>
          <a href="#a" class="total"><i class="xi-bars"></i><span>전체메뉴보기</span></a>
      </div>
    </header>

    <main>
      <div class="section">
        <input type="radio" name="slide" id="slide01" checked>
        <input type="radio" name="slide" id="slide02">
        <input type="radio" name="slide" id="slide03">
        <input type="radio" name="slide" id="slide04">
        <div class="slidewrap">
          
          <ul class="slidelist">
  
            <!-- 슬라이드 영역 -->
            <li class="slideitem">
              <a>
                <div class="textbox">
                  
                </div>
                <img src="./images/main/banner_1.PNG" width="100%">
              </a>
            </li>
            <li class="slideitem">
              <a>
                
                <div class="textbox">
                  
                </div>
                <img src="./images/main/banner_2.PNG">
              </a>
            </li>
            <li class="slideitem">
              <a>
                
                <div class="textbox">
                  
                </div>
                <img src="./images/main/banner_3.PNG">
              </a>
            </li class="slideitem">
            <li class="slideitem">
              <a>
                
                <div class="textbox">
                  
                </div>
                <img src="./images/main/banner_4.PNG">
              </a>
            </li class="slideitem">
      
            <!-- 좌,우 슬라이드 버튼 -->
            <div class="slide-control">
              <div>
                <label for="slide04" class="left"></label>
                <label for="slide02" class="right"></label>
              </div>
              <div>
                <label for="slide01" class="left"></label>
                <label for="slide03" class="right"></label>
              </div>
              <div>
                <label for="slide02" class="left"></label>
                <label for="slide04" class="right"></label>
              </div>
              <div>
                <label for="slide03" class="left"></label>
                <label for="slide01" class="right"></label>
              </div>
            </div>     
          </ul>  
        </div>
      </div>

      <section class="rewards">
        <div>
          <div class="rewardimg1"><img src="images/main/reward_logo.png" alt="가게"></div>
          <div class="info">
            <span>H.T.C 만의 <strong>특별한 혜택</strong>, MY H.T.C <strong>멤버십</strong></span>
            <p>
                <strong>H.T.C 회원이세요?</strong> 로그인을 통해 나만의 멤버십를 확인해보세요.<br>
                <strong>H.T.C 회원이 아니세요?</strong> 가입을 통해 멤버십 혜택을 즐기세요.<br>
            </p>
              <a href="" class="btn type1">회원가입</a>
              <a href="" class="btn">로그인</a>
              <p>
                회원 가입 후, H.T.C 홈페이지에서<br>
                <strong>"ORDER"로 주문하시고, 편리하게 구매 해보세요!</strong><br>
                회원를 등록하여 마이 H.T.C 멤버십 회원이 되신 후,<br>
                첫 구매를 하시면 무료 음료 쿠폰을 드립니다!
              </p>
            <a href="" class="btn type2">H.T.C - 주문하기</a>
          </div>
        </div>
      </section>

      <section class="visual">
        <div>
          <div class="img1">
            <img src="images/main/2_logo.PNG" alt="CARRT the MERRY">
            <a href="">자세히 보기</a>
          </div>
            <div class="img2"><img src="images/main/2_coffe1.PNG" alt="토피 넛 라떼"></div>
            <div class="img3"><img src="images/main/2_coffe2.PNG" alt="캐모마일 릴렉서"></div>
            <div class="img4"><img src="images/main/2_coffe3.PNG" alt="다크 초콜릿"></div>
        </div>
      </section>

      <section class="barista">
        <div>
          <div class="barista_img"><img src="images/main/barist.PNG"></div>
          <div class="barista_left_img"><img src="images/main/barist_left.PNG"></div>
          <div class="barista_btn"><a href="">M E M B E R. S T O R Y</a></div>
        </div>
      </section>

      <section class="find_store">
          <div>
            <div>
              <p>
                <span class="find_top_t">H.T.C<strong>가까이에서 경험</strong>해보세요.</span><br>
                <span class="find_top_t2">고객님과 가장 가까이 있는 매장을 찾아보세요!</span><br><br>
                차별화된 커피 경험을 누릴 수 있는 <strong>리저브 매장</strong><br>
                다양한 방법으로 편리하게 즐길 수 있는 <strong>TimeOut 시스템 매장</strong><br>
                함께해서 더 따뜻할 수 있는 지역사회 소통 공간 <strong>커뮤니티 매장</strong><br>
                <a href="" class="find_btn">매장 소개</a>
              </p>
            </div>
          </div>
      </section>
    </main>

    <footer>
      <div class="top">
        <div class="clear">
          <ul>
            <li><a href="#a">고객상담</a></li>
            <li><a href="#a">개인정보처리방침</a></li>
            <li><a href="#a">기업지배구조</a></li>
            <li><a href="#a">윤리경영</a></li>
            <li><a href="#a">Hoseo University</a></li>
            <li><a href="#a">H.T.C Coffee</a></li>
          </ul>
          <div>
            <p>고객상담<strong>041-532-4752</strong></p>
            <select>
              <option>FAMILY SITE</option>
            </select>
          </div>
        </div>
      </div>
      <div class="btm">
        <img src="./images/main/footer_logo.PNG" alt="호서대 로고">
        <p>HOSEO TIMEOUT CAFE</p>
        <ul>
          <li> 충청남도 아산시 배방읍 호서로 79번길 20 (31499) 강석규 교육관 지하 1층</li>
          <li>Tel. 041-532-4752</li>
          <li>개인정보취급관리자 웹벤져스</li>
          <li>E-mail uitlab421@vision.hoseo.edu</li>
        </ul>
        <address>Copyright 2020 HOSEO TIMEOUT CAFE All rights reserved.</address>

      </div>
    </footer>
  </body>
</html>