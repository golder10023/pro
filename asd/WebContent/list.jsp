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



<style type="text/css">
            /* Smartphones (portrait and landscape) */
            @media only screen{
				table {
				width: auto;
				height: auto;
}
				
			}
            /* Styles */
            
</style>

</head>
<body class="">

	<<!--Pre-Loader-->
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
         <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
         <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
         <li><a href="/asd/board/list.action" class="current">MAKEUP TALK</a></li>
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
                         <li><a href="../joinForm.jsp">JOIN</a></li>
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
						      <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
						      <li><a href="/asd/board/list.action" class="current">MAKEUP TALK</a></li>
						      <li><a href="/asd/reservation/reservationList.action">RESERVE</a></li>
						      <li><a href="../video.jsp">F2F MAKEUP CLASS</a></li>
                           </ul>
                     	</ul>
						</nav>
						</div>
					</div>
				</div>
			</header>
			<!-- / Header -->
<!-- 상위 비디오 단-------------------------------------------------------------------------------------------------------- -->
			<!-- Content Sections -->
			<div id="content">
				<section class="slider-revolution">
					<div class="rev_slider_wrapper">
						<div id="slider4" class="rev_slider head-overlay"
							data-version="5.0">
							<ul>
								<!-- SLIDE  -->
								<li data-index="rs-266" data-transition="zoomout"
									data-slotamount="default" data-easein="Power3.easeInOut"
									data-easeout="Power3.easeInOut" data-masterspeed="3000"
									data-thumb="../../assets/images/vimeobg-100x50.jpg"
									data-rotate="0" data-saveperformance="off" data-title="Intro"
									data-description="">
									<!-- MAIN IMAGE --> 
									<img
									src="/asd/assets/custom/video/moving-forward/snapshots/board.jpg"
									alt="" data-bgposition="center center" data-bgfit="cover"
									data-bgrepeat="no-repeat" data-bgparallax="0"
									class="rev-slidebg" data-no-retina> <!-- LAYERS --> 
									
									<!-- BACKGROUND VIDEO LAYER -->
									<!-- <div class="rs-background-video-layer" data-forcerewind="on"
										data-volume="mute"
										data-videomp4="/asd/assets/custom/video/moving-forward/mp4/moving-forward.mp4"
										data-videowidth="100%" data-videoheight="100%"
										data-videocontrols="none" data-videostartat="00:00"
										data-videoendat="00:48" data-videoloop="loop"
										data-forceCover="1" data-aspectratio="4:3"
										data-autoplay="true" data-autoplayonlyfirsttime="false"
										data-nextslideatend="true"></div> -->
										 
										 <!-- LAYER NR. 1 -->

									<div
										class="tp-caption cap-title font-accident-two-normal color00 e-uppercase tp-resizeme rs-parallaxlevel-1"
										data-x="center" data-y="bottom" data-basealign="grid"
										data-voffset="100" data-hoffset="0" data-width=”auto”
										data-height=”auto”
										data-whitespace=”[‘nowrap’,’normal’,’normal’,’normal’]”
										data-transform_idle="o:1;"
										data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
										data-transform_out="auto:auto;s:700;" data-start="950"
										data-splitin=”none” data-splitout=”none”
										data-responsive_offset=”on”
										data-fontsize="['36','34','30','20']"
										data-lineheight="['120','100','90','80']" style="z-index: 2;">MAKEUP TALK</div> <!-- LAYER NR. 3 -->
									<div
										class="tp-caption cap-sub-subtitle font-regular-normal color00 e-uppercase tp-resizeme rs-parallaxlevel-1"
										data-x="center" data-y="bottom" data-basealign="grid"
										data-voffset="105" data-hoffset="0" data-width=”auto”
										data-height=”auto”
										data-whitespace=”[‘nowrap’,’normal’,’normal’,’normal’]”
										data-transform_idle="o:1;"
										data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
										data-transform_out="auto:auto;s:700;" data-start="1500"
										data-splitin=”none” data-splitout=”none”
										data-responsive_offset=”on” style="z-index: 2;">Talk about Your makeup or anything</div> <!-- LAYER NR. 4 -->
									<div class="tp-caption Hero-Button rev-btn  rs-parallaxlevel-1"
										id="slide-266-layer-2"
										data-x="['center','center','center','center']"
										data-hoffset="['0','0','0','0']" data-y="bottom"
										data-voffset="50" data-width="none" data-height="none"
										data-whitespace="nowrap" data-transform_idle="o:1;"
										data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
										data-style_hover="c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);cursor:pointer;"
										data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
										data-transform_out="auto:auto;s:700;"
										data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
										data-start="2000" data-splitin="none" data-splitout="none"
										data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'
										data-responsive_offset="on" data-responsive="off"
										style="z-index: 9; white-space: nowrap; outline: none; box-shadow: none; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; border: none; background: rgba(255, 255, 255, .6); color: #252525;">
										CONTINUE</div>
								</li>
							</ul>
							<div class="tp-bannertimer"></div>
						</div>

					</div>
				</section>
