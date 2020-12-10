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
    <link rel="stylesheet" href="styles/css/membership.css">
    <link rel="stylesheet" href="styles/css/index_tablet.css" media="all and (max-width:1120px)">
    <link rel="stylesheet" href="styles/css/index_moblie.css" media="all and (max-width:960px)">
  </head>
  <body>
  
    <jsp:include page="header.jsp"></jsp:include>

    <main>
        <section class="membershipstart">
            <div>
                <p>
                    <span class = "member_title">H.T.C 멤버스</span><br><br>
                    H.T.C 커피의 특별한 멤버십 서비스를 소개합니다.<br>
                    스탬프 적립, FREE 쿠폰, 이벤트 혜택 등 지금 H.T.C 멤버스에서 만나보세요<br>
                    <a href="MyPage.jsp">나의 멤버십 보기</a>
                </p>
            </div>
        </section>

        <section class="membershipindex">
            <div>
                <p>
                    <span class = "member_index">HOME  >  H.T.C 멤버스  >  멤버스 소개</span><br><br>
                </p>
            </div>
        </section>

        <section class="membershiparticle">
          <div>
              <div class="img1"><img src="images/main/moblie_benefit.PNG" alt="휴대폰"></div>
          </div>
          <div>
            <div class="info">
              <span>H.T.C 멤버스란?</strong></span>
              <p>
                  음료 구매 시 스탬프 적립 및 FREE 쿠폰의 혜택을 드리는 H.T.C만의<br>
                  모바일 멤버십 서비스입니다. H.T.C 쿠폰, 선물하기, H.T.C 오더 등 다양한<br>
                  서비스를 지금 바로 이용하세요!<br>
              </p>
            </div>
          </div>
        </section>

        <section class="membershipBenefits">
          <div>
              <div class="img1"><img src="images/main/stamp.PNG" alt="스탬프"></div>
              <div class="img2"><img src="images/main/coupon.PNG" alt="쿠폰"></div>
              <div class="img3"><img src="images/main/grade.PNG" alt="등급"></div>
              <div class="img4"><img src="images/main/gift.PNG" alt="선물"></div>
              <div class="img5"><img src="images/main/card.PNG" alt="카드"></div>
              <div class="img6"><img src="images/main/phone.PNG" alt="휴대폰"></div>
          </div>
        </section>

        <section class="membershipGrade">
          <div>
                  <span class = "member_title">등급 및 혜택</span><br><br>
              <p>
                  H.T.C 멤버스는 스탬프가 적립될 때마다 혜택도 차곡차곡 쌓입니다.<br>
                  사용할수록 모이는 H.T.C 커피만의 특별한 혜택, H.T.C 멤버스 회원 등급을 소개합니다.<br>
              </p>
              <div class="img1"><img src="images/main/bronze.PNG" alt="브론즈"></div>
              <div class="img2"><img src="images/main/silver.PNG" alt="실버"></div>
              <div class="img3"><img src="images/main/gold.PNG" alt="골드"></div>
              <div class="img4"><img src="images/main/plere.PNG" alt="플레티넘"></div>

              <div class="info">
                <p>
                  <span>혜택안내</span><br><br>
                    -스탬프 12개 적립 시, 아메리카노(R) FREE쿠폰 증정<br>
                    -등급별 다양한 프로모션 및 이벤트 참여기회 제공<br>
                </p>
              </div>

              <div class="info2">
                <p>
                  <span>이용안내</span><br><br>
                    -스탬프 유효기간은 스탬프 별 1년이며, 쿠폰 유효기간은 발행일 기준 1개월입니다.<br>
                    -등급상승 : 해당 승급조건 충족 시 익일부터 적용됩니다.<br>
                    -등급기간 : 승급 일자로부터 1년간 유효합니다.<br>
                    -등급변경 : 승급 일자로부터 1년간 등급 유지 후 승급조건에 해당하는 등급으로 변경됩니다.<br>
                    -회원 전용 프로모션은 운영에 따라 변경될 수 있습니다.<br>
                </p>
              </div>
          </div>
        
      </section>

      <section class="membershipterms">
        <div>
                <span class = "member_title">H.T.C 멤버스 이용약관</span><br><br>
            <p>
               자세한 내용은 아래 약관 별 전문 보기를 통해 확인하실 수 있습니다.
            </p>
            <input type="checkbox" id="popup">
            <label for="popup"><a>H.T.C 이용약관</a></label>
            <div>
              <div>
                <label for="popup">X</label>
                <br><br><span>H.T.C 멤버스 이용약관</span><br><br>
                제 1 장 총칙<br><br>
                제 1 조 (목적)<br><br>
                <p>
                이 약관은 (주)H.T.C(이하 ‘회사’ 또는 ‘H.T.C’라고 함)가 제공하는 멤버십 서비스(이하 ‘H.T.C멤버스’라고 함)의 이용과 관련하여 필요한 이용 조건, 절차 및 ’회사’와 ‘회원’간의 권리, 의무 등 기본적인 사항을 규정하는 것을 목적으로 합니다.
                </p>
              </div>
              <label for="popup"></label>
            </div>
            <input type="checkbox" id="popup2">
            <label for="popup2"><a>개인정보 처리 방침</a></label>
            <div>
              <div>
                <label for="popup2">X</label>
                  <br><br><span>개인정보 처리방침</span><br><br><br>
                  <p>
                    (주)H.T.C'(이하 'H.T.C'라고 함)는 회원의 개인정보를 중요시하며,"정보통신망 이용촉진 및 정보보호에 관한 법률" 및 “개인정보보호법”을 준수하고 있습니다. <br><br>H.T.C는 개인정보취급방침을 통하여 회원으로부터 제공받은 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.
                    타인의 개인정보를 도용하여 가입할 경우 관련 법령에 따라 처벌될수 있으며, 당사는 만 14세 미만자의 회원가입 시 법정대리인의 동의를 받고 있습니다.<br><br>
                    H.T.C는 개인정보취급방침을 개정하는 경우 웹사이트 또는 모바일 어플리케이션 공지사항(또는 개별공지)을 통해 회원에게 고지합니다.<br><br>개정된 이후에도 회원이 1개월간 이의 제기 없이 계속적으로 서비스를 이용하는 경우에는 개정사항에 동의한 것으로 간주합니다.
                    * 본 방침은 2020 년 11 월 22 일부터 시행됩니다.
                  </p>
              </div>
              <label for="popup2"></label>
            </div>
        </div>
        <div>
          <input type="checkbox" id="popup3">
            <label for="popup3"><a>위치기반 서비스 이용약관</a></label>
            <div>
              <div>
                <label for="popup3">X</label>
                <br><br><span>위치기반 서비스 이용약관</span><br><br>
                제 1 조 (이용 목적)<br><br>
                  <p>
                    본 약관은 ‘회원’(H.T.C멤버스 회원으로서, 본 약관에 동의한 자를 말하며, 이하 ‘회원’이라고 합니다)이 (주)H.T.C(이하 ’회사’라고 합니다)가 제공하는 위치기반서비스(이하 ‘서비스’라고 합니다)를 이용함에 있어 ’회사’와 ‘회원’의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.
                  </p>
              </div>
              <label for="popup3"></label>
            </div>
            <input type="checkbox" id="popup4">
            <label for="popup4"><a>마케팅 활용 및 광고성 정보 수신동의</a></label>
            <div>
              <div>
                <label for="popup4">X</label>
                <br><br><span>마케팅 활용 및 광고성 정보 수신동의</span><br><br>
                  <p>
                    수집하는 개인정보는 마케팅, 프로모션, 이벤트, 행사관련 정보 안내 및 제반 마케팅활동, 맞춤형 서비스 제공, 맞춤형 쿠폰 제공, 당사 및 제휴사 상품/서비스 안내 및 권유 등을 위해 사용하며, 회사는 해당 업무를 수행하기 위하여 수탁사를 활용할 수 있고, 이에 대해서는 개인정보 처리방침을 통해 확인 가능합니다.<br><br>
                    선택 사항에 동의하지 않으셔도 서비스 가입 및 이용이 가능하나, 동의하지 않을 경우 제공 가능한 관련 편의 사항 등(맞춤형 쿠폰 기타 각종 혜택 등)이 제한될 수 있습니다.
                  </p>
              </div>
              <label for="popup4"></label>
            </div>
        </div>
      </section>
    </main>

    <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>