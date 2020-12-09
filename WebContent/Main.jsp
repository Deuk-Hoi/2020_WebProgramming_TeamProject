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
    <jsp:include page="header.jsp"></jsp:include>
    
    <main>
      <div class="section">
        <input type="radio" name="slide" id="slide01" checked>
        <input type="radio" name="slide" id="slide02">
        <input type="radio" name="slide" id="slide03">
        <input type="radio" name="slide" id="slide04">
        <div class="slidewrap">
          
          <ul class="slidelist">
  
            <!-- �щ�쇱�대�� ���� -->
            <li class="slideitem">
              <a>
                <div class="textbox">
                  
                </div>
                <img src="images/main/banner_1.PNG" width="100%">
              </a>
            </li>
            <li class="slideitem">
              <a>
                
                <div class="textbox">
                  
                </div>
                <img src="images/main/banner_2.PNG">
              </a>
            </li>
            <li class="slideitem">
              <a>
                
                <div class="textbox">
                  
                </div>
                <img src="images/main/banner_3.PNG">
              </a>
            </li class="slideitem">
            <li class="slideitem">
              <a>
                
                <div class="textbox">
                  
                </div>
                <img src="images/main/banner_4.PNG">
              </a>
            </li class="slideitem">
      
            <!-- 醫�,�� �щ�쇱�대�� 踰��� -->
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
          <div class="rewardimg1"><img src="images/main/reward_logo.png" alt="媛�寃�"></div>
          <div class="info">
            <span>H.T.C 留��� <strong>�밸��� ����</strong>, MY H.T.C <strong>硫ㅻ���</strong></span>
            <p>
                <strong>H.T.C �����댁�몄��?</strong> 濡�洹몄�몄�� �듯�� ��留��� 硫ㅻ���瑜� ���명�대낫�몄��.<br>
                <strong>H.T.C ������ �����몄��?</strong> 媛����� �듯�� 硫ㅻ��� ������ 利�湲곗�몄��.<br>
            </p>
              <a href="sign_up.jsp" class="btn type1">����媛���</a>
              <a href="login_main.jsp" class="btn">濡�洹몄��</a>
              <p>
                ���� 媛��� ��, H.T.C �����댁�����<br>
                <strong>"ORDER"濡� 二쇰Ц����怨�, �몃━��寃� 援щℓ �대낫�몄��!</strong><br>
                ����瑜� �깅����� 留��� H.T.C 硫ㅻ��� ������ ���� ��,<br>
                泥� 援щℓ瑜� ����硫� 臾대� ��猷� 荑��곗�� ��由쎈����!
              </p>
            <a href="" class="btn type2">H.T.C - 二쇰Ц��湲�</a>
          </div>
        </div>
      </section>

      <section class="visual">
        <div>
          <div class="img1">
            <img src="images/main/2_logo.PNG" alt="CARRT the MERRY">
            <a href="">���명�� 蹂닿린</a>
          </div>
            <div class="img2"><img src="images/main/2_coffe1.PNG" alt="���� �� �쇰��"></div>
            <div class="img3"><img src="images/main/2_coffe2.PNG" alt="罹�紐⑤��� 由대����"></div>
            <div class="img4"><img src="images/main/2_coffe3.PNG" alt="�ㅽ�� 珥�肄�由�"></div>
        </div>
      </section>

      <section class="barista">
        <div>
          <div class="barista_img"><img src="images/main/barist.PNG"></div>
          <div class="barista_left_img"><img src="images/main/barist_left.PNG"></div>
          <div class="barista_btn"><a href="Member.jsp">M E M B E R. S T O R Y</a></div>
        </div>
      </section>

      <section class="find_store">
          <div>
            <div>
              <p>
                <span class="find_top_t">H.T.C<strong>媛�源��댁���� 寃쏀��</strong>�대낫�몄��.</span><br>
                <span class="find_top_t2">怨�媛���怨� 媛��� 媛�源��� ���� 留ㅼ�μ�� 李얠��蹂댁�몄��!</span><br><br>
                李⑤����� 而ㅽ�� 寃쏀���� ��由� �� ���� <strong>由ъ��釉� 留ㅼ��</strong><br>
                �ㅼ���� 諛⑸��쇰� �몃━��寃� 利�湲� �� ���� <strong>TimeOut ���ㅽ�� 留ㅼ��</strong><br>
                �④��댁�� �� �곕�삵�� �� ���� 吏����ы�� ���� 怨듦� <strong>而ㅻ�ㅻ���� 留ㅼ��</strong><br>
                <a href="" class="find_btn">留ㅼ�� ��媛�</a>

              </p>
            </div>
          </div>
      </section>
    </main>

	<jsp:include page="footer.jsp"></jsp:include>

  </body>
</html>