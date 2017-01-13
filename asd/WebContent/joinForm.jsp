<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<!--[if IE 9]>
<html class="ie9" lang="en">    <![endif]-->
<!--[if IE 8]>
<html class="ie8" lang="en">    <![endif]-->
<head>

   <title>My Own MakeUp</title>

   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name=viewport content="width=device-width, initial-scale=1">
   <meta name="description" content="">
   <meta name="keywords" content="">

   <link rel=icon href=favicon.ico sizes="16x16" type="image/png">

   <!-- JS -->
   <script src="/asd/assets/vendor/animatedheader/js/modernizr.custom.js"></script>

   <!-- CSS -->
   <link href="/asd/assets/vendor/bootstrap/css/bootstrap.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/pe-icon-7-stroke/css/pe-icon-7-stroke.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/mfp/css/magnific-popup.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/fontawesome/css/font-awesome.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>

   <link href="/asd/assets/vendor/rs-plugin/css/settings.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/rs-plugin/css/layers.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/rs-plugin/css/navigation.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/owl-carousel/assets/owl.carousel.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>

   <link href="/asd/assets/custom/css/style.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  
  
<script type="text/javascript">
	function check() {
		var str = document.getElementById('email').value;
		var str_trim = str.trim(); // 양 끝의 공백을 삭제
		var exp = ['!','#', '$', '%', '^', '&', '*', '-', '+', '/', ' '];
		
		// @ 이외의 특수문자 검사
		for (i in exp) {
			if(str_trim.includes(exp[i])) {
				alert('@ 이외의 허용하지 않는 특수문자를 포함');
				return false; // @ 이외의 허용하지 않는 특수문자를 포함
			}
		}
		
		if(str_trim.endsWith('.')) {
			alert('. 으로 끝남');
			return false; // . 으로 끝남
		}
		
		var email = str_trim.split('@'); // @ 기준으로 2등분
		
		if(email.length != 2) {
			alert('@가 없거나 2개 이상 포함' );
			return false; // @가 없거나 2개 이상 포함
		}
		
		if(!(email[1].includes('.'))) {
			alert('뒷 부분이 . 을 포함하지 않음');
			return false; // 뒷 부분이 . 을 포함하지 않음
		}
		
 		if(!(numCheck1(email[1]))) return false;
     	if(!(numCheck2(email[1]))) return false;
		if(!(numCheck3(email[1]))) return false;
		
		alert('메일이 전송되었습니다. 메일 확인 후 나머지 회원절차를 해주시기 바랍니다.')
		document.joinForm.submit();
	}
	
	// 배열 활용
	function numCheck1(text) {
		var num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9',];
		var result = true;
		
		for (i in num) {
			if(text.includes(num[i])) {
				alert('뒷 부분에 숫자 포함');
				result = false;
				break;
			}
		}
		
		return result;
	}
	
	// 형 변환
	function numCheck2(text) {
		var result = true;
		
		for (i in text) {
			if(!(isNaN(Number(text[i])))) {
				alert('뒷 부분에 숫자 포함');
				result = false;
				break;
			}
		}
		
		return result;
	}
	
	// 정규 표현식
	function numCheck3(text) {
		var result = true;
		if(text.match(/[0-9]/) != null ) {
			alert('뒷 부분에 숫자 포함');
			result = false;
		}
		
		return result;
	}
	
	function joinResult(){
		alert("축하합니다. 회원가입이 되었습니다.");
		document.joinForm1.submit();
	}
	</script>
</head>

<body class="">


<!--Pre-Loader-->
<div id="preloader"><img src="/asd/assets/custom/images/preloader.gif" alt="01"></div>

