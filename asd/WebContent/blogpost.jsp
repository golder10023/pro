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

function vcomment1() {
	var videonum = document.getElementById('videonum').value;
	var user_m = document.getElementById('user_m').value;
	var vcomment = document.getElementById('vcomment').value;
	var today = 'now';
	/* alert(vcomment);
	alert(videonum); */
	$.ajaxSettings.traditional = true;
	$.ajax({
		url :'/asd/vcomment/vreply', //액션값
		type :'post',
		data : {
			'videonum' : videonum,
			'user_m' : user_m,
			'vcomment' : vcomment
		//브이오에있는 변수중 하나 에다가 이걸넣겠다.
		},
		success : function(data) {
			var vcomment=data.vcomment;
			var insert;
			$("#comull").append('<li class="media"><div class="media-left"><a href="#"><img class="media-object" width="64x64" src="/asd/assets/custom/images/userpic02.jpg"></a></div>'
        	+'<div class="media-body"><div class="post-data"><div class="post-date">'+today+'</div><div class="post-author" id="reply1"><a href="#"><h5>'+ user_m +'</h5></a></div></div>'
            +'<p id="reply2">'+vcomment+'</p></div></li>');
		}
	});
}

function vdelete() {
	
 
	 	var readForm = document.getElementById('readForm'); 
 		var result = confirm('삭제 하시겠습니까?');
		
 		if(result == true){
			readForm.action = "/asd/video/vdelete";
			readForm.submit();
			
		}
}

function vmodify() {
	
 	var vupdate = document.getElementById('readForm'); 
	vupdate.action = "/asd/video/vupdate";
	vupdate.submit(); 
/* 	var readForm = document.getElementById('readForm'); 

	/* location.replace("/Video/videowrite.jsp");   
	
	location.href="/Video/videomodify.jsp?=readForm";    */
}


</script>

<script src="../script/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function videolike() {
	var videonum =  document.getElementById('videonum').value;
	
	$.ajax({
		url : '/asd/video/vlike.action' ,  //액션값
		type: 'post' , 
		data: { 
			'videonum' : videonum  //브이오에있는 변수중 하나 에다가 이걸넣겠다.
		},
		success: function(data){ //석세스가 되면 펀션이 실행된다. 데이터는 리턴값이다.  
/* 			for (var index in data) {
				console.log(index);
				console.log(data[index]);
			} */
			$('#vlike').text(data.videoVO.vlike);
		}
	});
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
            <a href="../index.jsp"><img src="/asd/assets/custom/images/logo02.png" width="180" alt="logo"></a>
         </li>
          <li class="e-divider-4"></li>
         <li><a href="../index.jsp">HOME</a></li>
         <li><a href="../about.jsp" >ABOUT US</a></li>
        <!--  <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
         <li><a href="/asd/video/vlist.action" class="current">MAKEUP VIDEO</a></li>
         <!-- <li><a href="blog-list.jsp" >メイクビデオ２</a></li> -->
         <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
         <li><a href="/asd/reservation/reservationList.action">RESERVE</a></li>
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
                     <h1><a href="../index.jsp">Makeup</a></h1>
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
						      <li><a href="../about.jsp" >ABOUT US</a></li>
						     <!--  <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
						      <li><a href="/asd/video/vlist.action" class="current">MAKEUP VIDEO</a></li>
						      <!-- <li><a href="blog-list.jsp" >メイクビデオ２</a></li> -->
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
                         data-thumb="../assets/images/vimeobg-100x50.jpg"
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
                        <!-- LAYERS -->
<!-- 
                      BACKGROUND VIDEO LAYER
                        <div class="rs-background-video-layer"
                             data-forcerewind="on"
                             data-volume="mute"
                             data-videomp4="assets/custom/video/typer/mp4/typer.mp4"
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
 -->

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

               <!--          LAYER NR. 3 -->
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

         <!-- Blogpost Block -->
