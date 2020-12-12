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
	    <link rel="stylesheet" href="styles/css/header.css">
	    <link rel="stylesheet" href="styles/css/index_tablet.css" media="all and (max-width:1120px)">
	    <link rel="stylesheet" href="styles/css/index_moblie.css" media="all and (max-width:960px)">
	    <%
		String id ="";		
		id=(String)session.getAttribute("userId");
		%>

	    <script type="text/javascript">
			function Logout(s){
				location.href="Logout_Action.jsp";
			}
		</script>
</head>
<body>
	<header>
      <div>
        <h1><a href="Main.jsp"><img src="images/main/logo.PNG" alt="Hoseo TimeOut Cafe LOGO"></a></h1>
        <h2 class="hide">대메뉴</h2>
        <nav>
            <ul>
                <li><a href="#a">COFFEE</a></li>
                <li><a href="#a">ORDER</a></li>
                <li><a href="#a">MENU</a></li>
                <li><a href="Membership.jsp">MEMBERSHIP</a></li>
                <li><a href="Event_page.jsp">EVENT</a></li>
                <li><a href="Customer_Sound.jsp">Service Center</a></li>
            </ul>
        </nav>
          <ul class="spot">
          <%if(id==null||id.equals("")){%>
            <li><a href="login_main.jsp"><i class="xi-user"></i><span>  Sign In</span></a></li>
            <li><a href="sign_up.jsp"><i class="xi-user-plus-o"></i>  Sign Up</a></li>
            <li><a href="#a"><i class="xi-map-o"></i><span>  Find a Store</span></a></li>
            <%}else{%>
            <li><a><span><%out.print(id);%>님. 환영합니다!</span></a></li>
            <li><a><span><input type="button" value="Log out" onclick="Logout()" style="background-color:rgba( 255, 255, 255, 0 );font-size:13px;"></span></a></li>
            <%} %>
          </ul>
              <section class="mainheader">
		            <input type="checkbox" id="hambu">
		                <label for="hambu"><a class="total"><i class="xi-bars"></i></a></label>
		                <div>
		                  <div>
		                    <label for="hambu">close</label>
		                    <a href="#a">COFFEE</a>
		                    <a href="#a">ORDER</a>
		                    <a href="Notice.jsp">Notice</a>
		                    <a href="Membership.jsp">MEMBERSHIP</a>
		                    <a href="Event_page.jsp">EVENT</a>
		                    <a href="Customer_Sound.jsp">Service Center</a>
		                  </div>
		                  <label for="hambu"></label>
		                </div>
		          </section>
          <a href="#a" class="total"><i class="xi-bars"></i><span>전체메뉴보기</span></a>
      </div>
    </header>
    

</body>
</html>