<div id="wrapper" class="sidebar-left">

   <a href="#menu-toggle" class="" id="menu-toggle"><span class="" aria-hidden="true"></span></a>

   <!-- Sidebar -->
   <div id="sidebar-wrapper">
      <ul class="sidebar-nav">
         <li class="e-divider-4"></li>
         <li class="sidebar-brand">
            <a href="index.jsp"><img src="/asd/assets/custom/images/logo02.png" width="180" alt="logo"></a>
         </li>
          <li class="e-divider-4"></li>
         <li><a href="index.jsp" class="current">HOME</a></li>
         <li><a href="about.jsp">ABOUT US</a></li>
         <!-- <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
         <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
         <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
         <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
         <li><a href="/asd/reservation/reservationList.action">RESERVE</a></li>
         <%-- <li><a href="/asd/videochat/enter.action?user_m=<s:property value="#session.user_m"/>">F2F MAKEUP CLASS</a></li> --%>
         <li><a href="video.jsp">F2F MAKEUP CLASS</a></li>
           </ul>
      <div class="e-divider-4"></div>
      <div class="side-widget">
         <h6 class="font-accident-one-bold e-uppercase">私だけのメイクアップ</h6>
         <p class="small">メイク専門家のビデオを見てチャレンジしてみましょう。</p>
      </div>
      <div class="side-widget">
         <h6 class="font-accident-one-bold e-uppercase">Subscribe to news</h6>
         <input>
      </div>
      <div class="bottom-widget">
         <p class="small">
           © 2016 WATASIDAKENO MakeUp.
         </p>
         <p class="small">
            Sc Master 31, Seoul KOREA
            E-mail: watasinoMAKEUP@naver.com
         </p>
        <!--  <div>
            <a href="#!"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
            <a href="#!"><i class="fa fa-twitter-square" aria-hidden="true"></i></a>
            <a href="#!"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a>
            <a href="#!"><i class="fa fa-vimeo-square" aria-hidden="true"></i></a>
            <a href="#!"><i class="fa fa-pinterest-square" aria-hidden="true"></i></a>
            <a href="#!"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
            <a href="#!"><i class="fa fa-tumblr-square" aria-hidden="true"></i></a>
         </div> -->
      </div>
   </div>
   <!-- /#sidebar-wrapper -->

   <!-- Content -->
   <div id="page-content-wrapper" class="content-wrap">

      <!-- Header -->
      <header class="cbp-af-header toggled">
         <div class="cbp-af-inner">
            <div class="navbar navbar-default" role="navigation">
               <div class="container-fluid padding-side-50">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                     <h1><a href="../index.jsp">My Own MakeUp</a></h1>
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                     </button>
                  </div>
                  <!-- Collect the nav links, forms, and other content for toggling -->
                  <nav class="collapse navbar-collapse navbar-ex1-collapse">
                     <ul class="nav navbar-nav navbar-right">
                        <s:if test="#session.user_m ==null">
                         <li><a href="joinForm.jsp">JOIN</a></li>
                         </s:if>
                          <s:if test="#session.user_m !=null">
                         <li><a href="#"><s:property value="#session.user_m"/> 님 접속중</a></li>
                          </s:if>
                        <s:if test="#session.user_m ==null">
                        <li><a href="loginForm.jsp">LOGIN</a></li>
                        </s:if>
						<s:if test="#session.user_m != null">
						 <li><a href="/asd/session/logout.action">LOGOUT</a></li>
                        </s:if>
                        <li class="dropdown">
                           <a class="dropdown-toggle" data-toggle="dropdown">MENU<b class="caret"></b></a>
                           <ul class="dropdown-menu">
                              <li><a href="index.jsp" class="current">HOME</a></li>
						      <li><a href="about.jsp">ABOUT US</a></li>
						      <!-- <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
						      <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
						      <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
						      <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
						      <li><a href="/asd/reservation/reservationList.action">RESERVE</a></li>
						      <li><a href="video.jsp">F2F MAKEUP CLASS</a></li>
                           </ul>
                        </li>
                        </ul>
                  </nav><!-- /.navbar-collapse -->
               </div>
            </div>
         </div>
      </header>
      <!-- / Header -->

      <!-- Content Sections -->
      <div id="content">
           
 
         <!-- Hero Image -->
         <section id="about-hero-image">
            <div class="layer"></div>
            <div class="container-fluid hero-wrapper">
               <div class="row text-right">
                  <div class="col-md-12">
                     <div class="hero-text">
                        <h2 class="font-accident-two-normal">About Us</h2>
                        <p class="font-accident-two-normal e-uppercase letter-spacing-03">
                           There are many variations of passages of Lorem Ipsum available
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- /Hero Image -->

         <!-- Services Block -->
         <section id="services" class="e-block-regular e-block-centered services-block">
            <div class="container-fluid padding-side-50">
  
  
  <!--/회원가입------------------------------------------------------------------------------  -->             
	
	<s:form action="join"  namespace="/session" method="post" name="joinForm">
	<s:if test="email == null">
	<table style="height: auto; width: 50%;"  align="center">
		<tr>
			<td colspan="2"> <h2 class="form-signin-heading" align="center">Join</h2></td>
		</tr>
		<tr>
			<td height="80px"></td>
			<td><input type="text" name="email" id="email" width="auto" height="auto" class="form-control" placeholder="Email Address" autofocus="autofocus"/>
			   <input type="text" style="display: none;"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="button" class="btn btn-lg btn-primary btn-block"  value ="Send Mail" onclick="javascript:check()" />
			</td>
		</tr>
			
	</table>
	</s:if>
	</s:form>
	
	<s:if test="email != null">
	<s:form action="join1"  namespace="/session" method="post" name="joinForm1">
		<table style="height: auto; width: 50%;" align="center">
		
		<tr>
			<td></td>
			<td><input type="text" value='<s:property value="email"/>' class="form-control" name="email" placeholder="Email Address" required="required" autofocus="autofocus" readonly="readonly"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="text" name="user_m" id="user_m" class="form-control" placeholder="User"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="password" name="password" id="password" class="form-control" placeholder="PW1"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="password" name="password2" id="password2" class="form-control" placeholder="PW2"/></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="button" class="btn btn-lg btn-primary btn-block"  value ="Confirm" onclick="javascript:joinResult()" />
			</td>
		</tr>
	</table>
	</s:form>
	</s:if>
	<%-- 
	<s:form action="login"  namespace="/session" method="post" name="loginForm">
	<s:if test="email == null">
	 <table style="height: 100px; width: 400px;"  align="center">
                           <tr>
                              <td colspan="3" >
                                 <h2 class="form-signin-heading" align="center">Login</h2></td>
                           </tr>
                           <tr>
                              <td colspan="3" ><input type="text" class="form-control"
                                 name="email" placeholder="Email Address" required=""
                                 autofocus="" /></td>
                           </tr>
                           <tr>
                              <td colspan="3" ><input type="password" class="form-control"
                                 name="password" placeholder="Password" required="" /></td>
                           </tr>

                           <!--  <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label> -->
                        <tr>
                        <td>          </td>
                           <td  height="100px">
                              <!-- <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button> -->
                              <input type="button" class="btn btn-lg btn-primary btn-block" value="Login" onclick="javascript:check();"/>
                              </td>
                              <td>          </td>
                        </tr>
                        </table>
                        </s:if>
                       </s:form>
	
	 --%>
  <!--/회원가입------------------------------------------------------------------------------  -->   	
            </div>
         </section>
 
         <!-- Clients -->
         <section id="clients" class="e-block-short bg-color01">
            <div class="container-fluid text-center padding-side-50">
               <div class="row partners">
               <div></div>
               <!-- 
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_01.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_02.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_03.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_04.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_05.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_06.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_07.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_08.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_09.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_10.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_11.png" class="img-responsive e-centered" alt="x"></div>
                  <div class="col-xs-4 col-sm-1"><img src="/asd/assets/custom/images/clients/partners_12.png" class="img-responsive e-centered" alt="x"></div>
                   -->
               </div>
            </div>
         </section>
      </div>
   </div>
</div>


<div id="image-cache" class="hidden"></div>


<!-- JS -->
<script src="/asd/assets/vendor/jquery/js/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/animatedheader/js/classie.js"></script>
<script src="/asd/assets/vendor/animatedheader/js/cbpAnimatedHeader.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/imagesloaded/js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/isotope/js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/jquery-parallax/js/jquery.parallax-1.1.3.js"></script>
<script src="/asd/assets/vendor/anicounter/jquery.counterup.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/circle-progress/circle-progress.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/waypoints/waypoints.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/goalprogress/goalProgress.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/mfp/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>

<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="/asd/assets/vendor/rs-plugin/js/extensions/revolution.extension.video.min.js"></script>


<!-- Custom scripts -->
<script src="/asd/assets/custom/js/script.js" type="text/javascript"></script>

</body>
</html>
