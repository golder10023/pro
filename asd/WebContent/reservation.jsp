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
    .local-video {
      width: 550px;
      height: 500px;
      top: 20px;
      right: 30px;
    }

    .remote-video {
       top: 20px;
      right: 30px;
       width: 550px;
      height: 500px;
    }
  </style>
   <link rel=icon href=favicon.ico sizes="16x16" type="image/png">

   <!-- JS -->
   <script src="/asd/assets/vendor/animatedheader/js/modernizr.custom.js"></script>

   <!-- CSS -->
   <link href="/asd/assets/vendor/bootstrap/css/bootstrap.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/pe-icon-7-stroke/css/pe-icon-7-stroke.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/mfp/css/magnific-popup.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/fontawesome/css/font-awesome.min.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/owl-carousel/assets/owl.carousel.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>

   <link href="/asd/assets/vendor/rs-plugin/css/settings.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/rs-plugin/css/layers.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   <link href="/asd/assets/vendor/rs-plugin/css/navigation.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>

   <link href="/asd/assets/custom/css/style.css" property='stylesheet' rel="stylesheet" type="text/css" media="screen"/>
   
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> --%>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
	button {
		display: block;
		background-color: #CCCCCC;
		border: 1px solid #dedede;
		cursor:pointor;
		padding: 5px 10px 6px 7px;
		
	}

</style>
<script src="/asd/JavaScript/jquery-3.1.1.min.js"></script>
<script>
	var one="";
	var two="";
	var three="";
	var four="";
	var five="";
	var six="";
	var seven="";
	var eight="";
	function reserve(){
	//	var seven=document.getElementById('seven').value;
		//var eight=document.getElementById('eight').value;
		var user = document.getElementById('user_m').value;
		var expert = document.getElementById('expert').value;
		var reservationDate = document.getElementById('reservationDate').value;
		reservationDate
		alert(user+"님 "+reservationDate+" 전문가 "+expert+"님로"+one+two+three+four+five+six+seven+eight+ "예약되었습니다");
		checkform.action = "/asd/reservation/reservationWrite";
		checkform.submit();
	}

var d;   
var date = new Date();//현재컴퓨터시간을 받아옴
var year = date.getFullYear();//현재 년도를 받아옴
var month = date.getMonth()+1;//현재 월을 받아옴 달을 받아올때 -1이므로 1을 더해줌
var day =  date.getDate(); // 현재 일을 받아옴
var reservationDate = month+"월"+(day+1)+"일";//예약날짜라 현재날짜의 1을 더해서 계산해줌

var reservationYearMonthDay = year+"-"+month+"-"+(day+1);

/* 데이터베이스 담기 위한 변수  일단 배열로 생성합니다 

*/
var make_upExpert = new Array();
var make_upReservationDate = new Array(); 
var make_upOne_hour = new Array();
var make_upTwo_hour = new Array();
var make_upThree_hour = new Array();
var make_upFour_hour = new Array();
var make_upFive_hour = new Array();
var make_upSix_hour = new Array();
var make_upSeven_hour = new Array();
var make_upEight_hour = new Array();


/* var arr = new Array();

arr[0] = '333';
arr[1] = '444';
arr[2] = '555';
for(var i=0; arr.length; i++){
	alert(arr[i]);
}
 */



//alert(count);
/* for(var i = 0 ; i < count ; i++){
	alert(make_upReservationDate[i]);
} */



/* for(var i =0; make_upReservationDate.length; i++){
	alert(make_upReservationDate[i]);
} */
//alert(make_upReservationDate.length);


//alert(make_upReservationDate.value)

//alert(document.getElementById("expert").value);
//var test = document.getElementById("btn42");
//alert(test.value);
//alert(document.getElementById("btn42").getAttribute('value')));
	


window.onload = function(){
	d = document.getElementById('reservationDay');
	d.innerHTML= reservationDate;
	
	//alert(document.getElementById('reservationDate').value);
	/* for(var i = 0; i < count; i++){
		if(make_upReservationDate[i]===document.getElementById('reservationDate')&&
		make_upExpert[i]===document.getElementById('expert')		
		){
			alert("감바때");
		}
	}
*/		
	
	
	//alert(reservationDate);
 };	
 
	/* if(make_upExpert==="SORU"){
		alert("akdkalfj");
	}
	else if (make_upExpert==="HIGE"){
		alert("ssssss");
	}
		 */
