<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
   <script src="assets/vendor/animatedheader/js/modernizr.custom.js"></script>

   <!-- CSS -->
   <link href="assets/vendor/bootstrap/css/bootstrap.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="assets/vendor/pe-icon-7-stroke/css/pe-icon-7-stroke.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="assets/vendor/mfp/css/magnific-popup.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="assets/vendor/fontawesome/css/font-awesome.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="assets/vendor/owl-carousel/assets/owl.carousel.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>

   <link href="assets/vendor/rs-plugin/css/settings.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="assets/vendor/rs-plugin/css/layers.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="assets/vendor/rs-plugin/css/navigation.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>

   <link href="assets/custom/css/style.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>





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
         <li><a href="index.jsp">ホーム</a></li>
         <li><a href="about.jsp">About</a></li>
         <li><a href="portfolio.jsp" class="current">ポートフォリオ</a></li>
         <li><a href="/asd/video/vlist.action">メイクビデオ</a></li>
         <li><a href="blog-list.jsp">メイクビデオ２</a></li>
         <li><a href="/asd/board/list.action">メイクトーク</a></li>
         <li><a href="reservation.jsp">予約受け付け</a></li>
         <li><a href="video.jsp">１：１メイク講習</a></li>
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
                     <h1><a href="index.jsp">Makeup</a></h1>
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
                         <li><a href="joinForm.jsp">会員登録</a></li>
                        <s:if test="#session.user_m ==null">
                        <li><a href="loginForm.jsp">ログイン</a></li>
                        </s:if>
						<s:if test="#session.user_m != null">
						 <li><a href="/asd/session/logout.action">ログアウト</a></li>
                        </s:if>
                        <li class="dropdown">
                           <a class="dropdown-toggle" data-toggle="dropdown">メニュー<b class="caret"></b></a>
                           <ul class="dropdown-menu">
                              <li><a href="index.jsp">ホーム</a></li>
						      <li><a href="about.jsp">About</a></li>
						      <li><a href="portfolio.jsp" class="current">ポートフォリオ</a></li>
						      <li><a href="/asd/video/vlist.action">メイクビデオ</a></li>
						      <li><a href="blog-list.jsp">メイクビデオ２</a></li>
						      <li><a href="/asd/board/list.action">メイクトーク</a></li>
						      <li><a href="reservation.jsp">予約受け付け</a></li>
						      <li><a href="video.jsp">１：１メイク講習</a></li>
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

         <!--<section id="portfolio-hero-image">-->
            <!--<div class="layer"></div>-->
            <!--<div class="container-fluid hero-wrapper">-->
               <!--<div class="row text-right">-->
                  <!--<div class="col-md-12">-->
                     <!--<div class="hero-text">-->
                        <!--<h2 class="font-accident-two-normal">Our Portfolio</h2>-->
                        <!--<p>-->
                           <!--There are many variations of passages of Lorem Ipsum available...-->
                        <!--</p>-->
                     <!--</div>-->
                  <!--</div>-->
               <!--</div>-->
            <!--</div>-->
         <!--</section>-->

         <!-- Revolution Slider -->
         <section class="slider-revolution">
            <div class="rev_slider_wrapper">
               <div id="slider4" class="rev_slider head-overlay" data-version="5.0">
                  <ul>   <!-- SLIDE  -->
                     <li data-index="rs-266"
                         data-transition="zoomout"
                         data-slotamount="default"
                         data-easein="Power3.easeInOut"
                         data-easeout="Power3.easeInOut"
                         data-masterspeed="3000"
                         data-thumb="../../assets/images/vimeobg-100x50.jpg"
                         data-rotate="0"
                         data-saveperformance="off"
                         data-title="Intro"
                         data-description="">

                        <!-- MAIN IMAGE -->
                        <img src="assets/custom/video/moving-forward/snapshots/moving-forward.jpg"
                             alt=""
                             data-bgposition="center center"
                             data-bgfit="cover"
                             data-bgrepeat="no-repeat"
                             data-bgparallax="0"
                             class="rev-slidebg"
                             data-no-retina>
                        <!-- LAYERS -->

                        <!-- BACKGROUND VIDEO LAYER -->
                        <div class="rs-background-video-layer"
                             data-forcerewind="on"
                             data-volume="mute"
                             data-videomp4="assets/custom/video/moving-forward/mp4/moving-forward.mp4"
                             data-videowidth="100%"
                             data-videoheight="100%"
                             data-videocontrols="none"
                             data-videostartat="00:00"
                             data-videoendat="00:48"
                             data-videoloop="loop"
                             data-forceCover="1"
                             data-aspectratio="4:3"
                             data-autoplay="true"
                             data-autoplayonlyfirsttime="false"
                             data-nextslideatend="true"
                        ></div>


                        <!-- LAYER NR. 1 -->

                        <div class="tp-caption cap-title font-accident-two-normal color00 e-uppercase tp-resizeme rs-parallaxlevel-1"
                             data-x="center"
                             data-y="bottom"
                             data-basealign="grid"
                             data-voffset="100"
                             data-hoffset="0"
                             data-width=”auto”
                             data-height=”auto”
                             data-whitespace=”[‘nowrap’,’normal’,’normal’,’normal’]”
                             data-transform_idle="o:1;"
                             data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
                             data-transform_out="auto:auto;s:700;"
                             data-start="950"
                             data-splitin=”none”
                             data-splitout=”none”
                             data-responsive_offset=”on”
                             data-fontsize="['36','34','30','20']"
                             data-lineheight="['120','100','90','80']"
                             style="z-index: 2;">the Folius Portfolio
                        </div>

                        <!-- LAYER NR. 3 -->
                        <div class="tp-caption cap-sub-subtitle font-regular-normal color00 e-uppercase tp-resizeme rs-parallaxlevel-1"
                             data-x="center"
                             data-y="bottom"
                             data-basealign="grid"
                             data-voffset="105"
                             data-hoffset="0"
                             data-width=”auto”
                             data-height=”auto”
                             data-whitespace=”[‘nowrap’,’normal’,’normal’,’normal’]”
                             data-transform_idle="o:1;"
                             data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
                             data-transform_out="auto:auto;s:700;"
                             data-start="1500"
                             data-splitin=”none”
                             data-splitout=”none”
                             data-responsive_offset=”on”
                             style="z-index: 2;">HTML Template
                        </div>

                        <!-- LAYER NR. 4 -->
                        <div class="tp-caption Hero-Button rev-btn  rs-parallaxlevel-1"
                             id="slide-266-layer-2"
                             data-x="['center','center','center','center']"
                             data-hoffset="['0','0','0','0']"
                             data-y="bottom"
                             data-voffset="50"
                             data-width="none"
                             data-height="none"
                             data-whitespace="nowrap"
                             data-transform_idle="o:1;"
                             data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                             data-style_hover="c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);cursor:pointer;"

                             data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
                             data-transform_out="auto:auto;s:700;"
                             data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                             data-start="2000"
                             data-splitin="none"
                             data-splitout="none"
                             data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'
                             data-responsive_offset="on"
                             data-responsive="off"

                             style="z-index: 9; white-space: nowrap;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box; border: none; background: rgba(255, 255, 255, .6); color: #252525;">
                           CONTINUE
                        </div>
                     </li>
                  </ul>
                  <div class="tp-bannertimer"></div>
               </div>

            </div>
         </section>
         <!-- /Revolution Slider -->

         <section id="port-item-details">
            <div class="container-fluid padding-side-60">

               <div class="e-divider-8"></div>
               <div class="post-header">
                  <h2 class="e-uppercase">Product One</h2>
                  <div class="e-divider-2"></div>
               </div>
               <div class="e-divider-4"></div>
               <div class="row">
                  <div class="col-md-4">
                     <img src="assets/custom/images/portfolio/06-01.jpg" class="img-responsive">
                     <div class="e-divider-2"></div>
                     <ul class="jobinfo">
                        <li>Date: <span>02.03.2016</span></li>
                        <li>Categories: <span>Mobile Apps, Design</span></li>
                        <li>Client: <span>Missile Entertainment</span></li>
                        <li>Web: <span>oneproduct.com</span></li>
                        <li>Author: <span>James Sullivan</span></li>
                     </ul>
                  </div>
                  <div class="col-md-1"></div>
                  <div class="col-md-7">
                     <h3 class="font-accident-two-normal e-uppercase">Overview</h3>
                     <div class="e-divider-2"></div>
                     <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                        when an unknown printer took a galley of type and scrambled it to make a type
                        specimen book. It has survived not only five centuries, but also the leap into
                        electronic typesetting, remaining essentially unchanged. It was popularised in
                        the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
                        and more recently with desktop publishing software like Aldus PageMaker including
                        versions of Lorem Ipsum.
                     </p>

                     <p>
                        Praesent pulvinar urna ut leo iaculis feugiat. Pellentesque id metus quis sem maximus consequat id eu metus. Fusce finibus tincidunt lorem, vitae consectetur eros malesuada ac. Praesent vulputate ornare turpis sit amet malesuada. Nunc ut mi sed ipsum tempor ultricies id nec lectus. Ut feugiat est quis sapien posuere viverra. Morbi ut hendrerit dui, sed pellentesque lacus. In blandit venenatis nunc sed fringilla. Proin scelerisque ac purus id pretium. Sed tincidunt, nisi ac feugiat faucibus, sapien tortor vehicula nisl, at egestas lorem odio convallis sem. Mauris ac aliquet nulla, ac varius diam. Nulla rhoncus congue felis, vel accumsan sem ultricies vel.

                        Aenean diam lacus, imperdiet nec quam nec, imperdiet consequat metus. Sed pretium convallis urna, vitae condimentum lacus commodo vel. Quisque non congue neque, et rutrum ante. Mauris eget vehicula urna. Pellentesque maximus eleifend enim quis euismod. Cras id placerat ligula, id blandit lectus. Cras vel lacus in ante feugiat tristique. Donec pharetra lorem et nisi rhoncus sodales. Curabitur feugiat ipsum nisi, sed consequat turpis ultricies eget. Vestibulum in nunc lectus. Ut mattis a lorem interdum rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus.
                     </p>

                     <div class="e-divider-6"></div>

                     <div class="row">
                        <div class="col-md-12 padding-side-50 bg-color01">

                           <div class="e-divider-4"></div>
                           <div class="col-md-4">
                              <i class="pe-7s-target"></i>
                              <h4 class="font-accident-two-normal e-uppercase">Design</h4>
                              <div class="e-divider-1"></div>
                              <p class="small">
                                 Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                 when an unknown
                              </p>
                              <div class="e-divider-4"></div>
                           </div>
                           <div class="col-md-4">
                              <i class="pe-7s-science"></i>
                              <h4 class="font-accident-two-normal e-uppercase">Marketing</h4>
                              <div class="e-divider-1"></div>
                              <p class="small">
                                 Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                 when an unknown
                              </p>
                              <div class="e-divider-4"></div>
                           </div>
                           <div class="col-md-4">
                              <i class="pe-7s-rocket"></i>
                              <h4 class="font-accident-two-normal e-uppercase">Support</h4>
                              <div class="e-divider-1"></div>
                              <p class="small">
                                 Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                 when an unknown
                              </p>
                              <div class="e-divider-4"></div>
                           </div>

                        </div>
                     </div>



                  </div>
               </div>

               <div class="e-divider-20"></div>

            </div>
         </section>


         <!--  Portfolio Block  -->
         <section id="portfolio" class="e-block e-block-skin pt-section">
            <div class="light">

               <div class="container-fluid text-center padding-side-60">
                  <h3 class="font-accident-two-normal e-uppercase">Related Products</h3>
                  <p class="small color06">
                     Customize your website as you want using different colors and 100% free fonts. Build it from pieces
                     and
                     blocks as simple as Lego. <br>
                     Electronic Website Template is fully responsive, looks and works perfect on any device.
                  </p>
                  <div class="e-divider-8"></div>
               </div>

               <div class="grid container-fluid ">
                  <div id="posts" class="row popup-container">
                     <div class="grid-item grid-sizer posters media-objects col-lg-3 col-md-4 col-sm-6 nopadding">
                        <div class="item-wrap">
                           <figure class="effect-goliath">
                              <img src="assets/custom/images/portfolio/thumbs/05-01.jpg" class="img-responsive" alt="img11"/>
                              <figcaption>
                                 <div class="fig-description">
                                    <h3>Five</h3>
                                    <p>#posters #media-objects </p>
                                 </div>
                                 <a href="#">View more</a>
                              </figcaption>
                           </figure>
                        </div>
                     </div>
                     <div class="grid-item media-objects misc col-lg-3 col-md-4 col-sm-6 nopadding">
                        <div class="item-wrap">
                           <figure class="effect-goliath">
                              <img src="assets/custom/images/portfolio/thumbs/08-01.jpg" class="img-responsive" alt="img03"/>
                              <figcaption>
                                 <div class="fig-description">
                                    <h3>Six</h3>
                                    <p>#media-objects #misc</p>
                                 </div>
                                 <a href="#">View more</a>
                              </figcaption>
                           </figure>
                        </div>
                     </div>
                     <div class="grid-item posters col-lg-3 col-md-4 col-sm-6 nopadding">
                        <div class="item-wrap">
                           <figure class="effect-goliath">
                              <img src="assets/custom/images/portfolio/thumbs/07-01.jpg" class="img-responsive" alt="img03"/>
                              <figcaption>
                                 <div class="fig-description">
                                    <h3>Seven</h3>
                                    <p>#posters</p>
                                 </div>
                                 <a href="#">View more</a>
                              </figcaption>
                           </figure>
                        </div>
                     </div>
                     <div class="grid-item posters media-objects col-lg-3 col-md-4 col-sm-6 nopadding">
                        <div class="item-wrap">
                           <figure class="effect-goliath">
                              <img src="assets/custom/images/portfolio/thumbs/06-01.jpg" class="img-responsive" alt="img03"/>
                              <figcaption>
                                 <div class="fig-description">
                                    <h3>Eight</h3>
                                    <p>#others </p>
                                 </div>
                                 <a href="#">View more</a>
                              </figcaption>
                           </figure>
                        </div>
                     </div>
                  </div>
               </div>

            </div>
         </section>
         <!-- /Portfolio Block  -->

      </div>
      <!-- /Content Sections -->

   </div>