<!-- 비디오 들어오는 곳!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
         
          <div class="row">
                  <div class="col-lg-3 col-md-6">
                     <div class="dividewhite3"></div>
                    <a href="/asd/video/vlist.action"> <h4 class="font-accident-one-normal e-uppercase">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;List</h4></a>
                     <div class="e-divider-dynamic"></div>
                  </div>
                  <s:if test="#session.grade == 'expert' or #session.grade == 'manager'">
                  <div class="col-lg-3 col-md-6">
                     <div class="dividewhite3"></div>
                     <h4 class="font-accident-one-normal e-uppercase" id="modify1" ><a href="#" onClick="javascript:vmodify();">Update</a></h4>
                     <div class="e-divider-dynamic" ></div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <div class="dividewhite3"></div>
                 <h4 class="font-accident-one-normal e-uppercase" id="delete" > <a href="#" onClick="javascript:vdelete();">Delete</a> </h4>
                     <div class="e-divider-dynamic"></div>
                  </div>
         		</s:if>
         
         <section id="blogpost" class="inner-section padding-side-50">

            <div class="container-fluid nopadding">

               <article class="post">
				<form action="" method="post" id="readForm" name="readForm">
					<input type="hidden" id="videonum" name="videonum" value="<s:property value="videoVO.videonum"/>">
	

                  <div class="e-divider-8"></div>

                  <div class="post-header">
                     <h2 class="e-uppercase"><s:property value="videoVO.vtitle"/></h2>
                     <div class="e-divider-2"></div>
                  </div>
                  <div class="post-tag">
                     <span>HIT : <s:property value="videoVO.vhit"/> </span>
                  </div>
                  <div class="post-meta"><span> by 
              	<s:property value="videoVO.vfront"/> ,</span> <span>DATE : <s:property value="videoVO.vdate"/></span></div>

              <!--     <div class="e-divider-8"></div> -->
<br>

                  <!-- Post Content -->
                  <p><center>
                 <video controls id="video" width="95%" height="95%" controls="controls"> <source src="<s:property value="videoVO.vlink"/>"></center></video>
                  </p>
                 
                
                  <p>
                                <s:property value="videoVO.vcontent"/>
                  </p>
                  
                  <p>
		</form>
      
      
      <!-- 좋아요---------------------------------------------------------------------------------------- -->                
		<form> 
		<img src="/asd/img/vlike2.JPG"  width="40" height="40" >&nbsp;&nbsp;&nbsp;
		<a href="#" onclick="videolike()"><img src="/asd/img/vlike1.JPG" width="40" height="40"></a><br>
		<label>&nbsp;&nbsp;save</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>like :</label>&nbsp;&nbsp;<label id="vlike"><s:property value="videoVO.vlike"/></label>
		</form>
       
      <!-- 좋아요---------------------------------------------------------------------------------------- -->     
                  </p>
                  <!-- /Post Content -->

                  <div class="e-divider-6"></div>
                  <hr>
               </article>