/* 
	if(make_upReservationDate === reservationMonthDay){
		alert("00")
	} */
	
	
	//console.log(make_upEmail);
	//console.log(document.getElementById("email").value);
	
	/*  if(make_upReservationDate === reservationYearMonthDay){
		if(make_upExpert===document.getElementById("expert").value){
			//console.log("2");
					document.getElementById("btn11").style.display = "none";
				//console.log("3");
				if(make_upOne_hour === "예약중"){
					//alert(make_upOne_hour);
					//console.log("4");
					
				}
				
		}
	} */
	/* if(make_upOne_hour===document.getElementById("one_hour")){
	
	}
	else if(make_upTwo_hour===document.getElemetById("two_hour")){
		
	}
	else if(make_upThree_hour===document.getElementById("three_hour")){
		
	}
	else if(make_upFour_hour===document.getElementById("four_hour")){
		
	}
	else if(make_upFive_hour===document.getElementById("five_hour")){
		
	}
	else if(make_upSix_hour===document.getElementById("six_hour")){
		
	}
	else if(make_upSeven_hour===document.getElementById())
	else if(make_even_hour){
		
	} */
   
	
	
	
 
//

/* function Check(){
	var reservationDate = document.getElementById("reservationDate");
	var date = new Date();
		
	var currentYear = date.getYear();

} */


