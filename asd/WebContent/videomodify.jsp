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



<script src="../script/jquery-3.1.1.min.js"></script>
<script type="text/javascript">


function vmodify() {
	var vmodify = document.getElementById("ajax-contact");
	vmodify.action = "/asd/video/vmodify";
	vmodify.submit();
	
}

function vcancel() {
	
	var vnum = document.getElementById("ajax-contact");
	
	vnum.action="/video/vread";
	vnum.submit();
}

</script>

<script src="../script/jquery-3.1.1.min.js"></script>
<script type="text/javascript">

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
            <a href="../index.jsp"><img src="/asd/assets/custom/images/logo02.png" width="180" alt="logo"></a>
         </li>
        <li class="e-divider-4"></li>
         <li><a href="../index.jsp">HOME</a></li>
         <li><a href="../about.jsp">ABOUT US</a></li>
         <!-- <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
         <li><a href="/asd/video/vlist.action" class="current">MAKEUP VIDEO</a></li>
         <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
         <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
         <li><a href="/asd/reservation/reservationList.action">RESERVE</a></li>
         <%-- <li><a href="/asd/videochat/enter.action?user_m=<s:property value="#session.user_m"/>">F2F MAKEUP CLASS</a></li> --%>
         <li><a href="../video.jsp">F2F MAKEUP CLASS</a></li>
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
                        <li><a href="../loginForm.jsp">LOGIN</a></li>
                        </s:if>
						<s:if test="#session.user_m != null">
						 <li><a href="/asd/session/logout.action">LOGOUT</a></li>
                        </s:if>
                        <li class="dropdown">
                           <a class="dropdown-toggle" data-toggle="dropdown">MENU<b class="caret"></b></a>
                           <ul class="dropdown-menu">
                              <li><a href="../index.jsp">HOME</a></li>
						      <li><a href="../about.jsp">ABOUT US</a></li>
						      <!-- <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
						      <li><a href="/asd/video/vlist.action" class="current">MAKEUP VIDEO</a></li>
						      <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
						      <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
						      <li><a href="/asd/reservation/reservationList.action">RESERVE</a></li>
						      <li><a href="../video.jsp">F2F MAKEUP CLASS</a></li>
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

 <!-- MAIN IMAGE -->
                       

<%-- 
         <section id="blog-hero-image">
            <div class="layer"></div>
            <div class="container-fluid hero-wrapper">
               <div class="row text-right">
                  <div class="col-md-12">
                     <div class="hero-text">
                        <h2 class="font-accident-two-normal">MakeUp</h2>
                        <p>
                           There are many variations of passages of Lorem Ipsum available...
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </section> --%>


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
                         data-thumb="/asd/assets/images/vimeobg-100x50.jpg"
                         data-rotate="0"
                         data-saveperformance="off"
                         data-title="Intro"
                         data-description="">

                        <!-- MAIN IMAGE -->
                        <img src="/asd/assets/custom/video/typer/snapshots/typer.jpg"
                             alt=""
                             data-bgposition="center center"
                             data-bgfit="cover"
                             data-bgrepeat="no-repeat"
                             data-bgparallax="0"
                             class="rev-slidebg"
                             data-no-retina>

                     	<!--  LAYER NR. 1 -->

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
                             style="z-index: 2;">Mekeup Video
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
                             style="z-index: 2;">Meke by Soru
                        </div>

                      <!--   LAYER NR. 4 -->
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
                           2017, Seoul & Tokyo
                        </div>
                     </li>
                  </ul>
                  <div class="tp-bannertimer"></div>
               </div>

            </div>
         </section>
         <!-- /Revolution Slider -->

			
			 <!-- Feedback Block -->
         <section id="feedback-block" class="e-block-regular text-center bg-color01">
            <div class="container-fluid">
               <div>
                  <h3 class="font-accident-two-normal e-uppercase text-center">Drop Us a Line</h3>
                  <div class="e-divider-1"></div>
                  <p class="small fontcolor-medium text-center">
                     Customize your website as you want using different colors and 100% free fonts. Build it from pieces and
                     blocks as simple as Lego. <br>
                     Electronic Website Template is fully responsive, looks and works perfect on any device.
                  </p>
               </div>
               <div class="e-divider-4"></div>
               <div class="row">
                  <div class="col-md-2">&nbsp;</div>
                  <div class="col-md-8 e-centered wow fadeInDown" data-wow-delay="0.6s" data-wow-offset="10">
                     <div class="e-divider-2"></div>
                     <div id="form-messages"></div>
                     
                     <form id="ajax-contact" method="post" enctype="multipart/form-data"  class="wpcf7-form">
                  
                   <input type="hidden" id="videonum" name="videonum" value="<s:property value="videoVO.videonum"/>">
                   <input type="hidden" id="vlink" name="vlink" value="<s:property value="videoVO.vlink"/>">
                   <input type="hidden" id="vimg" name="vimg" value="<s:property value="videoVO.vimg"/>">
                   
                   
                      <!-- 임시 --> 
                       
                        <div class="field">
                        <input type="text" readonly="readonly" placeholder="Front" >
                           <input type="text" id="vfront" name="vfront" value="<s:property value="videoVO.vfront"/>" >
                        </div>
                       
                        <div class="e-divider-1"></div>
                        
                        <div class="field">
                           <input type="text" readonly="readonly" placeholder="Title" >
                           <input type="text" id="vtitle" name="vtitle" value="<s:property value="videoVO.vtitle"/>"  >
                        </div>
                       
                        <div class="e-divider-1"></div>
                        
                        <div class="field">
                           <input type="text" readonly="readonly" placeholder="Content" >
                           <textarea id="vcontent" name="vcontent"  rows="7" cols="30"  ><s:property value="videoVO.vcontent"/></textarea>
                        </div>
                       
                          <div class="e-divider-1"></div>
                         
                         <div class="field">
                        <input type="text" readonly="readonly" placeholder="Video" >
                      	<input type="file" name="data" id="data"  accept="video/*" >
                         </div>
                         
                       
                       
                        <div class="e-divider-1"></div>
                       <div class="field">
                        <input type="text" readonly="readonly" placeholder="Image" >
                       <input type="file" accept="image/*" id="data2"  name="data2" >
                       </div>
                       
                        <div class="e-divider-1"></div>
                        <div class="e-divider-2"></div>

                            <a href="#" onClick="javascript:vmodify();"><button class="btn btn-lg btn-blk">Update</button></a>
                          <a href="#" onClick="javascript:vcancel();"><button class="btn btn-lg btn-blk">Cancel</button></a>
                        
                     </form>
                   
                  </div>
                  <div class="col-md-2">&nbsp;</div>
                  <div class="col-md-12 divider-dynamic"></div>
               </div>
            </div>
			            <div class="e-divider-4"></div>
         </section>

         <!-- /Feedback Block -->
			
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