<!--댓글 다는 곳 ------------------------------------------------------------------- -->
               <div id="comments" class="">
                  <%-- <div class="e-divider-2"></div>
                  <h4 class="font-accident-one-light uppercase">4 comments</h4>
                  <div class="e-divider-3"></div>
                  <ul class="media-list">
                     <li class="media">
                        <div class="media-left">
                           <a href="#">
                              <img class="media-object"  alt="64x64" src="/asd/assets/custom/images/userpic02.jpg">
                           </a>
                        </div>
                        <div class="media-body">
                           <div class="post-data">
                              <div class="post-date">2014 Jun, 14</div>
                              <div class="post-author"><a href="#">UDO STEIN</a></div>
                           </div>
                           <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                           <p><a href="#">Log In to Reply</a></p>

                           <!-- Nested media object -->
                           <div class="media">
                              <div class="media-left">
                                 <a href="#">
                                    <img class="media-object" alt="64x64" src="/asd/assets/custom/images/userpic03.jpg">
                                 </a>
                              </div>
                              <div class="media-body">
                                 <div class="post-data">
                                    <div class="post-date">2014 Jun, 14</div>
                                    <div class="post-author"><a href="#">JAMES QUINN</a></div>
                                 </div>
                                 <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                 <p><a href="#">Log In to Reply</a></p>
                                 <!-- Nested media object -->
                                 <div class="media">
                                    <div class="media-left">
                                       <a href="#">
                                          <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="/asd/assets/custom/images/userpic02.jpg">
                                       </a>
                                    </div>
                                    <div class="media-body">
                                       <div class="post-data">
                                          <div class="post-date">2014 Jun, 14</div>
                                          <div class="post-author"><a href="#">UDO STEIN</a></div>
                                       </div>
                                       <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                       <p><a href="#">Log In to Reply</a></p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- Nested media object -->
                           <div class="media">
                              <div class="media-left">
                                 <a href="#">
                                    <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="/asd/assets/custom/images/userpic04.jpg">
                                 </a>
                              </div>
                              <div class="media-body">
                                 <div class="post-data">
                                    <div class="post-date">2014 Jun, 14</div>
                                    <div class="post-author"><a href="#">FRANC DITZ</a></div>
                                 </div>
                                 <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                 <p><a href="#">Log In to Reply</a></p>
                              </div>
                           </div>
                        </div>
                     </li>
                  </ul>
               </div>

            </div>
            <div class="e-divider-8"></div>
         </section>

         <section class="e-block-short bg-color01">
            <div class="container-fluid padding-side-50">
               <div id="post-comment">
                  <h4 class="font-accident-one-light uppercase">Leave a Comment</h4>
               </div>
               <div class="e-divider-2"></div>
               <form action="#" method="post" novalidate="novalidate">
                  <div class="row">
                     <div class="col-md-4">
                        <p><label>Name*</label><input type="text" name="your-name" value="" size="60" class="" aria-required="true" aria-invalid="false"></p>
                     </div>
                     <div class="col-md-4">
                        <p><label>Email*</label><input type="text" name="your-email" value="" size="60" class="" aria-required="true" aria-invalid="false"></p>
                     </div>
                     <div class="col-md-4">
                        <p><label>Website</label><input type="text" name="your-website" value="" size="60" class="" aria-required="true" aria-invalid="false"></p>
                     </div>
                     <div class="col-md-12">
                        <p><label>Message</label><textarea name="your-message" cols="60" rows="3" class="" aria-invalid="false"></textarea></p>
                     </div>
                  </div>
                  <div class="e-divider-2"></div>
                  <p><button type="button" class="btn btn-lg btn-blk">Post Comment</button></p>
               </form>
            </div>

         </section> --%>
         <div class="e-divider-2"></div>
                  <h4 class="font-accident-one-light uppercase">comments</h4>
                  <div class="e-divider-3"></div>
				<div class="">
			
                  <!--  -->
                  <ul class="media-list" id="comull">
                  <s:iterator var="vclist" value="vclist" status="status">
                     <li class="media">
                        <div class="media-left">
                        	<a href="#">
                              <img class="media-object" width="64x64" src="/asd/assets/custom/images/userpic02.jpg">
                        	</a>
                        </div>
                        	<div class="media-body">
                            <div class="post-data">
                              <div class="post-date"><s:property value="vdate"/></div>
                              <div class="post-author" id="reply1"><a href="#"><h5><s:property value="user_m"/></h5></a></div>
                            </div>
                             <p id="reply2"><s:property value="vcomment"/></p>
                    	    </div>
                      </li>
                 	</s:iterator>
	                  </ul>
                 
               </div>
		</section> 
		<div class="e-divider-2"></div>
				<!--댓글 ▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼-  -->
				<section class="e-block-short bg-color01">
					<div class="container-fluid padding-side-50">
						<div id="post-comment">
							<h4 class="font-accident-one-light uppercase">Leave a
								Comment</h4>
						</div>
						<div class="e-divider-2"></div>

						<s:if test="#session.user_m != null">
							<s:form action="" namespace="/vcomment" method="post" name="replyForm1">
								<div class="row">
									<div class="col-md-4">
										<p>
											<label>Name</label> 
										<input type="text" id="user_m" name="user_m" value='<s:property value="#session.user_m"/>'
												readonly="readonly" size="60" class="" aria-required="true"
												aria-invalid="false"> 
										<input type="hidden" id="videonum" name="videonum" value='<s:property value="videonum"/>' />
										</p>
									</div>
									<div class="col-md-12">
										<p>
											<label>Message</label>
											<textarea id="vcomment" name="vcomment" cols="60" rows="3"
												class="" aria-invalid="false"></textarea>
										</p>
									</div>
								</div>
								<div class="e-divider-2"></div>
								<input type="button" class="btn btn-lg btn-blk"
									value="Post Comment" onclick="javascript:vcomment1();" />
							</s:form>
						</s:if>

					</div>

				</section>

         <!-- /Blogpost Block -->


         <!-- Related Blogposts -->
         <section id="blog" class="padding-side-50">
            <div class="e-divider-15"></div>
            <div class="container-fluid text-center padding-side-60">
               <h3 class="font-accident-two-normal e-uppercase">Related Posts</h3>
               <!--<h5 class="font-accident-one-bold  uppercase hovercolor">Working hard and making the success</h5>-->
               <p class="small color06">
                  Customize your website as you want using different colors and 100% free fonts. Build it from pieces
                  and
                  blocks as simple as Lego. <br>
                  Electronic Website Template is fully responsive, looks and works perfect on any device.
               </p>
               <div class="e-divider-8"></div>
            </div>
            <div class="grid container-fluid e-text-center">
               <div id="posts" class="row popup-container">
                  <div class="grid-item branding design col-md-4 col-sm-6">
                     <div class="item-wrap">
                        <figure class="">
                           <div class="popup-call">
                              <a href="/asd/assets/custom/images/blog/feed/01.jpg" class="gallery-item"><i class="pe-7s-science"></i></a>
                           </div>
                           <img src="/asd/assets/custom/images/blog/feed/01.jpg" class="img-responsive" alt="img11"/>
                           <figcaption>
                              <div class="post-meta"><span>by <a href="#!">Sam Anderson</a>,</span> <span>March 16, 2015</span></div>
                              <div class="post-header">
                                 <h5><a href="blogpost.html">My Friend's new album design</a></h5>
                              </div>
                              <div class="post-entry">
                                 <p>Aliquam gravida tincidunt congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
                              </div>
                              <div class="post-tag pull-left">
                                 <span><a href="#branding" data-filter=".branding">Branding</a>,</span><span><a href="#design" data-filter=".design">Design</a></span>
                              </div>
                              <div class="post-more-link pull-right"><a href="blogpost.html">More<i class="fa fa-long-arrow-right right"></i></a></div>
                           </figcaption>
                        </figure>
                     </div>
                  </div>
                  <div class="grid-item grid-sizer branding col-md-4 col-sm-6">
                     <div class="item-wrap">
                        <figure class="">
                           <div class="popup-call">
                              <a href="/asd/assets/custom/images/blog/feed/02.jpg" class="gallery-item"><i class="pe-7s-science"></i></a>
                           </div>
                           <img src="/asd/assets/custom/images/blog/feed/02.jpg" class="img-responsive" alt="img03"/>
                           <figcaption>
                              <div class="post-meta"><span>by <a href="#!">Sam Anderson</a>,</span> <span>March 16, 2015</span></div>
                              <div class="post-header">
                                 <h5><a href="blogpost.html">Funny Things done</a></h5>
                              </div>
                              <div class="post-entry">
                                 <p>Aliquam gravida tincidunt congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
                              </div>
                              <div class="post-tag pull-left">
                                 <span><a href="#branding" data-filter=".branding">Branding</a></span>
                              </div>
                              <div class="post-more-link pull-right"><a href="blogpost.jsp">More<i class="fa fa-long-arrow-right right"></i></a></div>
                           </figcaption>
                        </figure>
                     </div>
                  </div>
                  <div class="grid-item branding col-md-4 col-sm-6">
                     <div class="item-wrap">
                        <figure class="">
                           <div class="popup-call">
                              <a href="/asd/assets/custom/images/blog/feed/03.jpg" class="gallery-item"><i class="pe-7s-science"></i></a>
                           </div>
                           <img src="/asd/assets/custom/images/blog/feed/03.jpg" class="img-responsive" alt="img11"/>
                           <figcaption>
                              <div class="post-meta"><span>by <a href="#!">Sam Anderson</a>,</span> <span>March 16, 2015</span></div>
                              <div class="post-header">
                                 <h5><a href="blogpost.html">Crazy Frod needs help</a></h5>
                              </div>
                              <div class="post-entry">
                                 <p>Aliquam gravida tincidunt congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
                              </div>
                              <div class="post-tag pull-left">
                                 <span><a href="#branding" data-filter=".branding">Branding</a></span>
                              </div>
                              <div class="post-more-link pull-right"><a href="blogpost.jsp">More<i class="fa fa-long-arrow-right right"></i></a></div>
                           </figcaption>
                        </figure>
                     </div>
                  </div>
               </div>
            </div>
            <div class="dividewhite8"></div>
         </section>
         <!-- /Related Blogposts -->

      </div>
      <!-- /Content Sections -->

   </div>