$(document).ready(function(){
	
	
	
	var  count= 0;  	
	<s:iterator value = "reservationList">
		
		make_upExpert[count] = '<s:property value = "expert"/>';
		make_upReservationDate[count] = '<s:property value = "reservationDate"/>';
		make_upOne_hour[count] = '<s:property value = "one_hour"/>';
		make_upTwo_hour[count] = '<s:property value = "two_hour"/>';
		make_upThree_hour[count] = '<s:property value = "three_hour"/>';
		make_upFour_hour[count] = '<s:property value = "four_hour"/>';
		make_upFive_hour[count] = '<s:property value = "five_hour"/>';
		make_upSix_hour[count] = '<s:property value = "six_hour"/>';
		make_upSeven_hour[count] = '<s:property value = "seven_hour"/>';
		make_upEight_hour[count] = '<s:property value = "eight_hour"/>';
		count++;
	</s:iterator>
	
	//if(make_upReservationDate===)
	
	$('input#reservationDate').attr('value',reservationYearMonthDay);
	
	
	
		//alert($('input#reservationDate').val());
	 $('#btn111').click(function(){
		
		var currentDate = new Date();
//		alert(day);
		if(currentDate.getDate() === day){
			alert("오늘 날짜에는 예약을 하실 수 없습니다.");
			
		}
		else{
		
			if((year%400===0)||((year%4===0)&&(year%100!==0))){
				if(month===1){
					if(day===1){
						year-=1;
						month=12;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===2){
					if(day===1){
						month-=1;
						day =31;
					}
					else{
						day-=1;
					}
				}
				if(month===3){
					if(day===1){
						month-=1;
						day=29;
					}
					else{
						day-=1;
					}
				}
				if(month===4){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===5){
					if(day===1){
						month-=1;
						day=30;
					}
					else{
						day-=1;
					}
				}
				if(month===6){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===7){
					if(day===1){
						month-=1;
						day=30;
					}
					else{
						day-=1;
					}
				}
				if(month===8){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===9){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===10){
					if(day===1){
						month-=1;
						day=30;
					}
					else{
						day-=1;
					}
				}
				if(month===11){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===12){
					if(day===1){
						month-=1;
						day=30;
					}
					else{
						day-=1;
					}
				}
			}
			else{
				if(month===1){
					if(day===1){
						year-=1;
						month=12;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===2){
					if(day===1){
						month-=1;
						day =31;
					}
					else{
						day-=1;
					}
				}
				if(month===3){
					if(day===1){
						month-=1;
						day=28;
					}
					else{
						day-=1;
					}
				}
				if(month===4){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===5){
					if(day===1){
						month-=1;
						day=30;
					}
					else{
						day-=1;
					}
				}
				if(month===6){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===7){
					if(day===1){
						month-=1;
						day=30;
					}
					else{
						day-=1;
					}
				}
				if(month===8){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===9){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===10){
					if(day===1){
						month-=1;
						day=30;
					}
					else{
						day-=1;
					}
				}
				if(month===11){
					if(day===1){
						month-=1;
						day=31;
					}
					else{
						day-=1;
					}
				}
				if(month===12){
					if(day===1){
						month-=1;
						day=30;
					}
					else{
						day-=1;
					}
				}	
			}
			d = document.getElementById('reservationDay');
			reservationDate = month+"월"+day+"일";	
			d.innerHTML= reservationDate;
		
			var reservationYearMonthDay = year+"-"+month+"-"+day;
			$('input#reservationDate').attr('value',reservationYearMonthDay);
		
			$("#one").text('');
			$("#two").text('');
			$("#three").text('');
			$("#four").text('');
			$("#five").text('');
			$("#six").text('');
			$("#seven").text('');
			$("#eight").text('');
		
			$("#btn12").hide();
			$("#btn22").hide();
			$("#btn32").hide();
			$("#btn42").hide();
			$("#btn52").hide();
			$("#btn62").hide();
			$("#btn72").hide();
			$("#btn82").hide();
		
			$("#btn11").show();
			$("#btn21").show();
			$("#btn31").show();
			$("#btn41").show();
			$("#btn51").show();
			$("#btn61").show();
			$("#btn71").show();
			$("#btn81").show();
		}
	});
	
	function calculationPlusDate(calMonth,calDay){
		/* alert(calDay);
		alert(calMonth); */
		var calD = new Date();
		var calDate=0;
		if(year!==calD.getFullYear()){
			if((year%400===0)||((year%4===0)&&(year%100!==0))){
				calDate=366+calDay;
			}
			else{
				calDate = 365+calDay;
			}
		}
		else{
			for(var i = 1 ; i<=calMonth ; i ++){
				
				if(i===2||i===4||i===6||i===8||i===9||i===11){
					calDate+=31;
				} 
				if(i===3){
					if((year%400===0)||((year%4===0)&&(year%100!==0))){
						calDate += 29;	
					}
					else{
						calDate +=28;
					}
				}
				else if(i===5||i===7||i===10||i===12){
					calDate+=30;	
				}
				
			}	
			calDate += calDay; 
		}
		
		
		return calDate;
		
	} 
	$("#btn222").click(function(){
		d = document.getElementById('reservationDay');
		var currentDate = new Date();
		//alert(currentDate.getDate());
		var cd = calculationPlusDate(currentDate.getMonth()+1,currentDate.getDate());//현재년도의 현재일자까지의 총일수
		var rd = calculationPlusDate(month,day);//예약날짜까지의 총일수
		//alert(rd);
		//alert(cd);
		/* switch (month) {
		case 1:
			kenjai = day;
			break;
		case 2:
			kenjai = day+31;
			break;
		default:
			break;
		} */
		
		if(rd === cd+7){
			alert("일주일 후는 예약을 하실 수 없습니다.")
		} 
		else{
			if((year%400===0)||((year%4===0)&&(year%100!==0))){
				if(month===1){
					if(day===31){
						month=12;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===2){
					if(day===29){
						month+=1;
						day =0;
					}
					else{
						day+=1;
					}
				}
				if(month===3){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===4){
					if(day===30){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===5){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===6){
					if(day===30){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===7){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===8){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===9){
					if(day===30){
						month+=1;
						day=1;
					}
					else{
						day+=1;
					}
				}
				if(month===10){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===11){
					if(day===30){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===12){
					if(day===31){
						year+=1;
						month=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
			}
			else{
				if(month===1){
					if(day===31){
						month=12;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===2){
					if(day===28){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===3){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===4){
					if(day===30){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===5){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
					}
				if(month===6){
					if(day===30){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===7){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===8){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===9){
					if(day===30){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
				if(month===10){
					if(day===31){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
		 		if(month===11){
					if(day===30){
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				} 
				if(month===12){
					if(day===31){
						year+=1;
						month+=1;
						day=0;
					}
					else{
						day+=1;
					}
				}
			}
		}
		reservationDate = month+"월"+day+"일";	
		d.innerHTML= reservationDate;
		
		var reservationYearMonthDay = year+"-"+month+"-"+day;
		$('input#reservationDate').attr('value',reservationYearMonthDay);
		//alert($('input#reservationDate').val());
		
		$("#one").text('');
		$("#two").text('');
		$("#three").text('');
		$("#four").text('');
		$("#five").text('');
		$("#six").text('');
		$("#seven").text('');
		$("#eight").text('');

		$("#btn12").hide();
		$("#btn22").hide();
		$("#btn32").hide();
		$("#btn42").hide();
		$("#btn52").hide();
		$("#btn62").hide();
		$("#btn72").hide();
		$("#btn82").hide();
		
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
	}); 
	
	$("#btn12").hide();
	$("#btn22").hide();
	$("#btn32").hide();
	$("#btn42").hide();
	$("#btn52").hide();
	$("#btn62").hide();
	$("#btn72").hide();
	$("#btn82").hide();
	$("#expert").change(function(){
		
	 	$("#btn12").hide();
		$("#btn22").hide();
		$("#btn32").hide();
		$("#btn42").hide();
		$("#btn52").hide();
		$("#btn62").hide();
		$("#btn72").hide();
		$("#btn82").hide();
		
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show(); 
		$("#btn81").show();
		
		
		$('#one').text('');
		$('#two').text('');
		$('#three').text('');
		$('#four').text('');
		$('#five').text('');
		$('#six').text('');
		$('#seven').text('');
		$('#eight').text('');
		/* $('#one').text('야');
		alert($('#one').text()); */
	 	for(var i = 0; i <count; i++){
			
	 		if(($('select#expert').val()===make_upExpert[i])&($('#reservationDate').val()===make_upReservationDate[i])){
					if(make_upOne_hour[i]==="예약중"){
						
						
						$('#btn11').hide();
						//$('#btn12').hide();
						
						$('#one').text("예약중");
					} 
					/* else{
						$('#one').text('');
						$('#two').text('');
					} */
						
						
						/* if($('#one').text()=='예약중'){	
							$('#one').append($('<h5/>', {
					    	    id: 'reservation01',
					        	text: '예약중',
					        	value:'예약중'
					    	}));
							break;
						} */
						
					
					
					if(make_upTwo_hour[i]==='예약중'){
						$('#btn21').hide();
						$('#btn22').hide();
						/* if($('#two').text!=='예약중'){
							$('#two').append($('<h5/>'),{
								id:'reservation02',
								text:'예약중'
							});
							break;
						} */
						//if(make_upExpert[i])
						$('#two').text("예약중");
					}
					if(make_upThree_hour[i]==='예약중'){
						$('#btn31').hide();
						$('#btn32').hide();
						/* if($('three').text!=='예약중'){
							$('#three').append($('<h5/>'),{
								id:'reservation03',
								text:'예약중'
							});
							break;
						} */
						
						$('#three').text("예약중");
					}
					if(make_upFour_hour[i]==='예약중'){
						$('#btn41').hide();
						$('#btn42').hide();
						/* if($('four').text!=='예약중'){
							$('#four').append($('<h5/>'),{
								id:'reservation04',
								text:'예약중'
							});
							break;
						} */
						$('#four').text("예약중");
					}
					if(make_upFive_hour[i]==='예약중'){
						$('#btn51').hide();
						$('#btn52').hide();
						/* if($('five').text!=='예약중'){
							$('#five').append($('<h5/>'),{
								id:'reservation05',
								text:'예약중'
							});
							break;
						} */
						$('#five').text("예약중");
					}
					if(make_upSix_hour[i]==='예약중'){
						$('#btn61').hide();
						$('#btn62').hide();
						/* if($('six').text!=='예약중'){
							$('#six').append($('<h5/>'),{
								id:'reservation06',
								text:'예약중'
							});
							break;
						} */
						$('#six').text("예약중");
					}
					if(make_upSeven_hour[i]==='예약중'){
						$('#btn71').hide();
						$('#btn72').hide();
						/* if($('seven').text!=='예약중'){
							$('#seven').append($('<h5/>'),{
								id:'reservation07',
								text:'예약중'
							});
							break;
						} */
						$('#seven').text("예약중");
					}
					if(make_upEight_hour[i]==='예약중'){
						$('#btn81').hide();
						$('#btn82').hide();
						/* if($('eight').text!=='예약중'){
							$('#teight').append($('<h5/>'),{
								id:'reservation08',
								text:'예약중'
							});
							break;
						} */
						$('#eight').text('예약중');
					} 
			}//if
			
			/* else{
				/* $('#one').text('');
				$('#two').text('');
				$('#three').text('');
				$('#four').text('');
				$('#five').text('');
				$('#six').text('');
				$('#seven').text('');
				$('#eight').text(''); 
				$('#btn11').show()
				$('#btn21').show()
				$('#one').text('');
				$('#two').text('');
				$('#three').removeAttr('text');
				$('#four').removeAttr('text');
				$('#five').removeAttr('text');
				$('#six').removeAttr('text');
				$('#seven').removeAttr('text');
				$('#eight').removeAttr('text'); 
			} */
			
		}//for		 
		
	  
		
		//alert($("input#reservationDate").val());
		
		
		//alert($("select#expert").val());
		
		
	});
/* 	currentDate = $("input#reservationDate").val();//입력이 끝난 현재 날짜
	alert(current); */
	
	
	
	$("#btn11").click(function(){
		$("#btn11").hide();
		$("#btn12").show();
		$("#btn21").hide();
		$("#btn31").hide();
		$("#btn41").hide();
		$("#btn51").hide();
		$("#btn61").hide();
		$("#btn71").hide();
		$("#btn81").hide();
		//$("#one_hour").attr("value","예약중");
		
		one=$("input#one").val();
		
		$("input#one_hour").attr('value','예약중');
		$("input#two_hour").attr('value','예약대기');
		$("input#three_hour").attr('value','예약대기');
		$("input#four_hour").attr('value','예약대기');
		$("input#five_hour").attr('value','예약대기');
		$("input#six_hour").attr('value','예약대기');
		$("input#seven_hour").attr('value','예약대기');
		$("input#eight_hour").attr('value','예약대기');
		
		//alert($("input#two_hour").val());
		
	});

	/* $(document).ready(function(){
		$("h1").on({
			click : function() {
				$(this).append("*");
			},
			mouseenter : function() {
				$(this).addClass("reverse");
			},
			mouseleave : function() {
				$(this).removeClass("reverse");
			},
			dblclick : function() {
				$(this).off("click");
			}
		});
	}) */
	$("#btn12").click(function(){
		alert("예약이 취소되었습니다.");
		$("#btn12").hide();
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
		
		$("input#one_hour").attr('value','예약대기');			
	});
	
	$("#btn21").click(function(){
	
		$("#btn11").hide();
		$("#btn21").hide();
		$("#btn22").show();
		$("#btn31").hide();
		$("#btn41").hide();
		$("#btn51").hide();
		$("#btn61").hide();
		$("#btn71").hide();
		$("#btn81").hide();
		
		
		two=$("input#two").val();
		
		$("input#one_hour").attr('value','예약대기');
		$("input#two_hour").attr('value','예약중');
		$("input#three_hour").attr('value','예약대기');
		$("input#four_hour").attr('value','예약대기');
		$("input#five_hour").attr('value','예약대기');
		$("input#six_hour").attr('value','예약대기');
		$("input#seven_hour").attr('value','예약대기');
		$("input#eight_hour").attr('value','예약대기');
	});
	
	$("#btn22").click(function(){
		alert("예약이 취소되었습니다.");
		$("#btn22").hide();
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
		
		$("input#two_hour").attr('value','예약대기');
	});
	$("#btn31").click(function(){
		
		$("#btn11").hide();
		$("#btn21").hide();
		$("#btn31").hide();
		$("#btn32").show();
		$("#btn41").hide();
		$("#btn51").hide();
		$("#btn61").hide();
		$("#btn71").hide();
		$("#btn81").hide();
		
		three=$("input#three").val();
		$("input#one_hour").attr('value','예약대기');
		$("input#two_hour").attr('value','예약대기');
		$("input#three_hour").attr('value','예약중');
		$("input#four_hour").attr('value','예약대기');
		$("input#five_hour").attr('value','예약대기');
		$("input#six_hour").attr('value','예약대기');
		$("input#seven_hour").attr('value','예약대기');
		$("input#eight_hour").attr('value','예약대기');
	
	});
	
	$("#btn32").click(function(){
		alert("예약이 취소되었습니다.");
		$("#btn32").hide();
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
		
		$("input#three_hour").attr('value','예약대기');
	});
	$("#btn41").click(function(){
	
		$("#btn11").hide();
		$("#btn21").hide();
		$("#btn31").hide();
		$("#btn41").hide();
		$("#btn42").show();
		$("#btn51").hide();
		$("#btn61").hide();
		$("#btn71").hide();
		$("#btn81").hide();
		
		four=$("input#four").val();
		$("input#one_hour").attr('value','예약대기');
		$("input#two_hour").attr('value','예약대기');
		$("input#three_hour").attr('value','예약대기');
		$("input#four_hour").attr('value','예약중');
		$("input#five_hour").attr('value','예약대기');
		$("input#six_hour").attr('value','예약대기');
		$("input#seven_hour").attr('value','예약대기');
		$("input#eight_hour").attr('value','예약대기');
	});
	
	$("#btn42").click(function(){
		alert("예약이 취소되었습니다.");
		$("#btn42").hide();
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
		
		$("input#four_hour").attr('value','예약대기');
	
	});
	
	$("#btn51").click(function(){
	
		$("#btn11").hide();
		$("#btn21").hide();
		$("#btn31").hide();
		$("#btn41").hide();
		$("#btn51").hide();
		$("#btn52").show();
		$("#btn61").hide();
		$("#btn71").hide();
		$("#btn81").hide();
		
		five=$("input#five").val();
		$("input#one_hour").attr('value','예약대기');
		$("input#two_hour").attr('value','예약대기');
		$("input#three_hour").attr('value','예약대기');
		$("input#four_hour").attr('value','예약대기');
		$("input#five_hour").attr('value','예약중');
		$("input#six_hour").attr('value','예약대기');
		$("input#seven_hour").attr('value','예약대기');
		$("input#eight_hour").attr('value','예약대기');
	});
	
	$("#btn52").click(function(){
	
		$("#btn52").hide();
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
		
		$("input#five_hour").attr('value','예약대기');
		
	});
	
	$("#btn61").click(function(){
	
		$("#btn11").hide();
		$("#btn21").hide();
		$("#btn31").hide();
		$("#btn41").hide();
		$("#btn51").hide();
		$("#btn61").hide();
		$("#btn62").show();
		$("#btn71").hide();
		$("#btn81").hide();
		
		
		six=$("input#six").val();
		$("input#one_hour").attr('value','예약대기');
		$("input#two_hour").attr('value','예약대기');
		$("input#three_hour").attr('value','예약대기');
		$("input#four_hour").attr('value','예약대기');
		$("input#five_hour").attr('value','예약대기');
		$("input#six_hour").attr('value','예약중');
		$("input#seven_hour").attr('value','예약대기');
		$("input#eight_hour").attr('value','예약대기');
	});
	
	$("#btn62").click(function(){
		alert("예약이 취소되었습니다.");
		$("#btn62").hide();
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
		
		$("input#six_hour").attr('value','예약대기');
	});
	
	$("#btn71").click(function(){
		$("#btn11").hide();
		$("#btn21").hide();
		$("#btn31").hide();
		$("#btn41").hide();
		$("#btn51").hide();
		$("#btn61").hide();
		$("#btn71").hide();
		$("#btn72").show();
		$("#btn81").hide();
		
		
		seven=$("input#seven").val();
		alert(seven);
		$("input#one_hour").attr('value','예약대기');
		$("input#two_hour").attr('value','예약대기');
		$("input#three_hour").attr('value','예약대기');
		$("input#four_hour").attr('value','예약대기');
		$("input#five_hour").attr('value','예약대기');
		$("input#six_hour").attr('value','예약대기');
		$("input#seven_hour").attr('value','예약중');
		$("input#eight_hour").attr('value','예약대기');
	});
	
	$("#btn72").click(function(){
		alert("예약이 취소되었습니다.");
		$("#btn72").hide();
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
		
		$("input#seven_hour").attr('value','예약대기');
	});
	
	$("#btn81").click(function(){
		
		$("#btn11").hide();
		$("#btn21").hide();
		$("#btn31").hide();
		$("#btn41").hide();
		$("#btn51").hide();
		$("#btn61").hide();
		$("#btn71").hide();
		$("#btn81").hide();
		$("#btn82").show();
		
		eight=$("input#eight").val();
		$("input#one_hour").attr('value','예약대기');
		$("input#two_hour").attr('value','예약대기');
		$("input#three_hour").attr('value','예약대기');
		$("input#four_hour").attr('value','예약대기');
		$("input#five_hour").attr('value','예약대기');
		$("input#six_hour").attr('value','예약대기');
		$("input#seven_hour").attr('value','예약대기');
		$("input#eight_hour").attr('value','예약중');
	
	});
	
	$("#btn82").click(function(){
		alert("예약이 취소되었습니다.");
		$("#btn82").hide();
		$("#btn11").show();
		$("#btn21").show();
		$("#btn31").show();
		$("#btn41").show();
		$("#btn51").show();
		$("#btn61").show();
		$("#btn71").show();
		$("#btn81").show();
		
		$("input#eight_hour").attr('value','예약대기');
	});
	/* for(var i = 0; i<count; i++){
		if(make_upReservationDate[i]===$('#reservationDate'))
	} */
	
	
});
</script>
<title>전문가 예약</title>



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
         <li><a href="../index.jsp">HOME</a></li>
         <li><a href="../about.jsp">ABOUT US</a></li>
         <!-- <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
         <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
         <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
         <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
         <li><a href="/asd/reservation/reservationList.action" class="current">RESERVE</a></li>
         <li><a href="../video.jsp">F2F MAKEUP CLASS</a></li>
        <!--  <li><a href="video.jsp">F2F MAKEUP CLASS</a></li> -->
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
                         <li class="dropdown">
                         	<a class="dropdown-toggle" data-toggle="dropdown"><s:property value="#session.user_m"/> 님 접속중 <b class="caret"></b></a>
                         	<ul class="dropdown-menu">
                              <li><a href="#">회원정보수정</a></li>
						      <li><a href="#">이상해</a></li>
						    </ul>
                         </li>
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
                              <li><a href="../index.jsp">HOME</a></li>
						      <li><a href="../about.jsp">ABOUT US</a></li>
						      <!-- <li><a href="portfolio.jsp">ポートフォリオ</a></li> -->
						      <li><a href="/asd/video/vlist.action">MAKEUP VIDEO</a></li>
						      <!-- <li><a href="blog-list.jsp">メイクビデオ２</a></li> -->
						      <li><a href="/asd/board/list.action">MAKEUP TALK</a></li>
						      <li><a href="/asd/reservation/reservationList.action" class="current">RESERVE</a></li>
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


<!-- 상위 비디오 단▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼ -->
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
                        <img src="/asd/assets/custom/video/moving-forward/snapshots/reservation.jpg"
                             alt=""
                             data-bgposition="center center"
                             data-bgfit="cover"
                             data-bgrepeat="no-repeat"
                             data-bgparallax="0"
                             class="rev-slidebg"
                             data-no-retina>
                        <!-- LAYERS -->

                        <!-- BACKGROUND VIDEO LAYER -->


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
 <!-- 상위 비디오 단▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲ㅍ▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲ ▲-->       
<!---------------------------------------------------------------------------  -->

 <section>
 
	 <s:if test = "#session.email==null">
       <script >
          alert("로그인 후 이용하실 수 있는 서비스입니다.");
          location.href="/asd/index.jsp";
       </script>
       
   	 </s:if>
   	 <s:else>
	<form action = "" id= "checkform" name="checkform" method = "post">
		
			<h1 style="border-bottom-style: double" >Reservation</h1>
			<br>
			<br>
		
		<center style="border:1px gray solid;">
		
		<table id ="table" style="width: 500px;height: 800px; ">
		
			<tr>	
					
					<td width="200px"><input type="button" id ="btn111" value="◀" style="border-right-color: olive;"></td>
					<td width="200px"><p id = "reservationDay" align="center" style="font-size: 20px;font-style: inherit;"></p>
					<input type = "hidden" id = "reservationDate" name = "reservationDate" ></td>
					<td width="200px"><input type = "button" id ="btn222" value="▶" style="border-right-color: olive;"></td>
					

			</tr> 
			<tr>
				<td><input type="hidden" id="email" name="email" value='<s:property value="#session.email"/>'></td>
				<td><input type="hidden" id="user_m" name="user_m" value='<s:property value="#session.user_m"/>'></td>
			</tr>
			<br>
			<tr>
				<td>
				<label style="border-bottom-style: dotted;">
					expert:
					<select id="expert" name ="expert" required="required" >
						<option><h2>선택해주세요</h2></option>
						<option><h2>SORU</h2></option>
						<option><h2>HIGE</h2></option>
					</select>					
				</label>
				</td>
			</tr>
			<br>
			<tr>
				<th>시간대 예약하기</th>
			</tr>
			<tr>
				<td>
					<fieldset>
						<legend  >09:00~10:00</legend>
						
						<h5 id = "one"></h5>					
						<input type="button" id = "btn11"  value = "예약하기" required="required">
						<input type ="hidden" id = "one_hour" name="one_hour">
						<input type ="hidden" id = "one" name="one" value="[09:00~10:00]">
						<input type="button" id = "btn12" value = "예약취소하기" required="required">
					
					</fieldset>
				</td>
				
				<td>
					<fieldset>
						<legend>10:00~11:00</legend>
						
						<h5	id = "two"></h5>						
						<input type="button" id = "btn21" value = "예약하기" required="required">
						<input type ="hidden" id = "two_hour" name="two_hour">
						<input type ="hidden" id = "two" name="two" value="[10:00~11:00]">
						<input type="button" id = "btn22" value = "예약취소하기" required="required">
					</fieldset>
				</td>
				<td>
					<fieldset>
						<legend>11:00~12:00</legend>
										
						<h5 id = "three" ></h5>			
						<input type="button" id = "btn31" value = "예약하기" required="required">
						<input type ="hidden" id = "three_hour" name="three_hour" >
						<input type ="hidden" id = "three" name="three" value="[11:00~12:00]">
						<input type="button" id = "btn32" value = "예약취소하기" required="required">

					</fieldset>
				</td>
				<td>
					<fieldset>
						<legend>13:00~14:00</legend>
						<h5 id = "four"></h5>
						<input type="button" id = "btn41" value = "예약하기" required="required">
						<input type ="hidden" id = "four_hour" name="four_hour" >
						<input type ="hidden" id = "four" name="four" value="[13:00~14:00]">
						<input type="button" id = "btn42" value = "예약취소하기" required="required">

					</fieldset>
				</td>	
			</tr>				
			<tr>
			
				<td>
					<fieldset>
						<legend>14:00~15:00</legend>
						
						<h5 id = "five"></h5>
						<input type="button" id = "btn51" value = "예약하기" required="required">
						<input type ="hidden" id = "five_hour" name="five_hour">
						<input type ="hidden" id = "five" name="five" value="[14:00~15:00]">
						<input type="button" id = "btn52" value = "예약취소하기" required="required">

					</fieldset>
				</td>
				
				<td>
					<fieldset>
						<legend>15:00~16:00</legend>
						
						<h5 id = "six"></h5>
						<input type="button" id = "btn61" value = "예약하기" required="required">
						<input type ="hidden" id = "six_hour" name="six_hour">
						<input type ="hidden" id = "six" name="six" value="[15:00~16:00]">
						<input type="button" id = "btn62" value = "예약취소하기" required="required">

					</fieldset>
				</td>
				<td>
					<fieldset>
						
						<legend>16:00~17:00</legend>
                        
                        <h5 id = "seven"></h5>
						<input type="button" id = "btn71" value = "예약하기" required="required">
						<input type ="hidden" id = "seven_hour" name="seven_hour">
						<input type ="hidden" id = "seven" name="seven" value="[16:00~17:00]">
						<input type="button" id = "btn72" value = "예약취소하기" required="required">

					</fieldset>
				</td>
				<td>
					<fieldset>
						<legend>17:00~18:00</legend>
						
						<h5 id = "eight"></h5>
						<input type="button" id = "btn81"value = "예약하기" required="required">
						<input type ="hidden" id = "eight_hour" name="eight_hour">
						<input type ="hidden" id = "eight" name="eight"  value="[17:00~18:00]">
						<input type="button" id = "btn82" value = "예약취소하기" required="required">

					</fieldset>
				</td>	
			</tr>
			<tr>
				<td><input type="button" value="예약완료" onclick="reserve();"  size= 25px "border-bottom-style: dotted;">
		
			<td><a href = "../index.jsp"><input type="button" value="돌아가기" size= 25px "border-bottom-style: dotted;">
		</a></td>
			</tr>
		</table>
		<br>
		<br>
		
			
	</form>
	</s:else>
	 </section>
	<!-- -------------------------------------------------------------------------------------- -->
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
                              <img src="/asd/assets/custom/images/portfolio/thumbs/05-01.jpg" class="img-responsive" alt="img11"/>
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
                              <img src="/asd/assets/custom/images/portfolio/thumbs/08-01.jpg" class="img-responsive" alt="img03"/>
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
                              <img src="/asd/assets/custom/images/portfolio/thumbs/07-01.jpg" class="img-responsive" alt="img03"/>
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
                              <img src="/asd/assets/custom/images/portfolio/thumbs/06-01.jpg" class="img-responsive" alt="img03"/>
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
<script src="/asd/assets/vendor/jquery/js/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/asd/assets/vendor/animatedheader/js/classie.js"></script>
<script src="/asd/assets/vendor/animatedheader/js/cbpAnimatedHeader.min.js"></script>
<script type="/asd/text/javascript" src="/asd/assets/vendor/imagesloaded/js/imagesloaded.pkgd.min.js"></script>
<script type="/asd/text/javascript" src="/asd/assets/vendor/isotope/js/isotope.pkgd.min.js"></script>
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
