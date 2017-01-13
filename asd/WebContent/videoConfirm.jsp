<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	function popClose() {
		window.close();
	};
	function openVO(){
		alert("#session.email");
		alert("<s:property value="#session.email"/>");
		
		videoConfirmForm.action="video1";
		
	};
</script>
<title>암호 입력</title>
</head>
<body>
<s:property value="#session.email"/>
	<s:form action="" namespace="/session" method="post" name="videoConfirmForm">
		email:<input type="text" id="email" name="email" value = "<s:property value="#session.email"/>"readonly="readonly"><br>
		암호 : <input type="password" id="password" name="password" required="required"><br>
		<button onclick="javascript:openVO();">확인</button>
		<button onclick="javascript:popClose();">닫기</button>
	</s:form>
</body>
</html>
