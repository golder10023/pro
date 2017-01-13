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
            <a href="index.jsp"><img src="/asd/assets/custom/images/logo01.png" width="180" alt="logo"></a>
         </li>
          <li class="e-divider-4"></li>
         <li><a href="index.jsp">HOME</a></li>
         <li><a href="about.jsp" >ABOUT US</a></li>
        <!--  <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
         <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
         <!-- <li><a href="blog-list.jsp" class="current">メイクビデオ２</a></li> -->
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
						      <li><a href="about.jsp" >ABOUT US</a></li>
						     <!--  <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
						      <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
						      <!-- <li><a href="blog-list.jsp" class="current">メイクビデオ２</a></li> -->
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
         <section id="blog-hero-image">
            <div class="layer"></div>
            <div class="container-fluid hero-wrapper">
               <div class="row text-right">
                  <div class="col-md-12">
                     <div class="hero-text">
                        <h2 class="font-accident-two-normal">メイクビデオ２</h2>
                        <p class="font-accident-two-normal e-uppercase letter-spacing-03">
                           There are many variations of passages of Lorem Ipsum available
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- /Hero Image -->

         <!-- Blog Block -->
         <section id="blog-list" class="padding-side-50">

            <div class="e-divider-8"></div>


            <div class="container">
               <div class="row no-sidebar">

                  <!--Content Column-->
                  <div class="col-md-12">
                     <div class="row">

                        <article id="01" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Europe &nbsp;/</a>&nbsp;<a href="#!" rel="category tag">Travel</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.html">Elegant, Simple &amp; Awesome Blog</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>
                           <div class="img-wrap">
                              <a href="blogpost.html">
                                 <img class="img-responsive" src="/asd/assets/custom/images/blog/feed/01.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-excerpt">
                              <p>Travel is the movement of people between relatively distant geographical locations, and can involve travel by foot, bicycle, automobile, train, boat, airplane, or other means, with or without luggage, and can be one way or round trip. Travel can also include relatively short stays between successive movements...</p>
                           </div>
                           <div class="">
                              <a href="blogpost.html" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="02" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Blogging &nbsp;/</a>&nbsp;<a href="#!" rel="category tag">Leadership</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.html">This is a Slider for Gallery Post Type – Enjoy Browsing Your Beautiful Photos</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>
                           <div class="img-wrap">
                              <div class="owl-carousel owl-theme">
                                 <div class="item"><img class="img-responsive" src="/asd/assets/custom/images/blog/feed/02.jpg" alt=""></div>
                                 <div class="item"><img class="img-responsive" src="/asd/assets/custom/images/blog/feed/03.jpg" alt=""></div>
                                 <div class="item"><img class="img-responsive" src="/asd/assets/custom/images/blog/feed/04.jpg" alt=""></div>
                                 <div class="item"><img class="img-responsive" src="/asd/assets/custom/images/blog/feed/05.jpg" alt=""></div>
                              </div>
                           </div>
                           <div class="post-excerpt">
                              <p>Indigo is a color that is traditionally regarded as a color in the visible spectrum, as well as one of the seven colors of the rainbow: the color between blue and violet. Although traditionally considered one of seven major spectral colors, sources differ as to its actual position in the electromagnetic spectrum.…</p>
                           </div>
                           <div class="">
                              <a href="blogpost.html" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="03" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Blogging &nbsp;/</a>&nbsp;<a href="#!" rel="category tag">Leadership</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.html">Vimeo Post with auto get thumbnail</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>
                           <div class="img-wrap">
                              <div class="embed-responsive embed-responsive-16by9">
                                 <iframe src="https://player.vimeo.com/video/111593305?color=ffffff&byline=0&portrait=0" width="640" height="268" allowfullscreen></iframe>
                              </div>
                           </div>
                           <div class="post-excerpt">
                              <p>The Mini, which includes a number of different models produced by BMW since 2000. A number of different models have cars with the "Mini Cooper" title, including the Mini Hatch, the Mini Convertible, the Mini Clubman, the Mini Countryman, the Mini Coupé, the Mini Roadster, and the Mini Paceman…</p>
                           </div>
                           <div class="">
                              <a href="blogpost.jsp" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="04" class="post-block col-md-12 post hentry">

                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Uncategorized</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.html">This is a Quote Post</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>
                           <div class="img-wrap">
                              <a href="blogpost.html">
                                 <img class="img-responsive" src="/asd/assets/custom/images/blog/feed/06.jpg" alt="">
                              </a>
                           </div>
                           <blockquote>
                              If you live long enough, you'll make mistakes. But if you learn from them, you'll be a better person. It's how you handle adversity, not how it affects you. The main thing is never quit, never quit, never quit.
                              <footer>William J. Clinton</footer>
                           </blockquote>
                           <div class="post-excerpt"></div>
                           <div class="">
                              <a href="blogpost.jsp" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="05" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Video</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.html">This is Video Post Using Youtube Embed Codes</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>
                           <div class="img-wrap">
                              <div class="embed-responsive embed-responsive-16by9">
                                 <iframe width="1280" height="720" src="https://www.youtube.com/embed/z9iPpu00UWY?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
                              </div>
                           </div>
                           <div class="post-excerpt">
                              <p>Garden design is the art and process of designing and creating plans for layout and planting of gardens and landscapes. Garden design may be done by the garden owner themselves, or by professionals of varying levels of experience and expertise.…</p>
                           </div>
                           <div class="">
                              <a href="blogpost.jsp" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="06" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Holidays</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.html">This is a SoundCloud Post</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>
                           <div class="img-wrap">
                              <iframe width="100%" height="166" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/249027617&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
                           </div>
                           <div class="post-excerpt">
                              <p>Geographically, Tunisia contains the eastern end of the Atlas Mountains and the northern reaches of the Sahara desert. Much of the rest of the country's land is fertile soil. Its 1,300 kilometres (810 miles) of coastline includes the African conjunction of the western and eastern parts of the Mediterranean Basin and, by means of the Sicilian Strait and Sardinian Channel, features the African mainland's second and third nearest points to Europe after Gibraltar.…</p>
                           </div>
                           <div class="">
                              <a href="blogpost.jsp" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="07" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Uncategorized</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.jsp">Greece Vacation in August</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>
                           <div class="img-wrap"><a href="blogpost.html"><img class="img-responsive" src="/asd/assets/custom/images/blog/feed/07.jpg" alt=""></a></div>
                           <div class="post-excerpt">
                              <p>Outside the European context, emperor was the translation given to holders of titles who were accorded the same precedence as European emperors in diplomatic terms. In reciprocity, these rulers might accredit equal titles in their native languages to their European peers. Through centuries of international convention, this has become the dominant rule to identifying an emperor in the modern era.…</p>
                           </div>
                           <div class="">
                              <a href="blogpost.jsp" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="08" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Holidays</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.jsp">15 Places To Get That Holiday Trip Tan</a></h2> <!-- Post Title-->
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>

                           <div class="img-wrap"><a href="blogpost.html"><img class="img-responsive" src="/asd/assets/custom/images/blog/feed/08.jpg" alt=""></a></div>
                           <div class="post-excerpt">
                              <p>Because perception of color stems from the varying spectral sensitivity of different types of cone cells in the retina to different parts of the spectrum, colors may be defined and quantified by the degree to which they stimulate these cells. These physical or physiological quantifications of color, however, do not fully explain the psychophysical perception of color appearance.…</p>
                           </div>
                           <div class="">
                              <a href="blogpost.jsp" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="09" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Travel</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.jsp">5 Tips for Successful typing</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>

                           <div class="img-wrap"><a href="blogpost.jsp"><img class="img-responsive" src="/asd/assets/custom/images/blog/feed/09.jpg" alt=""></a></div>
                           <div class="post-excerpt">
                              <p>Mathematical symmetry may be observed with respect to the passage of time; as a spatial relationship; through geometric transformations such as scaling, reflection, and rotation; through other kinds of functional transformations; and as an aspect of abstract objects, theoretic models, language, music and even knowledge itself…</p>
                           </div>
                           <div class="">
                              <a href="blogpost.jsp" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <article id="10" class="post-block col-md-12 post hentry">
                           <div class="post-detail">
                              <div class="meta-cat">
                                 <a href="#!" rel="category tag">Europe &nbsp;/</a>&nbsp;<a href="#!" rel="category tag">Travel</a>
                              </div>
                              <h2 class="entry-title"><a href="blogpost.jsp">Emma is an Elegant, Simple &amp; Minimalist Blog comes with Lots of Features</a></h2>
                              <div class="metas">
                                 Posted on: <a href="#!" class="meta-date">29 July</a>/&nbsp;
                                 Posted by: <a href="#!" class="meta-author">admin</a>/&nbsp;
                                 <a href="#!" class="meta-comment">0 Comment</a>
                              </div>
                           </div>

                           <div class="img-wrap"><a href="blogpost.jsp]"><img class="img-responsive" src="/asd/assets/custom/images/blog/feed/10.jpg" alt=""></a></div>
                           <div class="post-excerpt">
                              <p>Psychologists explore concepts such as perception, cognition, attention, emotion, intelligence, phenomenology, motivation, brain functioning, personality, behavior, and interpersonal relationships, including psychological resilience, family resilience, and other areas. Psychologists of diverse orientations also consider the unconscious mind.…</p>
                           </div>
                           <div class="">
                              <a href="blogpost.jsp" class="btn btn-default btn-blk">Continue reading...</a>
                           </div>
                        </article>

                        <!--Pagination-->
                        <div class="col-md-12">
                           <div id="tf-pagination">
                              <nav class="wp-pagenavi">
                                 <span class="page-numbers current">1</span>
                                 <a class="page-numbers" href="#!">2</a>
                                 <a class="next page-numbers" href="#!">
                                    <i class="fa fa-angle-double-right"></i>
                                 </a>
                              </nav>
                           </div>
                        </div>
                        <!--/Pagination-->


                     </div>

                     <div class="e-divider-8"></div>

                  </div>
                  <!--/Content Column-->


               </div>
            </div>


         </section>
         <!-- /Blog Block -->

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