</div>


<div id="image-cache" class="hidden"></div>


<!-- JS -->
<script src="assets/vendor/jquery/js/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/vendor/animatedheader/js/classie.js"></script>
<script src="assets/vendor/animatedheader/js/cbpAnimatedHeader.min.js"></script>
<script type="text/javascript" src="assets/vendor/imagesloaded/js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="assets/vendor/isotope/js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="assets/vendor/jquery-parallax/js/jquery.parallax-1.1.3.js"></script>
<script src="assets/vendor/anicounter/jquery.counterup.min.js" type="text/javascript"></script>
<script src="assets/vendor/circle-progress/circle-progress.min.js" type="text/javascript"></script>
<script src="assets/vendor/waypoints/waypoints.min.js" type="text/javascript"></script>
<script src="assets/vendor/goalprogress/goalProgress.min.js" type="text/javascript"></script>
<script src="assets/vendor/mfp/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="assets/vendor/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>

<script type="text/javascript" src="assets/vendor/rs-plugin/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
<script type="text/javascript" src="assets/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
<script type="text/javascript" src="assets/vendor/rs-plugin/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="assets/vendor/rs-plugin/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="assets/vendor/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="assets/vendor/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="assets/vendor/rs-plugin/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="assets/vendor/rs-plugin/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="assets/vendor/rs-plugin/js/extensions/revolution.extension.video.min.js"></script>


<!-- Custom scripts -->
<script src="assets/custom/js/script.js" type="text/javascript"></script>

</body>
</html>
