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

  <style>
  	.header_fix{
  		width: 90%;
  	}
    .local-video {
      width: 165px;
      height: 165px;
    }

    .remote-video {
      width: 320px;
      height: 240px;
    }

    @media (min-width: 992px) {
      .remote-video {
        width: 640px;
        height: 480px;
      }
    }

    .chat-timeline {
      height: 200px;
      font-size: 9px;
      overflow: auto;
    }

    .chat-timeline .local {
      color: blue;
    }

    .chat-timeline .remote {
      color: red;
    }

    @media (min-width: 992px) {
      .channel-list {
        font-size: 0.8em;
      }
    }

    .form-group{
      border-bottom: 1px solid #eee;
      padding: 5px;
      width: 100%;
    }
    
    /* The switch - the box around the slider */
	.switch {
	  position: relative;
	  display: inline-block;
	  width: 60px;
	  height: 34px;
	}
	
	/* Hide default HTML checkbox */
	.switch input {display:none;}
	
	/* The slider */
	.slider {
	  position: absolute;
	  cursor: pointer;
	  top: 0;
	  left: 0;
	  right: 0;
	  bottom: 0;
	  background-color: #ccc;
	  -webkit-transition: .4s;
	  transition: .4s;
	}
	
	.slider:before {
	  position: absolute;
	  content: "";
	  height: 26px;
	  width: 26px;
	  left: 4px;
	  bottom: 4px;
	  background-color: white;
	  -webkit-transition: .4s;
	  transition: .4s;
	}
	
	input:checked + .slider {
	  background-color: #2196F3;
	}
	
	input:focus + .slider {
	  box-shadow: 0 0 1px #2196F3;
	}
	
	input:checked + .slider:before {
	  -webkit-transform: translateX(26px);
	  -ms-transform: translateX(26px);
	  transform: translateX(26px);
	}
	
	/* Rounded sliders */
	.slider.round {
	  border-radius: 34px;
	}
	
	.slider.round:before {
	  border-radius: 50%;
	}
  </style>
   
<script src="/asd/script/jquery-3.1.1.min.js"></script>


<script>
	function checkit(){
		var user = document.getElementById("userId").value;
		var serial = document.getElementById("createChannelId").value;
		
		alert(serial);
		 $.ajaxSettings.traditional = true;
		$.ajax({
			url:'/asd/videochat/checkon.action',
			type:'post',
			data : {'user_m' : user,
					'serial' : serial
			},
			success:function(data){
			}
		});
		$.ajax({
			url:'/asd/videochat/rost.action',
			type:'post',
			data : {'user_m' : user,
					'serial' : serial
			},
			success:function(data){
				var rost = data.rost;
				var insert;
				$.each(rost,function (index,item) {
					insert += "<tr>"
					insert += "<td>"+item.user_m+"</td>";
					insert += "<td>"+item.serial+"</td>";
					insert += "</tr>"
				});
					$("#tbody").html(insert);	
			}
		});
	}
	

</script>

