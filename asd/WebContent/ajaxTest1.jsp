<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript" src="JavaScript/jquery-3.1.1.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$.ajax({
					 url : 'lists'
					,dataType : 'json' // resp = {"list":[{},{},{}]} 을 받아오는 값 resp
					,success : function(resp){
						var list = resp.list;
						$.each(list,function (index,item) {
							var insert = "<tr><td>"+item.pno+"</td>";
							insert += "<td>"+item.pname+"</td>";
							insert += "<td>"+item.price+"</td>";
							insert += "<td><input type='button' class='deletes' value = '데이터 삭제'></td></tr >";
							$("#showlist").append(insert);	
						});
					}				 
				});
				
				$('#showlist').on('click','.deletes',function(){
					$(this).parent().parent().remove();
					var pno = $(this).parent().parent().children().first().text();
					//var pno = $(this).parent().parent().children().eq(1).text(); 두번째 (0은 첫번째) 
					var item = {"product.pno":pno};
					$.ajax({
						 url: 'delete'
						,type : 'post'
						,data : item
						,dataType : 'json'
					});
				});
				
				
				$("#sendBtn").on('click',function(){
					$.ajax({
						url: 'send'
						//method : get - default
					});//ajax		
				});//onClick
				//http://localhost:8099/AjaxTest/sum?x=5&y=33
				$("#sendNumber").on('click',function(){
					var y = $("#y").val();
					var x = $("#x").val();
					$.ajax({
						url: 'sum'
					   ,method : 'get'
					   ,data : {"x":x,"y":y}
					   ,dataType : "json"  //"json"-일반 문자열 xml,html
					   ,success : function(response){
						   alert(response.result);
					   }
					   //,data : 'x='+25+'&y='+33	
					});//ajax
				});//onClick
				$("#product").on('click',function(){					
					$.ajax({
						 url : 'addpro'
						,method : 'post' 
						,data : da()
						,dataType : 'json'
						,success : function(response){
							$("#showlist").html(function(){
								return '';
							});
							$.ajax({
								 url : 'lists'
								,dataType : 'json' // resp = {"list":[{},{},{}]} 을 받아오는 값 resp
								,success : function(resp){
									var list = resp.list;
									$.each(list,function (index,item) {
										var insert = "<tr><td>"+item.pno+"</td>";
										insert += "<td>"+item.pname+"</td>";
										insert += "<td>"+item.price+"</td>";
										insert += "<td><input type='button' class='deletes' value = '데이터 삭제'></td></tr >";
										$("#showlist").append(insert);	
									});
								}				 
							});
							
						}
						,error : function(xhr,status){ //XmlHttpRequest
							alert(status);	
						}
						
					});
					
				});
			});//document.ready
			
			function da(){
				alert("김지현");
				var pno = $("#pno").val();
				var pname = $("#pname").val();
				var price = $("#price");
				
				if(isNaN(price.val())){
					alert("가격은 숫자만 입력 가능");
					price.focus();
					price.select();

					xhr.abort();
				}//if
				
				alert("김지현2222");
				var product = {
					     "product.pno" : pno
						,"product.pname" : pname
						,"product.price" : price.val()
				}
				return product;
			}//function da
			
	
		</script> 
	</head>
	<body>
		<div id="wrapper"> 
			<input type="button" id="sendBtn" value="보내기">
			<input type="button" id="sendNumber" value="합계">
			<input type="button" id="product" value="상품정보">
		</div>
		<div id="product">
			<br/>
			제품번호 : <input type="text" id="pno" /> 
			제품명 : <input type="text" id="pname" />
			제품가격 : <input type="text" id="price" />
		</div>
		<div id = "result">
			<h2>처리된 데이터</h2>
		</div>
		<div>
			<h2>[제품 리스트]</h2>
			<table border="1">
				<thead>
					<tr>
						<th>제품번호</th>
						<th>제품명</th>
						<th>제품가격</th>
						<th>버튼</th>
					</tr>
				</thead>
				<tbody id="showlist">
				
				</tbody>
			</table>
		</div>
	</body>
</html>