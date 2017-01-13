<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
	table {
		border-style: solid;
		width: 500px;
	}
	
	td { 
		text-align: center;
	}
	
	.vtitle {
		text-align: left;
	}
	
	.inputText {
		text-align: left;
	}
	
	
	#subject {
		width: 400px;
	}
	
	textarea {
		width: 400px;
		height: 150px;
	}
	

	
</script>
	
</style>

<script src="script/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function videolike() {
	var videonum =  document.getElementById('videonum').value;
	
	$.ajax({
		url : 'vlike.action' ,  //액션값
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
$(document).ready(function(){
	$(".modifyBtn").hide();
	
 	$("#file").css("display", "none"); 
	
	
		
		var readForm = document.getElementById('readForm');
 		var result = confirm('삭제 하시겠습니까?');
		
 		if(result == true){
			readForm.action = "/video/vdelete";
			readForm.submit();
			
		}
		else{ return; }
	});
	
	$("#modify2").click(function(){
		
		var readForm = document.getElementById('readForm');
		readForm.action = "/video/vmodify";
		readForm.submit();

	});
	
	$("#modify1").click(function(){
		
		$("#file").css("display", "block");
		$("#video").css("display", "none");
		
		$(".readBtn").hide();
		$(".modifyBtn").show();
		$( "#vtitle, #vcontent").removeAttr("readonly");
	
		});
	
	
	
	
});

</script>

</head>
<body>

	<form action="" method="post" id="readForm" name="readForm">

	<input type="file" id="file" name="data">
	<input type="hidden" id="videonum" name="videonum" value="<s:property value="videonum"/>">
	
	<video controls id="video"> <source src="<s:property value="videoVO.vlink"/>"></video>
	
	<table>
			<tr>
			<td>작성일</td>
			<td class="inputText"><input type="text" class="inputText" id="vdate" name="vdate" value="<s:property value="videoVO.vdate"/>" readonly="readonly"> </td>
			</tr>
			
			<tr>
			<td>조회수</td>
			<td class="inputText"><input type="text" id="vhit"  class="inputText"  name="vhit" value="<s:property value="videoVO.vhit"/>" readonly="readonly"> 
			</tr>
		
			<tr><s:property value="videoVO.vfront"/>
				<td>제목</td>
				<td class="inputText"><input type="text" id="vtitle" name="vtitle"  class="inputText" value="<s:property value="videoVO.vtitle"/>" readonly="readonly"> </td>
			</tr>

			<tr>
			<td>이름</td>
				<td class="inputText"><input type="text" id="user_m" name="user_m" value="<s:property value="videoVO.user_m"/>" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td class="inputText"><textarea id="vcontent" class="inputText" name="vcontent" readonly="readonly"><s:property value="videoVO.vcontent"/></textarea></td>
			</tr>
			
			
			<tr>
				<td colspan="2">
					<!-- 읽기용 버튼 -->
					<a href="/video/vlist.action"><input type="button" class="readBtn" value="목록"></a>
					<input type="button" class="readBtn" id="modify1" value="수정">
					<input type="button" class="readBtn" id="delete" value="삭제">
					<!-- 수정용 버튼 -->
					<input type="button" class="modifyBtn" id="modify2" value="확인">
					<a href="/video/vread.action?videonum=<s:property value="videonum"/>"><input type="button" class="modifyBtn" id="cancel" value="취소"></a>
				</td>
			</tr>
	</table>
		</form>
		
		<form> 
		<a href="#" onclick="videolike()"><img src="/video/img/like.jpg" width="50" hight="50" ></a><br>
		<label id="vlike"><s:property value="videoVO.vlike"/></label>
		
		</form>
		
		
		
</body>
</html>