</head>
<body>

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
         <li><a href="index.jsp">HOME</a></li>
         <li><a href="about.jsp">ABOUT US</a></li>
         <!-- <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
         <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
         <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
         <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
         <li><a href="/asd/reservation/reservationList.action">RESERVE</a></li>
         <%-- <li><a href="/asd/videochat/enter.action?user_m=<s:property value="#session.user_m"/>">F2F MAKEUP CLASS</a></li> --%>
         <li><a href="video.jsp" class="current">F2F MAKEUP CLASS</a></li>
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
      </div>
   </div>
   <!-- /#sidebar-wrapper -->

   <!-- Content -->
   <div id="page-content-wrapper" class="content-wrap">

      <!-- Header -->
      <header class="cbp-af-header toggled header_fix">
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
                        <img src="/asd/assets/custom/video/moving-forward/snapshots/chat.png"
                             alt=""
                             data-bgposition="center center"
                             data-bgfit="cover"
                             data-bgrepeat="no-repeat"
                             data-bgparallax="0"
                             class="rev-slidebg"
                             data-no-retina>
                        <!-- LAYERS -->


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
                             style="z-index: 2;">１：１メイク講習
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
                             style="z-index: 2;">----
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
         
         <!--비디오---------------------------------------------------------------------------------  -->
 <div class="container">
    <div class="row">

      <div class="col-md-12">
        <h1 class="page-header">１：１メイク講習</h1>
      </div>

      <div class="col-md-6 col-md-offset-3 hide">
        <div class="alert alert-info alert-dismissible" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          ...
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-2">
        <h3 class="h4">User Id</h3>
        <form>
          <div class="form-group">
            <label class="sr-only" for="userId">User Id</label>
            <input class="form-control" type="text" id="userId" placeholder="Enter your user id." style="font-size: 5px" value="<s:property value="#session.user_m"/>"/>
            <input type="button" value="button" onclick="checkit();"/>
            
          </div>
        </form>

        <h2 class="h3">Channel</h2>
        <h3 class="h4">Create</h3>
        <form>
          <div class="from-gruop">
            <input class="form-control" type="text" id="createChannelId" placeholder="Create and connect the channel." value="" style="font-size: 5px" readonly="readonly">
            <label class="sr-only" for="createChannelId">Channel Id</label>
          </div>
          <button class="btn btn-default btn-sm btn-block" id="createChannel">
            <span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> Create
          </button>
        </form>
        <button class="btn btn-default btn-sm btn-block" id="disconnectChannel">
          <span class="glyphicon glyphicon-stop" aria-hidden="true"></span> Disconnect
        </button>

        <h3 class="h4">Channel List</h3>
        <div class="list-group channel-list" id="channelList"></div>

        <button class="btn btn-default btn-sm pull-right" id="refreshChannel">
          <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span> Refresh
        </button>
      </div>

      <div class="col-md-7">
        <h2 class="h3">Video</h2>
        <div class="well">
          <video class="remote-video center-block" id="remoteVideo"></video>

          <div class="text-center hide">
            <button class="btn btn-default btn-sm" id="saveFileFromRemote">
              <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> Save
            </button>
          </div>

          <div class="text-center">
            <span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span>
            <div class="btn-group" role="group" aria-label="...">
              <button class="btn btn-default btn-sm" id="startRemoteVideoRecord">
                <span class="glyphicon glyphicon-record" aria-hidden="true"></span> Record
              </button>
              <button class="btn btn-default btn-sm" id="stopRemoteVideoRecord">
                <span class="glyphicon glyphicon-stop" aria-hidden="true"></span> Stop
              </button>
              <button class="btn btn-default btn-sm" id="saveRemoteVideoRecord">
                <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> Save
              </button>
            </div>
          </div>
        </div>

      </div>
      <!--리스트 -----------------------------------------------------------------------------------------------------  -->
      <!-- Ajax 사용 -->
      
      <div>
      	<table border="1px">
			<thead>
      		<tr>
      			<td>user</td>
      			<td>serial</td>
      		</tr>
      		</thead>
      		<tbody id="tbody">
      		<s:iterator value="rost">
      		<tr>
      			<td><s:property value="user_m"/></td>
      			<td><s:property value="serial"/></td>
      		</tr>
      		</s:iterator>
      		</tbody>
      	</table>
      </div>
       <!-- Ajax 사용 -->
      <!----리스트 ---------------------------------------------------------------------------------------------------  -->
      
      <div class="col-md-3">
        <h2 class="h3">Local</h2>
        <div class="well">
          <video class="local-video center-block" id="localVideo" muted></video>

          <div class="progress" id="sendFileToRemoteBarWrapper">
            <div class="progress-bar" id="sendFileToRemoteBar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0px;"></div>
          </div>

          <div class="text-center">
            <span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span>
            <div class="btn-group" role="group" aria-label="...">
              <button class="btn btn-default btn-sm" id="startLocalVideoRecord">
                <span class="glyphicon glyphicon-record" aria-hidden="true"></span> Record
              </button>
              <button class="btn btn-default btn-sm" id="stopLocalVideoRecord">
                <span class="glyphicon glyphicon-stop" aria-hidden="true"></span> Stop
              </button>
              <button class="btn btn-default btn-sm" id="saveLocalVideoRecord">
                <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> Save
              </button>
            </div>
          </div>

        </div>

        <div class="well chat-timeline" id="timeline" style="overflow: auto;">
        </div>

        <form>
          <label class="sr-only" for="sendMessage">Transfer Message</label>
          <div class="input-group input-group-sm">
            <div class="input-group-addon">
              <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
            </div>
            <input type="text" class="form-control" id="sendMessage" placeholder="Enter your message.">
            <span class="input-group-btn">
              <button class="btn btn-default" id="sendText">
                <span class="glyphicon glyphicon-send" aria-hidden="true"></span> Send
              </button>
            </span>
          </div>
        </form>

        <form class="form-inline">
          <div class="row">
            <div class="col-md-8">
              <label class="sr-only" for="selectFile">Choose File</label>
              <input type="file" id="selectFile">
            </div>
            <div class="col-md-4">
              <button class="btn btn-default btn-xs pull-right" id="sendFile">
                <span class="glyphicon glyphicon-send" aria-hidden="true"></span> Send
              </button>
            </div>
          </div>
        </form>

      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Config</h4>
        </div>
        <div class="modal-body">
          <form class="form-inline">
            <div class="form-group">
              <label for="turnIp">Project Key</label><br/>
                <input type="text" class="form-control" value="60ba608a-e228-4530-8711-fa38004719c1" id="projectKey">
            </div>
            <div class="form-group">
              <label for="turnIp">TURN</label><br/>
              <div class="radio">
                <label>
                  <input type="radio" name="optionsRadios" value="nagTurn" checked> 일반
                </label>
              </div>
              <div class="radio">
                <label>
                  <input type="radio" name="optionsRadios" value="userTurn"> 사용자 설정
                </label>
              </div>
            </div>
            <div class="form-group" style="display: none;" id="userTurnSetting">
              <input type="text" class="form-control" id="turnIp" placeholder="127.0.0.1:8888">
              <input type="text" class="form-control" id="turnUsername" placeholder="아이디를 입력하세요">
              <input type="text" class="form-control" id="turnPwd" placeholder="비밀번호를 입력하세요">
            </div>
            <div class="form-group">
              <label for="turnIp">Resolution</label><br/>
              Min <input type="text" class="form-control" value="640" id="minWidth"> X <input type="text" class="form-control" value="480" id="minHeight">
              <br/>
              Max<input type="text" class="form-control" value="640" id="maxWidth"> X <input type="text" class="form-control" value="480" id="maxHeight">
            </div>
            <div class="form-group">
              <label for="turnIp">Bitrate</label><br/>
              Min <input type="text" class="" value="20" id="minBitrate">
              <br/>
              Max<input type="text" class="form-control" value="30" id="maxBitrate">
            </div>
            <div class="form-group">
              <label for="turnIp">Bandwidth</label><br/>
              Video <input type="text" class="form-control" value="1500" id="videoBandwidth"> Data <input type="text" class="form-control" value="1638400" id="dataBandwidth">
            </div>
            <div class="form-group">
              <label for="turnIp">TurnOnly Use</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="turnIp">Ring Use</label><br/>
				<label class="switch">
				<input type="checkbox" name="ckbTurn" id="ckbTurn">
					<div class="slider round"></div>
				</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="switch">
				<input type="checkbox" name="ckbRing" id="ckbRing">
					<div class="slider round"></div>
				</label>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" id="configSave">Save changes</button>
        </div>
      </div>
    </div>
  </div>



  <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

  <script>
  if (window.sessionStorage) {
	  
		// Get saved data from sessionStorage
	  	var sess_iceServers_value = sessionStorage.getItem('sess_iceServers_value');
	  	var sess_ip = sessionStorage.getItem('sess_ip');
	  	var sess_username = sessionStorage.getItem('sess_username');
	  	var sess_pwd = sessionStorage.getItem('sess_pwd');
	  	var sess_projectKey = sessionStorage.getItem('sess_projectKey');
	  	var sess_minWidth = sessionStorage.getItem('sess_minWidth');
	  	var sess_minHeight = sessionStorage.getItem('sess_minHeight');
	  	var sess_maxWidth = sessionStorage.getItem('sess_maxWidth');
	  	var sess_maxHeight = sessionStorage.getItem('sess_maxHeight');
	  	var sess_videoBandwidth = sessionStorage.getItem('sess_videoBandwidth');
	  	var sess_dataBandwidth = sessionStorage.getItem('sess_dataBandwidth');
	  	var sess_ckbTurn = sessionStorage.getItem('sess_ckbTurn');
	  	var sess_ckbRing = sessionStorage.getItem('sess_ckbRing');
	   	
	  	var g_iceServers = null;
		if(!sess_iceServers_value && typeof sess_iceServers_value!=='string'){
		  	$(':radio[value="nagTurn"]').prop("checked", true);
		  	$(':radio[value="userTurn"]').prop("checked", false);
			$("#userTurnSetting").hide();
			
		} else{
			if(sess_iceServers_value==='userTurn'){
				if(!sess_ip && typeof sess_ip!=='string'){
					//Do something
				}else{
					$("#turnIp").val(sess_ip);
				}
				if(!sess_username && typeof sess_username!=='string'){
					//Do something
				}else{
					$("#turnUsername").val(sess_username);
				}
				if(!sess_pwd && typeof sess_pwd!=='string'){
					//Do something
				}else{
					$("#turnPwd").val(sess_pwd);
				}
	
				g_iceServers = [{
					url: "turn:" + sess_ip,
					credential: sess_pwd,
					username: sess_username
				}];
				
				$(':radio[value="nagTurn"]').prop("checked", false);
			  	$(':radio[value="userTurn"]').prop("checked", true);
				$("#userTurnSetting").show();
			}
		}
		
		if(!sess_projectKey && typeof sess_projectKey!=='string'){
			var g_projectKey = "60ba608a-e228-4530-8711-fa38004719c1";
		}else{
			var g_projectKey = sess_projectKey;
		}
		
		var g_video_constrains = {
			minWidth: 640,
			minHeight: 480,
			maxWidth: 640,
			maxHeight: 480
		};
		if(!sess_minWidth && typeof sess_minWidth!=='string'){
			g_video_constrains.minWidth = 640;
		}else{
			$("#minWidth").val(sess_minWidth);
			g_video_constrains.minWidth = parseInt($("#minWidth").val());
		}
		if(!sess_minHeight && typeof sess_minHeight!=='string'){
			g_video_constrains.minHeight = 480;
		}else{
			$("#minHeight").val(sess_minHeight);
			g_video_constrains.minHeight = parseInt($("#minHeight").val());
		}
		if(!sess_maxWidth && typeof sess_maxWidth!=='string'){
			g_video_constrains.maxWidth = 640;
		}else{
			$("#maxWidth").val(sess_maxWidth);
			g_video_constrains.maxWidth = parseInt($("#maxWidth").val());
		}
		if(!sess_maxHeight && typeof sess_maxHeight!=='string'){
			g_video_constrains.maxHeight = 480;
		}else{
			$("#maxHeight").val(sess_maxHeight);
			g_video_constrains.maxHeight = parseInt($("#maxHeight").val());
		}

		if(!sess_videoBandwidth && typeof sess_videoBandwidth!=='string'){
			var g_video_bandwidth = 2500;
		}else{
			var g_video_bandwidth = sess_videoBandwidth;
		}
		if(!sess_dataBandwidth && typeof sess_dataBandwidth!=='string'){
			var g_data_bandwidth = 1638400;
		}else{
			var g_data_bandwidth = sess_dataBandwidth;
		}
		
		if(!sess_ckbTurn && typeof sess_ckbTurn!=='string'){
			//Do something
		}else{
			if(sess_ckbTurn === "false"){
				$(':checkbox[id="ckbTurn"]').prop("checked", false);
				var g_ckbTurn = false;
			}else{
				$(':checkbox[id="ckbTurn"]').prop("checked", true);
				g_ckbTurn = $("#ckbTurn").is(":checked");
				var g_ckbTurn = sess_ckbTurn;
			}
		}
		
		if(!sess_ckbRing && typeof sess_ckbRing!=='string'){
			//Do something
		}else{
			if(sess_ckbRing === "false"){
				$(':checkbox[id="ckbRing"]').prop("checked", false);
				var g_ckbRing = false;
			}else{
				$(':checkbox[id="ckbRing"]').prop("checked", true);
				g_ckbRing = $("#ckbRing").is(":checked");
				var g_ckbRing = sess_ckbRing;
			}
		}
  } else {
		var g_projectKey = "60ba608a-e228-4530-8711-fa38004719c1";
		var g_iceServers = null;
		var g_video_constrains = {
			minWidth: 640,
			minHeight: 480,
			maxWidth: 640,
			maxHeight: 480
		};
		var g_video_bandwidth = 2500;
		var g_data_bandwidth = 1638400;
		var g_ckbTurn = false;
		var g_ckbRing = false;
  }

    $(':radio[name="optionsRadios"]').change(function(){
      if(this.value === "nagTurn"){
        $("#userTurnSetting").hide();
      } else{
        $("#userTurnSetting").show();
      }
    });

    $("#configSave").click(function(){

        var iceServers_value = $(':radio[name="optionsRadios"]:checked').val();

        if(iceServers_value === "nagTurn"){
          g_iceServers = null;
        } else{
          var ip = $("#turnIp").val();
          var username = $("#turnUsername").val();
          var pwd = $("#turnPwd").val();

          if(!ip || !username || !pwd){
            alert("must set turn!!");
            return;
          }

          g_iceServers = [{
            url: "turn:" + ip,
            credential: pwd,
            username: username
          }];
        }
        
        g_projectKey = $("#projectKey").val();

        g_video_constrains.minWidth = parseInt($("#minWidth").val());
        g_video_constrains.minHeight = parseInt($("#minHeight").val());
        g_video_constrains.maxWidth = parseInt($("#maxWidth").val());
        g_video_constrains.maxHeight = parseInt($("#maxHeight").val());

        g_video_bandwidth = parseInt($("#videoBandwidth").val());
        g_data_bandwidth = parseInt($("#dataBandwidth").val());
        g_ckbTurn = $("#ckbTurn").is(":checked");
        g_ckbRing = $("#ckbRing").is(":checked");
        
		if(!g_projectKey){
			alert("must set Project Key!!");
			return;
		}
		if(!g_video_constrains.minWidth || !g_video_constrains.minHeight || !g_video_constrains.maxWidth || !g_video_constrains.maxHeight){
			alert("must set Resolution!!");
			return;
		}
		if(!g_video_bandwidth || !g_data_bandwidth){
			alert("must set Bandwidth!!");
			return;
		}
        
        channelListApp = new PlayRTC({
            projectKey: g_projectKey,
            video: false,
            audio: false
          });
        $('#channelList').empty();
        getChannelList();
        
        
		//Save data to sessionStorage
		sessionStorage.setItem('sess_iceServers_value', $(':radio[name="optionsRadios"]:checked').val());
		sessionStorage.setItem('sess_ip', $("#turnIp").val());
		sessionStorage.setItem('sess_username', $("#turnUsername").val());
		sessionStorage.setItem('sess_pwd', $("#turnPwd").val());
		sessionStorage.setItem('sess_projectKey', $("#projectKey").val());
		sessionStorage.setItem('sess_minWidth', $("#minWidth").val());
		sessionStorage.setItem('sess_minHeight', $("#minHeight").val());
		sessionStorage.setItem('sess_maxWidth', $("#maxWidth").val());
		sessionStorage.setItem('sess_maxHeight', $("#maxHeight").val());
		sessionStorage.setItem('sess_videoBandwidth', $("#videoBandwidth").val());
		sessionStorage.setItem('sess_dataBandwidth', $("#dataBandwidth").val());
		sessionStorage.setItem('sess_ckbTurn', $("#ckbTurn").is(":checked"));
		sessionStorage.setItem('sess_ckbRing', $("#ckbRing").is(":checked"));
		

        alert("save completed!!");
    });
    
  </script>

  <script src="//www.playrtc.com/sdk/js/playrtc.js"></script>
  <script>
    'use strict';

    var createChannelButton = document.querySelector('#createChannel');
    var createChannelIdInput = document.querySelector('#createChannelId');
    var refreshChannelButton = document.querySelector('#refreshChannel');
    var channelList = document.querySelector('#channelList');
    var getChannelList;createChannelButton
    var disconnectChannelButton = document.querySelector('#disconnectChannel');
    var startRemoteVideoRecordButton = document.querySelector('#startRemoteVideoRecord');
    var stopRemoteVideoRecordButton = document.querySelector('#stopRemoteVideoRecord');
    var saveRemoteVideoRecordButton = document.querySelector('#saveRemoteVideoRecord');
    var startLocalVideoRecordButton = document.querySelector('#startLocalVideoRecord');
    var stopLocalVideoRecordButton = document.querySelector('#stopLocalVideoRecord');
    var saveLocalVideoRecordButton = document.querySelector('#saveLocalVideoRecord');
    var chattingTimeline = document.querySelector('#timeline');
    var sendMessageInput = document.querySelector('#sendMessage');
    var selectFileInput = document.querySelector('#selectFile');
    var userId = document.querySelector('#userId');
    var sendTextButton = document.querySelector('#sendText');
    var sendFileButton = document.querySelector('#sendFile');
    var sendFileToRemoteBar = document.querySelector('#sendFileToRemoteBar');
    var sendFileToRemoteBarWrapper = document.querySelector('#sendFileToRemoteBarWrapper');
    var remoteVideo = document.querySelector('#remoteVideo');
    var localVideo = document.querySelector('#localVideo');
    var recordedRemoteVideoBlob;
    var recordedRemoteVoiceBlob;
    var recordedLocalVideoBlob;
    var recordedLocalVoiceBlob;
    var userIdInput = document.querySelector('#userId');
    /* var userId; */
    var app;

    var channelListApp = new PlayRTC({
      projectKey: g_projectKey,
      video: false,
      audio: false
    });


    function getChannelList() {
      channelListApp.getChannelList(function (result) {
        var channels = result.channels;
        var channelsLength = channels.length;

        while (channelList.hasChildNodes()) {
          channelList.removeChild(channelList.firstChild);
        }

        for (var i = 0; i < channelsLength; i++) {
          var channelListAnchor = document.createElement('a');
          var linkIcon = document.createElement('span');

          channelListAnchor.classList.add('list-group-item');
          channelListAnchor.setAttribute('data-channelid', channels[i].channelId);
          channelListAnchor.textContent = channels[i].channelId;

          linkIcon.classList.add('glyphicon', 'glyphicon-menu-right', 'pull-right');
          linkIcon.setAttribute('aria-hidden', 'true');

          channelListAnchor.appendChild(linkIcon);

          channelList.appendChild(channelListAnchor);
        }
      }, function (arg1, arg2){
    	  alert(arg2.error.message);
      });
    }

    getChannelList();


    function rtcStart(){
      app = new PlayRTC({
        projectKey: g_projectKey,
        localMediaTarget: 'localVideo',
        remoteMediaTarget: 'remoteVideo',
        iceServers: g_iceServers,
        video: g_video_constrains,
        bandwidth: {
          video: g_video_bandwidth,
          data: g_data_bandwidth
        },
        onlyTurn: g_ckbTurn,
        ring: g_ckbRing
      });
      
      app.on('connectChannel', function (channelId) {
        createChannelIdInput.value = channelId;
        getChannelList();
      });
      
      app.on('disconnectChannel', function (channelId) {
        createChannelIdInput.value = '';

        while (chattingTimeline.hasChildNodes()) {
          chattingTimeline.removeChild(chattingTimeline.firstChild);
        }

        getChannelList();
      });

      app.on('otherDisconnectChannel', function (channelId) {
        remoteVideo.src = '';

        while (chattingTimeline.hasChildNodes()) {
          chattingTimeline.removeChild(chattingTimeline.firstChild);
        }

        getChannelList();
      });
      
      app.on('ring', function(pid, uid){
  		if(window.confirm("수락?")){
  			app.accept(pid);
  		}
  		else{
  			app.reject(pid);
  		}
  	});

      app.on('addDataStream', function (pid, uid, dataChannel) {
        dataChannel.on('message', function (message) {
          var chatParagraph;

          if (message.type === 'text') {
            chatParagraph = document.createElement('p');
            chatParagraph.classList.add('local');
            chatParagraph.textContent = message.data;

            chattingTimeline.appendChild(chatParagraph);
          } else if (message.type === 'binary') {
            PlayRTC.utils.fileDownload(message.blob, message.fileName);
            sendFileToRemoteBar.style.width = '0px';
          }
        });

        dataChannel.on('progress', function (message) {
          var width = sendFileToRemoteBarWrapper.clientWidth;
          var progressbar = (width / message.fragCount) * (message.fragIndex + 1);

          if (message.totalSize === message.fragSize) {
            return;
          }

          sendFileToRemoteBar.style.width = progressbar + 'px';
        });

        dataChannel.on('error', function (event) {
          alert('ERROR. See the log.');
        });
      });
    }

    refreshChannelButton.addEventListener('click', function (event) {
      event.preventDefault();
      getChannelList();
    }, false);

    channelList.addEventListener('click', function (event) {
      rtcStart();
      var channelId = event.target.dataset.channelid;
      userId = userIdInput.value;

      app.connectChannel(channelId, {
    	  peer: {
          uid: userId
    	  }
      });

    }, false);

    createChannelButton.addEventListener('click', function (event) {
      rtcStart();
      event.preventDefault();

      userId = userIdInput.value;
      app.createChannel({
        peer: {
          uid: userId
        }
      })

    }, false);

    disconnectChannelButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      event.preventDefault();
      app.disconnectChannel();
    }, false);

    startRemoteVideoRecordButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      var peers = app.getAllPeer();
      var hasPeers = peers.length > 0;
      var firstPeerMedia = peers[0].getMedia();

      event.preventDefault();

      if (hasPeers) {
        firstPeerMedia.record();
      }
    }, false);

    stopRemoteVideoRecordButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      var peers = app.getAllPeer();
      var hasPeers = peers.length > 0;
      var firstPeerMedia = peers[0].getMedia();

      event.preventDefault();

      if (hasPeers) {
        firstPeerMedia.recordStop(function (blob) {
          recordedRemoteVideoBlob = blob;
        });
      }
    }, false);

    saveRemoteVideoRecordButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      event.preventDefault();
      if (recordedRemoteVideoBlob) {
        PlayRTC.utils.fileDownload(recordedRemoteVideoBlob, 'remote-video.webm');
      }
    }, false);

    startLocalVideoRecordButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      var media = app.getMedia();

      event.preventDefault();

      if (media) {
        media.record();
      }
    }, false);

    stopLocalVideoRecordButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      var media = app.getMedia();

      event.preventDefault();
      if (media) {
        media.recordStop(function (blob) {
          recordedLocalVideoBlob = blob;
        });
      }
    }, false);

    saveLocalVideoRecordButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      event.preventDefault();
      if (recordedLocalVideoBlob) {
        PlayRTC.utils.fileDownload(recordedLocalVideoBlob, 'local-video.webm');
      }
    }, false);

    sendTextButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      var chatParagraph;
      var message = userIdInput.value+sendMessageInput.value;

      event.preventDefault();

      if (message) { 
        app.sendText(message);

        chatParagraph = document.createElement('p');
        chatParagraph.classList.add('remote');
        chatParagraph.textContent = message;

        chattingTimeline.appendChild(chatParagraph);
      }
      sendMessageInput.value = '';
    }, false);
    
    sendFileButton.addEventListener('click', function (event) {
      if(!app){
        return;
      }
      var myFile = selectFileInput.files[0];

      event.preventDefault();

      if (!myFile) {
        return false;
      }
      app.sendFile(myFile);
      selectFileInput.value = '';
    }, false);
  </script>
  
  
         <!--비디오---------------------------------------------------------------------------------  -->
         
         
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
    	<!-- $.ajax({
    		 type:'post',
    		 url:'/videochat/checkon.action',
    		 data:{
    			 user:userId,
    			 serial:channelId
    		 },
    		 success : function(data){
    			 alert("성공 디비");
    		 }
    	 })-->
</body>
</html>
