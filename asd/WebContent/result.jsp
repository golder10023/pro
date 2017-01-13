<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	var name = window.name;
	
	if(name === "delete") {
		if("${result}" === "true") alert("삭제 성공");
		else alert("삭제 실패");
		opener.location.href = "/asd/board/list.action";
		window.close();
	} else if(name === "") {
		if("${result}" === "true") alert("수정 성공");
		else alert("수정 실패");
		location.href = "/asd/board/read.action?boardnum=${boardnum}";
	}
</script>

<title>처리 결과</title>
</head>
<body>
</body>
</html>
