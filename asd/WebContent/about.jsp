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
            <a href="index.jsp"><img src="assets/custom/images/logo02.png" width="180" alt="logo"></a>
         </li>
          <li class="e-divider-4"></li>
         <li><a href="index.jsp">HOME</a></li>
         <li><a href="about.jsp" class="current">ABOUT US</a></li>
        <!--  <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
         <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
         <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
         <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
         <li><a href="/asd/reservation/reservationList.action">RESERVE</a></li>
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
                     <h1><a href="index.jsp">My Own MakeUp</a></h1>
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
                              <li><a href="index.jsp">HOME</a></li>
						      <li><a href="about.jsp" class="current">ABOUT US</a></li>
						     <!--  <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
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

     <!--  Content Sections -->
      <div id="content">

        <!--  Hero Image -->
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
        <!--  /Hero Image -->

        <!--  Services Block -->
         <section id="services" class="e-block-regular e-block-centered services-block">
            <div class="container-fluid padding-side-50">

               <div class="row">
                  <div class="col-lg-3 col-md-6">
                     <a href="#!"><div class="rd-medal e-centered"><i class="pe-7s-world"></i></div></a>
                     <div class="dividewhite3"></div>
                     <h4 class="font-accident-one-normal e-uppercase">Identity</h4>
                     <p class="small">
                        There are 2 basic types of landing page, Click Through and Lead Generation (also referred to as Lead Gen or Lead Capture pages).
                     </p>
                     <h6 class="font-accident-one-normal e-uppercase fontcolor-medium-light"><a href="#!">learn more</a></h6>
                     <div class="e-divider-dynamic"></div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <a href="#!"><div class="rd-medal e-centered"><i class="pe-7s-target"></i></div></a>
                     <div class="dividewhite3"></div>
                     <h4 class="font-accident-one-normal e-uppercase">Development</h4>
                     <p class="small">
                        Click through landing pages (as the name implies) have the goal of persuading the visitor to click through to another page.
                     </p>
                     <h6 class="font-accident-one-normal e-uppercase fontcolor-medium-light"><a href="#!">learn more</a></h6>
                     <div class="e-divider-dynamic"></div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <a href="#!"><div class="rd-medal e-centered"><i class="pe-7s-science"></i></div></a>
                     <div class="dividewhite3"></div>
                     <h4 class="font-accident-one-normal e-uppercase">Ui / UX Design</h4>
                     <p class="small">
                        All too often, inbound advertising traffic is directed at shopping cart or registration pages. This leads to poor conversions
                     </p>
                     <h6 class="font-accident-one-normal e-uppercase fontcolor-medium-light"><a href="#!">learn more</a></h6>
                     <div class="e-divider-dynamic"></div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <a href="#!"><div class="rd-medal e-centered"><i class="pe-7s-like"></i></div></a>
                     <div class="dividewhite3"></div>
                     <h4 class="font-accident-one-normal e-uppercase">Video Effects</h4>
                     <p class="small">
                        As a result, the destination page from a click through page is typically the shopping cart or registration page – now with a ...
                     </p>
                     <h6 class="font-accident-one-normal e-uppercase fontcolor-medium-light"><a href="#!">learn more</a></h6>
                     <div class="e-divider-dynamic"></div>
                  </div>
               </div>
            </div>
         </section>
         <!-- /Services Block -->

         <!-- Goal block -->
         <section id="goal" class="e-block-short">
            <div class="layer"></div>
            <div class="container-fluid padding-side-50">
               <div class="row">
                  <div class="col-lg-7">
                     <h4 class="font-accident-two-normal color13 e-uppercase letter-spacing-03">Prototyping</h4>
                     <div id="proto" class="text-right"></div>
                     <div class="e-divider-2"></div>

                     <h4 class="font-accident-two-normal color13 e-uppercase letter-spacing-03">Development</h4>
                     <div id="develop" class="text-right"></div>
                     <div class="e-divider-2"></div>

                     <h4 class="font-accident-two-normal color13 e-uppercase letter-spacing-03">Design</h4>
                     <div id="design" class="text-right"></div>
                     <div class="e-divider-2"></div>

                     <h4 class="font-accident-two-normal color13 e-uppercase letter-spacing-03">Testing</h4>
                     <div id="testing" class="text-right"></div>
                     <div class="e-divider-4"></div>
                  </div>
                  <div class="col-lg-5">
                     <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="https://player.vimeo.com/video/36284917?title=0&byline=0&portrait=0" width="500" height="208" allowfullscreen></iframe>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- /Goal block -->

         <!-- Counts Block -->
         <section id="counts" class="e-block-regular">
            <div class="container-fluid padding-side-50">
               <div class="count-container row">
                  <div class="col-md-12 e-divider-dynamic"></div>

                  <div class="col-lg-3 col-sm-6 count text-center">
                     <div class="count-icon">
                        <i class="pe-7s-volume1"></i>
                     </div>
                     <span class=".integers digit font-accident-two-normal">12654</span>
                     <div class="count-text e-uppercase">Photos added</div>
                     <div class="e-divider-dynamic"></div>
                  </div>
                  <div class="col-lg-3 col-sm-6 count text-center">
                     <div class="count-icon">
                        <i class="pe-7s-star"></i>
                     </div>
                     <span class=".integers digit font-accident-two-normal">65</span>
                     <div class="count-text e-uppercase">Places visited</div>
                     <div class="e-divider-dynamic"></div>
                  </div>
                  <div class="col-lg-3 col-sm-6 count text-center">
                     <div class="count-icon">
                        <i class="pe-7s-disk"></i>
                     </div>
                     <span class=".integers digit font-accident-two-normal">9356</span>
                     <div class="count-text e-uppercase">Posts written</div>
                     <div class="e-divider-dynamic"></div>
                  </div>
                  <div class="col-lg-3 col-sm-6 count text-center">
                     <div class="count-icon">
                        <i class="pe-7s-graph"></i>
                     </div>
                     <span class=".integers digit font-accident-two-normal">156</span>
                     <div class="count-text e-uppercase">Days remaining</div>
                     <div class="e-divider-dynamic"></div>
                  </div>
               </div>
            </div>
         </section>
         <!-- /Counts Block -->

         <!-- Promo -->
         <section id="promo" class="e-block-regular e-block-skin bg-color01">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-sm-6"></div>
                  <div class="col-sm-6">
                     <div class="e-divider-8"></div>
                     <h3 class="font-accident-two-normal e-uppercase">I am happy to make business <br>with the Folius Team...</h3>
                     <p class="big color04">Rudolfo Sanchez Jr.</p>
                     <div class="e-divider-8"></div>
                  </div>
               </div>
            </div>
         </section>
         <!-- /Promo -->

        <!--  Colleagues -->
         <section id="colleagues" class="e-block-short">
            <div class="container-fluid padding-side-50">

               <div class="text-center">
                  <h3 class="font-accident-two-normal e-uppercase">Our Magic Team</h3>
                  <div class="e-divider-8"></div>
               </div>

               <div class="row">
                  <div class="col-md-3 col-xs-6 text-center">
                     <div class="e-width-80 e-centered collegaues">
                        <img src="/asd/assets/custom/images/userpic02.jpg" alt="Rachel James Johnes" class="img-responsive author-userpic">
                        <div class="e-divider-3"></div>
                        <p class="font-accident-one-bold e-uppercase">Udo Stein</p>
                        <p class="small color04">Creative Director</p>
                        <div class="e-divider-dynamic"></div>
                     </div>
                  </div>
                  <div class="col-md-3 col-xs-6 text-center">
                     <div class="e-width-80 e-centered collegaues">
                        <img src="/asd/assets/custom/images/userpic03.jpg" alt="Rachel James Johnes" class="img-responsive author-userpic">
                        <div class="e-divider-3"></div>
                        <p class="font-accident-one-bold e-uppercase">James Quinn</p>
                        <p class="small color04">CEO</p>
                        <div class="e-divider-dynamic"></div>
                     </div>
                  </div>
                  <div class="col-md-3 col-xs-6 text-center">
                     <div class="e-width-80 e-centered collegaues">
                        <img src="/asd/assets/custom/images/userpic04.jpg" alt="Rachel James Johnes" class="img-responsive author-userpic">
                        <div class="e-divider-3"></div>
                        <p class="font-accident-one-bold e-uppercase">Franc Ditz</p>
                        <p class="small color04">Lead Designer</p>
                        <div class="e-divider-dynamic"></div>
                     </div>
                  </div>
                  <div class="col-md-3 col-xs-6 text-center">
                     <div class="e-width-80 e-centered collegaues">
                        <img src="/asd/assets/custom/images/userpic05.jpg" alt="Rachel James Johnes" class="img-responsive author-userpic">
                        <div class="e-divider-3"></div>
                        <p class="font-accident-one-bold e-uppercase">Helen Zorba</p>
                        <p class="small color04">Head of UI/UX</p>
                        <div class="e-divider-dynamic"></div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
        <!--  /Colleagues -->

         <!-- Clients -->
         <section id="clients" class="e-block-short bg-color01">
            <div class="container-fluid text-center padding-side-50">
               <div class="row partners">
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
               </div>
            </div>
         </section>
         <!-- /Clients -->


      </div>
      <!-- /Content Sections -->

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