</div>

<div id="image-cache" class="hidden"></div>

<!-- JS -->
<script src="../assets/vendor/jquery/js/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/vendor/animatedheader/js/classie.js"></script>
<script src="../assets/vendor/animatedheader/js/cbpAnimatedHeader.min.js"></script>
<script type="text/javascript" src="../assets/vendor/imagesloaded/js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="../assets/vendor/isotope/js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../assets/vendor/jquery-parallax/js/jquery.parallax-1.1.3.js"></script>
<script src="../assets/vendor/anicounter/jquery.counterup.min.js" type="text/javascript"></script>
<script src="../assets/vendor/circle-progress/circle-progress.min.js" type="text/javascript"></script>
<script src="../assets/vendor/waypoints/waypoints.min.js" type="text/javascript"></script>
<script src="../assets/vendor/goalprogress/goalProgress.min.js" type="text/javascript"></script>
<script src="../assets/vendor/mfp/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="../assets/vendor/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>

<script type="text/javascript" src="../assets/vendor/rs-plugin/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
<script type="text/javascript" src="../assets/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
<script type="text/javascript" src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="../assets/vendor/rs-plugin/js/extensions/revolution.extension.video.min.js"></script>

<!-- Custom scripts -->
<script src="../assets/custom/js/script.js" type="text/javascript"></script>

</body>
</html>