<!-- 상위 비디오 단-------------------------------------------------------------------------------------------------------- -->
				
				<div class="container">
					  <h1>メイクトーク</h1>
					 <!--  <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p> -->
					  <table id="tickets" class="table" style="width: auto" align="center">
    					<thead>
	  						<tr height="60px">
        					<td width="auto" height="auto"><p style="font-size: 50%; margin: 3px">번호</p></td>
							<td width="auto" height="auto"><p style="font-size: 50%; margin: 3px">이름</p></td>
							<td width="auto" height="auto"><p style="font-size: 50%; margin: 3px">제목</p></td>
							<td width="auto" height="auto"><p style="font-size: 50%%; margin: 3px">날짜</p></td>
							<td width="auto" height="auto"><p style="font-size: 50%%; margin: 3px">조회</p></td>
      						</tr>
					    </thead>
    					<tbody>
     					<s:iterator var="list" end="pagenavi.CountPerPage" value="list" status="status">

						<tr>
							<td align="left"  height="60px">
								<h5 align="center">
									<s:property value="#list.boardnum" />
								</h5>
							</td>
							<td align="left" height="60px">
								<h5	align="center">
									<s:property value="#list.user_m" />
								</h5>
							</td>
								<td align="left" class="board_title" height="60px">
									<s:a href="/asd/board/read.action?boardnum=%{#list.boardnum}"><h4 align="left"><s:property value="#list.bfront"/>  <s:property value="#list.btitle" /></h4></s:a>
									<%-- <a href="/ex_board/board/read.action?boardNum=<s:property value="boardNum"/>"><s:property value="subject"/></a> --%>
								</td>
							<td align="left"  height="60px">
								<h5 align="center">
									<s:property value="#list.bdate" />
								</h5>
							</td>
							<td align="left" height="60px">
								<h5	align="center">
									<s:property value="#list.bhit" />
								</h5>
							</td>
							</tr>
						</s:iterator>
						<tr>
							<td colspan="4" align="left">
						<a href="/asd/writeForm.jsp"><input type="button" value="글쓰기"  style="width: 150px;height: 50px; font-size: 15px"></a>
							
							</td>
						</tr>
						
   					 </tbody>
   					 <tbody>
   					 
   					 </tbody>
 				 </table>
				
				</div>
				
				<div class="container-fluid padding-side-50">
				
				
				<span class="paging">
					<s:if test="list != null">
						<center><s:a href="#"
							onclick="document.getElementtById('currentPage').value=%{pagenavi.startPageGroup - 1}; document.pagingLogListForm.submit();"><span style="font-size: 25px">&lt</span></s:a>
						<s:iterator begin="pagenavi.startPageGroup"	end="pagenavi.endPageGroup" var="page">
							<s:if test="%{#page == currentPage}">
								<s:a href="#"	onclick="document.getElementById('currentPage').value=%{#page}; document.pagingLogListForm.submit();" class="select"> 
									<span style="font-size: 15px"><s:property value="#page" /></span>
								</s:a>
							</s:if>
							<s:else>
								<s:a href="#" onclick="document.getElementById('currentPage').value=%{#page}; document.pagingLogListForm.submit(); ">
								<span style="font-size: 25px"><s:property value="#page" /></span>
								</s:a>
							</s:else>
						</s:iterator>
						<s:a href="#"
							onclick="document.getElementById('currentPage').value=%{pagenavi.endPageGroup + 1}; document.pagingLogListForm.submit();"><span style="font-size: 25px">&gt</span></s:a>
							</center>
					</s:if>

				</span>

				<s:form name="pagingLogListForm" action="list" namespace="/board"
					theme="simple">
					<s:hidden name="searchField" />
					<s:hidden name="searchText" />
					<s:hidden id="currentPage" name="currentPage" />
				</s:form>



			<table align="center">
			<tr >
				<p class="board_search">
					<td>
					<s:form action="list" namespace="/board" method="post" theme="simple" name="searchForm">
						<s:select   style="width:100px;height:30px; font-size: 15px;" name="searchField" list="#{'all' :'전체', 'btitle':'제목','user_m':'작성자', 'boardnum':'번호'}"  value="searchField" />
						</td>
						<%-- 	<select>
					<option value="">전체</option>
					<option value="">제목</option>
					<option value="">내용</option>
					<option value="">작성자</option>
				</select> --%>
						<%-- 		<s:if test="searchField == null">
				<s:hidden name="currentPage" value="1" />
				</s:if> --%>
						<td><s:textfield name="searchText" size="40px"/></td>
						<td></td>
						<td width="100px"><s:a href="#" onclick="javascript:document.searchForm.submit()"><h4 align="center">검색</h4></s:a></td>
					</s:form>
				</p>
				</tr>
				</table>
				</div>

				<!--board  ----------------------------------------------------------------------------------------------------->
				<!-- Testmonials Block -->
				<section id="testmonials" class="e-block-short">
					<div class="container-fluid padding-side-50">
						<div>
							<h3 class="font-accident-two-normal e-uppercase text-center">Testmonials</h3>
							<div class="e-divider-1"></div>
							<p class="small color05 text-center">
								Customize your website as you want using different colors and
								100% free fonts. Build it from pieces and blocks as simple as
								Lego. <br> Electronic Website Template is fully responsive,
								looks and works perfect on any device.
							</p>
						</div>
						<div class="e-divider-8"></div>
						<div class="row">
							<div class="col-md-4">
								<div class="row">
									<div class="col-xs-2 col-sm-3">
										<img src="../assets/custom/images/userpic04.jpg"
											alt="Rachel James Johnes"
											class="img-responsive img-circle author-userpic">
									</div>
									<div class="col-xs-10 col-sm-9">
										<h5 class="font-accident-one-bold text-left uppercase">Hans
											Zimmer</h5>
										<p class="small color04">Apple Inc.</p>
										<p class="text-left small">With more devices come varying
											screen resolutions, definitions and orientations. New devices
											with new screen sizes are being developed every day, and each
											of these devices may be able...</p>
									</div>
								</div>
								<div class="e-divider-8"></div>
							</div>
							<div class="col-md-4">
								<div class="row">
									<div class="col-xs-2 col-sm-3">
										<img src="../assets/custom/images/userpic02.jpg"
											alt="Rachel James Johnes"
											class="img-responsive img-circle author-userpic">
									</div>
									<div class="col-xs-10 col-sm-9">
										<h5 class="font-accident-one-bold text-left uppercase">Mario
											Quinn</h5>
										<p class="small color04">Adobe</p>
										<p class="text-left small">With more devices come varying
											screen resolutions, definitions and orientations. New devices
											with new screen sizes are being developed every day, and each
											of these devices</p>
									</div>
								</div>
								<div class="e-divider-8"></div>
							</div>
							<div class="col-md-4">
								<div class="row">
									<div class="col-xs-2 col-sm-3">
										<img src="../assets/custom/images/userpic03.jpg"
											alt="Rachel James Johnes"
											class="img-responsive img-circle author-userpic">
									</div>
									<div class="col-xs-10 col-sm-9">
										<h5 class="font-accident-one-bold text-left uppercase">Karl
											Romm</h5>
										<p class="small color04">BMW</p>
										<p class="text-left small">With more devices come varying
											screen resolutions, definitions and orientations. New devices
											with new screen sizes are being developed every day, and each
											of these devices</p>
									</div>
								</div>
								<div class="e-divider-8"></div>
							</div>
						</div>
					</div>
				</section>
				<!-- /Testmonials Block -->

			</div>
			<!-- /Content Sections -->

		</div>

	</div>


	<div id="image-cache" class="hidden"></div>


	<!-- JS -->
	<script src="../assets/vendor/jquery/js/jquery-2.2.0.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendor/animatedheader/js/classie.js"></script>
	<script
		src="../assets/vendor/animatedheader/js/cbpAnimatedHeader.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/imagesloaded/js/imagesloaded.pkgd.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/isotope/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/jquery-parallax/js/jquery.parallax-1.1.3.js"></script>
	<script src="../assets/vendor/anicounter/jquery.counterup.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendor/circle-progress/circle-progress.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendor/waypoints/waypoints.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendor/goalprogress/goalProgress.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendor/mfp/js/jquery.magnific-popup.min.js"
		type="text/javascript"></script>
	<script src="https://maps.google.com/maps/api/js?sensor=false"
		type="text/javascript"></script>
	<script src="../assets/vendor/owl-carousel/owl.carousel.min.js"
		type="text/javascript"></script>

	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript"
		src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.video.min.js"></script>


	<!-- Custom scripts -->
	<script src="../assets/custom/js/script.js" type="text/javascript"></script>

</body>
</html>
