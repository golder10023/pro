<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	function popClose() {
		window.close();
	};
	
	function submitDelete() {
		var num = opener.document.getElementById("boardnum").value;
		pwdConfirmForm.boardnum.value = num;
		pwdConfirmForm.action = "/asd/board/delete";
		pwdConfirmForm.submit();
	};
	
	function submitModify() {
		alert("수정");
		opener.parent.document.readForm.action = "/asd/board/modify.action"; 
		opener.parent.document.readForm.password.value = document.getElementById("password").value;
		opener.parent.document.readForm.submit();
		window.close();
	};
	
	function check() {
		var name = window.name;
		if(name === "delete") submitDelete();
		else submitModify();
	}
</script>
<title>암호 입력</title>
</head>
<body>
	<form action="" method="post" id="pwdConfirmForm" name="pwdConfirmForm">
		<input type="hidden" id="boardnum" name="boardnum">
		암호 : <input type="password" id="password" name="password" required="required"><br>
		<button id="confirmBtn" onclick="javascript:check();">확인</button>
		<button onclick="javascript:popClose();">닫기</button>
	</form>
</body>
</html>
